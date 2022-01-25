<?php

/*
 * @CODOLICENSE
 */

namespace CODOF\Forum;

class Category extends Forum
{

    protected $db;
    public static $child_ids = array();

    public function __construct($storage = false)
    {

        $this->db = $storage;
    }

    public static function get_alias($name)
    {

        return \CODOF\Filter::URL_safe($name);
    }

    /**
     * Fetches all categories information from codo_categories table     *
     * @return array
     */
    public function get_categories()
    {

        $cats = array();
        $user = \CODOF\User\User::get();
        $qry = 'SELECT cat_id, cat_pid, cat_name, cat_alias, cat_img, no_topics, is_label,granted, show_children'
            . ' FROM ' . PREFIX . 'codo_categories, codo_permissions '
            . ' WHERE permission=\'view all topics\' AND cid=cat_id AND rid=' . $user->rid . ''
            . ' AND EXISTS (SELECT 1 FROM codo_permissions AS p WHERE '
            . '  p.cid=cat_id AND p.rid=' . $user->rid . ' AND permission=\'view category\' AND granted=1) '
            . ' ORDER BY cat_order';

        $ans = $this->db->query($qry);

        if ($ans) {

            $cats = $ans->fetchAll(\PDO::FETCH_CLASS);
        }

        $cats = \CODOF\Hook::call('on_get_categories', $cats);

        return $cats;
    }

    public function getCategoriesForClassicView($new_topics)
    {
        $cats = array();
        $user = \CODOF\User\User::get();
        $qry = 'SELECT cat_id, cat_pid, cat_name, cat_alias, cat_img, is_label,granted, show_children,'
            . ' cat_description, no_topics, no_posts'
            . ' FROM ' . PREFIX . 'codo_categories, codo_permissions '
            . ' WHERE permission=\'view all topics\' AND cid=cat_id AND rid=' . $user->rid . ''
            . ' AND EXISTS (SELECT 1 FROM codo_permissions AS p WHERE '
            . '  p.cid=cat_id AND p.rid=' . $user->rid . ' AND permission=\'view category\' AND granted=1) '
            . ' ORDER BY cat_order';

        $ans = $this->db->query($qry);
        if ($ans) {
            $cats = $ans->fetchAll(\PDO::FETCH_CLASS);
        }

        $catIds = [];
        foreach ($cats as $cat) {
            $catIds[] = $cat->cat_id;
        }

        $qry = 'SELECT t.cat_id, t.last_post_name AS last_poster_name, t.last_post_uid AS luid, t.uid as tuid, '
            . ' u.name AS topic_creator_name, MAX(t.last_post_time) AS lpost_time, t.topic_id, t.title, r.rname '
            . ' FROM ' . PREFIX . 'codo_topics t, ' . PREFIX . 'codo_users u, ' . PREFIX . 'codo_roles r, ' . PREFIX . 'codo_user_roles ur'
            . ' WHERE t.uid=u.id AND ur.uid=u.id AND ur.is_primary=1 AND r.rid=ur.rid '
            . ' AND t.cat_id IN (' . implode(",", $catIds) . ') '
            . ' GROUP BY t.cat_id';

        $res = $this->db->query($qry);

        // TODO: Why is name saved in codo_topics, fetch it from codo_users using a join instead
        if ($res) {
            $latestTopics = $res->fetchAll(\PDO::FETCH_CLASS);
            $latestTopicData = [];
            foreach ($latestTopics as $latestTopic) {
                $latestTopicData[$latestTopic->cat_id] = array(
                    "uid" => $latestTopic->luid == null ? $latestTopic->tuid : $latestTopic->luid,
                    "name" => $latestTopic->last_poster_name == null ?
                        $latestTopic->topic_creator_name : $latestTopic->last_poster_name,
                    "time" => $latestTopic->lpost_time,
                    "topic_id" => $latestTopic->topic_id,
                    "title" => $latestTopic->title,
                    "rname" => $latestTopic->rname
                );
            }
        }

        foreach ($cats as $cat) {
            if (isset($latestTopicData[$cat->cat_id])) {
                $cat->latestTopicData = $latestTopicData[$cat->cat_id];
            }

            if (isset($new_topics[$cat->cat_id]) && $new_topics[$cat->cat_id] > 0) {
                $cat->numNewTopics = $new_topics[$cat->cat_id];
            }
        }

        return \CODOF\Hook::call('on_get_categories', $cats);
    }

