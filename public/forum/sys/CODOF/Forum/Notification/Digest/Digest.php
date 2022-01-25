<?php

/*
 * @CODOLICENSE
 */

namespace CODOF\Forum\Notification\Digest;

/**
 *
 * Digest class generates email digests .
 * Email digests may be of two types :
 *
 * 1. Daily
 * 2. Weekly
 *
 * Digest will only send you unread notifications every X interval
 *
 * TODO: Send digest when topic /category gets popular .
 */
class Digest
{

    /**
     *
     * @var \PDO
     */
    protected $db;

    /**
     * No. of new posts
     * @var int
     */
    private $newPosts = 0;

    /**
     * No. of new topics
     * @var int
     */
    private $newTopics = 0;

    /**
     *
     * I create a topic because
     *   --> i am interested in its replies
     *
     * I follow a topic because
     *   --> i am interested in its replies
     *
     * I follow a category because
     *   --> i am interested in its topics
     *
     *
     */


    public function sendDailyDigest()
    {
        $this->sendDigestForType('daily');
    }

    public function sendWeeklyDigest()
    {
        $this->sendDigestForType('weekly');
    }


    /**
     * Based on digest type, get users subscribed and create and email them the digest
     * @param $digestType
     */
    private function sendDigestForType($digestType)
    {
        $users = $this->getUsersSubscribedToDigest($digestType);
        foreach ($users as $user) {
            $this->sendDigest($user, $digestType);
        }
    }


    /**
     * Gets all users which have set their preferences as daily/weekly digest
     * TODO: does not work if default preference itself is daily/weekly
     * @param $digestType
     * @return array
     */
    private function getUsersSubscribedToDigest($digestType)
    {
        return \DB::table(PREFIX . 'codo_users AS u')
            ->join(PREFIX . 'codo_user_preferences AS p', 'p.uid', '=', 'u.id')
            ->select('u.id', 'u.username', 'u.mail')
            ->where('p.preference', '=', 'notification_frequency')
            ->where('p.value', '=', $digestType)
            ->get();
    }

    /**
     * Gets notifications unread for given user and creates digest based on the template from digest type and emails it
     * @param $user
     * @param $digestType
     */
    private function sendDigest($user, $digestType)
    {
        $smarty = \CODOF\Smarty\Single::get_instance(SYSPATH . 'CODOF/Forum/Notification/Digest/', true);
        $smarty->assign('site_title', \CODOF\Util::get_opt('site_title'));
        $smarty->assign('brand_img', \CODOF\Util::get_opt('brand_img'));
        $smarty->assign('username', $user['username']);

        $date = date('Y-F-j-S', time());
        list($year, $month, $day, $ordinal) = explode("-", $date);
        $dayInfo = array(
            "year" => $year,
            "month" => $month,
            "day" => $day,
            "ordinal" => $ordinal
        );
        $smarty->assign('dayInfo', $dayInfo);
        $smarty->assign('statistics_img', 'http://i.imgur.com/7sBa4Ow.png'); //RAW
        $smarty->assign('create_new_img', 'http://i.imgur.com/E0MhBwI.png'); //RAW

        $events = $this->getUnreadNotificationsSince($this->getTimeByDigestType($digestType), $user['id']);
        $sortedEvents = $this->sort($user['id'], $events);

        $smarty->assign('events', $sortedEvents);
        $smarty->assign('new_posts', $sortedEvents['newPosts'] . " ");
        $smarty->assign('new_topics', $sortedEvents['newTopics'] . " ");
        $smarty->assign('nothing_new', empty($events));

        $html = $smarty->fetch("$digestType.tpl");
        $text = $smarty->fetch("{$digestType}Text.tpl");

        $mailer = new \CODOF\Forum\Notification\Mail();
        $mailer->setHTML($mailer->replace_tokens($text));
        $mailer->to = $user['mail'];
        $mailer->subject = _t(ucfirst($digestType) . ' digest - ') . \CODOF\Util::get_opt('site_title');
        $mailer->message = $html;
        $mailer->send_mail();
    }

    private function getUnreadNotificationsSince($created, $uid)
    {
        return \DB::table(PREFIX . 'codo_notify AS n')
            ->join(PREFIX . 'codo_notify_text AS t', 't.id', '=', 'n.nid')
            ->select('n.id', 'n.type', 't.data', 'n.created', 'n.is_read', 't.status_link')
            ->where('n.uid', '=', $uid)
            ->where('n.is_read', '=', '0')
            ->where('n.created', '>', $created)
            ->orderBy('n.created', 'asc')
            ->get();
    }


    /**
     * @param $digestType
     * @return float|int
     */
    private function getTimeByDigestType($digestType)
    {
        $days = 7;
        if ($digestType == 'daily') {
            $days = 1;
        }
        return time() - ($days * 24 * 60 * 60);
    }