    public function getCategoriesWhereUserCanCreateTopic()
    {

        $user = \CODOF\User\User::get();
        $rids = implode(",", $user->rids);

        $qry = 'SELECT cat_id, cat_pid, cat_name, cat_alias, no_topics, cat_img'
            . ' FROM ' . PREFIX . 'codo_categories'
            . ' INNER JOIN ' . PREFIX . 'codo_permissions ON cid=cat_id '
            . ' WHERE permission=\'create new topic\''
            . ' AND granted=1 '
            . ' AND rid IN (' . $rids . ')'
            . ' ORDER BY cat_order';

        $ans = $this->db->query($qry);

        if ($ans) {

            $cats = $ans->fetchAll(\PDO::FETCH_CLASS);
        }

        $cats = \CODOF\Hook::call('on_get_categories_for_create_topic', $cats);

        return $cats;
    }

    public function exists($cid)
    {

        $qry = 'SELECT COUNT(cat_id) FROM ' . PREFIX . 'codo_categories WHERE cat_id = ' . $cid;
        $res = $this->db->query($qry);

        if ($res->fetchColumn() == 0) {

            return FALSE;
        }

        return TRUE;
    }

    /**
     *
     * Fetches ctaegory from given cat_alias
     * @param type $cat_alias
     * @return type
     */
    public function get_cat_info($cat_alias)
    {

        //$t = microtime(true);
        $qry = 'SELECT cat_id, cat_name, cat_description, cat_img, no_topics, no_posts FROM ' . PREFIX . 'codo_categories '
            . ' WHERE cat_alias=:cat_alias LIMIT 1';

        $stmt = $this->db->prepare($qry);
        $ans = $stmt->execute(array(":cat_alias" => $cat_alias));

        if ($ans) {

            $cat_info = $stmt->fetch();
        }
        //echo " <br/>get_cat_info() ";
        //echo microtime(true) - $t;

        return $cat_info;
    }

    public function get_sub_categories($cats_tree, $pid)
    {
        $res = null;
        $this->get_this_cat($cats_tree, $pid, $res);
        return $res;
    }

    public function find_parents($cats, $cid)
    {
        $eff_arr = array();

        foreach ($cats as $cat) {

            $eff_arr[$cat->cat_id] = $cat;
        }

        $parents = array();
        while (($cid = $eff_arr[$cid]->cat_pid) != 0) {

            $parents[] = array(
                "name" => $eff_arr[$cid]->cat_name,
                "alias" => $eff_arr[$cid]->cat_alias
            );
        }

        return array_reverse($parents);
    }

    /**
     * Gets the name of the category of passed id
     * @param <array> $id
     */
    public function get_cat_names_by_id($ids)
    {

        $q_ids = implode(',', $ids);
        $qry = 'SELECT cat_name,cat_id FROM ' . PREFIX . 'codo_categories WHERE cat_id IN (' . $q_ids . ')';
        $res = $this->db->query($qry);

        $cat_names = $res->fetchAll();

        return $cat_names;
    }

    /** private functions --------------------------------------------------------* */
    private function get_this_cat($cats, $pid, &$res)
    {
        foreach ($cats as $cat) {
            if ($cat->cat_id == $pid) {
                $res = $cat->children;
                break;
            }
            else if(property_exists($cat, 'children')) {
                $this->get_this_cat($cat->children, $pid, $res);
            }
        }
    }

}