    /**
     * @param int $uid
     * @param array $events
     * @return array
     *
     * array(
     *
     *      //mentions of topics/categories, i am not following
     *      //[User] mentioned you in [title]
     *      "rawMentions" => array (
     *
     *           array (
     *
     *              "title" //topic title
     *              "tid" //topic id
     *              "pid" //post id
     *              "uid" //user id
     *              "avatar" //absolute url
     *              "username"
     *          )
     *      )
     *
     *      //replies, mentions of my topics
     *      "myTopics" = array (
     *
     *
     *          "$tid" => array (
     *
     *             "meta" => array (
     *
     *                  "new_topic_pid" => $pid //point to post id of new topic
     *                  //other info
     *             ),
     *
     *             "$pid" => array(
     *
     *                 "mention" => true
     *                  ...other info
     *          )
     *      )
     *
     *      //replies, mentions of topics of topics/categories i follow
     *      "following" = array (
     *
     *          //similar to [myTopics]
     *      )
     *
     *
     *
     * )
     *
     *   //if event is of type "new_reply", it means either i have created that
     *   //topic or i am following that topic
     *   //if event is of type "new_topic", it means either i have created that
     *   //topic or i am following that category
     *   //if event is of type "mention" AND there is no corresponding "new_reply"
     *   //or "new_topic", it means it is a rawMention
     *   //so to segregate rawMentions i have to store topic ids of "new_reply"
     *   //& "new_topic" and then isset() to check is all that will be left
     */
    protected function sort($uid, $events)
    {
        $_events = array(
            "rawMentions" => array(),
            "myTopics" => array(),
            "following" => array(),
            "newPosts" => 0,
            "newTopics" => 0
        );

        $tids = array(); //topic ids array
        $mentions = array(); //

        foreach ($events as $event) {
            $data = json_decode($event['data'], true);

            if ($event['type'] == 'new_reply' || $event['type'] == 'new_topic') {

                $tids[$data['tid']] = 1; //to use isset instead of in_array

                $type = (isset($data['topicCreatorUid']) && $data['topicCreatorUid'] == $uid) ? 'myTopics' : 'following';

                //store topic meta once to avoid redundant data
                if (!isset($_events[$type][$data['tid']])) {
                    $_events[$type][$data['tid']] = array(
                        "meta" => $this->getMetaInfo($data)
                    );

                    $_events[$type][$data['tid']]["replies"] = array();
                }

                //tell this topic is new
                if ($event['type'] == 'new_topic') {
                    $_events[$type][$data['tid']]['meta']['new_topic_pid'] = $data['pid'];
                    $_events["newTopics"]++;
                } else {
                    $_events["newPosts"]++;
                }

                $date = date('M-d-h-i-A', $event['created']);
                list($month, $day, $hour, $minute, $meridiem) = explode("-", $date);
                $time = array(
                    "month" => $month,
                    "day" => $day,
                    "hour" => $hour,
                    "minute" => $minute,
                    "meridiem" => $meridiem
                );

                $data['actor']['avatar'] = \CODOF\Util::get_avatar_path($data['actor']['avatar']);
                $_events[$type][$data['tid']]["replies"][$data['pid']] = array(
                    "actor" => $data['actor'],
                    "pid" => $data['pid'],
                    "time" => $time,
                    "message" => $data['message']
                );
            }

            if ($event['type'] == 'mention') {

                $mentions[] = $event;
            }
        }

        //now merge $mentions with $_events
        foreach ($mentions as $mention) {

            $data = json_decode($mention['data'], true);

            //if this mention exists in "new_reply" or "new_topic"
            if (isset($tids[$data['tid']])) {
                if (isset($data['topicCreatorUid']) && $data['tuid'] == $uid) {
                    $_events['myTopics'][$data['tid']]['replies'][$data['pid']]['mention'] = true;
                } else {
                    $_events['following'][$data['tid']]['replies'][$data['pid']]['mention'] = true;
                }
            } else {

                $date = date('M-d-h-i-A', $mention['created']);
                list($month, $day, $hour, $minute, $meridiem) = explode("-", $date);
                $data['time'] = array(
                    "month" => $month,
                    "day" => $day,
                    "hour" => $hour,
                    "minute" => $minute,
                    "meridiem" => $meridiem
                );

                $_events['rawMentions'][] = $data;
            }
        }


        return $_events;
    }

    /**
     *
     * @param array $data
     * @return array
     */
    protected function getMetaInfo($data)
    {
        return array(
            "title" => $data['bindings']['title'],
            "cid" => $data['cid'],
            "tid" => $data['tid']
            //"actor" => $data['actor']
        );
    }

}
