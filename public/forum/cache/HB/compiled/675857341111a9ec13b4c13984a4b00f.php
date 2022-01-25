<?php 
 function lcr5ec604cdcad60raw($cx, $v, $ex = 0) {
  if ($ex) {
   return $v;
  }

  if ($v === true) {
   if ($cx['flags']['jstrue']) {
    return 'true';
   }
  }

  if (($v === false)) {
   if ($cx['flags']['jstrue']) {
    return 'false';
   }
  }

  if (is_array($v)) {
   if ($cx['flags']['jsobj']) {
    if (count(array_diff_key($v, array_keys(array_keys($v)))) > 0) {
     return '[object Object]';
    } else {
     $ret = array();
     foreach ($v as $k => $vv) {
      $ret[] = lcr5ec604cdcad60raw($cx, $vv);
     }
     return join(',', $ret);
    }
   } else {
    return 'Array';
   }
  }

  return "$v";
 }

 function lcr5ec604cdcad60sec($cx, $v, $bp, $in, $each, $cb, $else = null) {
  $push = ($in !== $v) || $each;

  $isAry = is_array($v) || ($v instanceof \ArrayObject);
  $isTrav = $v instanceof \Traversable;
  $loop = $each;
  $keys = null;
  $last = null;
  $isObj = false;

  if ($isAry && $else !== null && count($v) === 0) {
   $ret = $else($cx, $in);
   return $ret;
  }

  // #var, detect input type is object or not
  if (!$loop && $isAry) {
   $keys = array_keys($v);
   $loop = (count(array_diff_key($v, array_keys($keys))) == 0);
   $isObj = !$loop;
  }

  if (($loop && $isAry) || $isTrav) {
   if ($each && !$isTrav) {
    // Detect input type is object or not when never done once
    if ($keys == null) {
     $keys = array_keys($v);
     $isObj = (count(array_diff_key($v, array_keys($keys))) > 0);
    }
   }
   $ret = array();
   if ($push) {
    $cx['scopes'][] = $in;
   }
   $i = 0;
   if ($cx['flags']['spvar']) {
    $old_spvar = $cx['sp_vars'];
    $cx['sp_vars'] = array_merge(array('root' => $old_spvar['root']), $old_spvar, array('_parent' => $old_spvar));
    if (!$isTrav) {
     $last = count($keys) - 1;
    }
   }

   $isSparceArray = $isObj && (count(array_filter(array_keys($v), 'is_string')) == 0);
   foreach ($v as $index => $raw) {
    if ($cx['flags']['spvar']) {
     $cx['sp_vars']['first'] = ($i === 0);
     $cx['sp_vars']['last'] = ($i == $last);
     $cx['sp_vars']['key'] = $index;
     $cx['sp_vars']['index'] = $isSparceArray ? $index : $i;
     $i++;
    }
    if (isset($bp[0])) {
     $raw = lcr5ec604cdcad60m($cx, $raw, array($bp[0] => $raw));
    }
    if (isset($bp[1])) {
     $raw = lcr5ec604cdcad60m($cx, $raw, array($bp[1] => $cx['sp_vars']['index']));
    }
    $ret[] = $cb($cx, $raw);
   }
   if ($cx['flags']['spvar']) {
    if ($isObj) {
     unset($cx['sp_vars']['key']);
    } else {
     unset($cx['sp_vars']['last']);
    }
    unset($cx['sp_vars']['index']);
    unset($cx['sp_vars']['first']);
    $cx['sp_vars'] = $old_spvar;
   }
   if ($push) {
    array_pop($cx['scopes']);
   }
   return join('', $ret);
  }
  if ($each) {
   if ($else !== null) {
    $ret = $else($cx, $v);
    return $ret;
   }
   return '';
  }
  if ($isAry) {
   if ($push) {
    $cx['scopes'][] = $in;
   }
   $ret = $cb($cx, $v);
   if ($push) {
    array_pop($cx['scopes']);
   }
   return $ret;
  }

  if ($cx['flags']['mustsec']) {
   return $v ? $cb($cx, $in) : '';
  }

  if ($v === true) {
   return $cb($cx, $in);
  }

  if (($v !== null) && ($v !== false)) {
   return $cb($cx, $v);
  }

  if ($else !== null) {
   $ret = $else($cx, $in);
   return $ret;
  }

  return '';
 }

 function lcr5ec604cdcad60hbch($cx, $ch, $vars, $op, &$_this) {
  if (isset($cx['blparam'][0][$ch])) {
   return $cx['blparam'][0][$ch];
  }

  $options = array(
   'name' => $ch,
   'hash' => $vars[1],
   'contexts' => count($cx['scopes']) ? $cx['scopes'] : array(null),
   'fn.blockParams' => 0,
   '_this' => &$_this
  );

  if ($cx['flags']['spvar']) {
   $options['data'] = $cx['sp_vars'];
  }

  return lcr5ec604cdcad60exch($cx, $ch, $vars, $options);
 }

 function lcr5ec604cdcad60ifvar($cx, $v, $zero) {
  return ($v !== null) && ($v !== false) && ($zero || ($v !== 0) && ($v !== 0.0)) && ($v !== '') && (is_array($v) ? (count($v) > 0) : true);
 }

 function lcr5ec604cdcad60encq($cx, $var) {
  if ($var instanceof LS) {
   return (string)$var;
  }

  return str_replace(array('=', '`', '&#039;'), array('&#x3D;', '&#x60;', '&#x27;'), htmlspecialchars(lcr5ec604cdcad60raw($cx, $var), ENT_QUOTES, 'UTF-8'));
 }

 function lcr5ec604cdcad60m($cx, $a, $b) {
  if (is_array($b)) {
   if ($a === null) {
    return $b;
   } else if (is_array($a)) {
    return array_merge($a, $b);
   } else if (($cx['flags']['method'] || $cx['flags']['prop']) && is_object($a)) {
    foreach ($b as $i => $v) {
     $a->$i = $v;
    }
   }
  }
  return $a;
 }

 function lcr5ec604cdcad60exch($cx, $ch, $vars, &$options) {
  $args = $vars[0];
  $args[] = $options;
  $e = null;
  $r = true;

  try {
   $r = call_user_func_array($cx['helpers'][$ch], $args);
  } catch (\Exception $E) {
   $e = "Runtime: call custom helper '$ch' error: " . $E->getMessage();
  }

  if($e !== null) {
   lcr5ec604cdcad60err($cx, $e);
  }

  return $r;
 }

 function lcr5ec604cdcad60err($cx, $err) {
  if ($cx['flags']['debug'] & $cx['constants']['DEBUG_ERROR_LOG']) {
   error_log($err);
   return;
  }
  if ($cx['flags']['debug'] & $cx['constants']['DEBUG_ERROR_EXCEPTION']) {
   throw new \Exception($err);
  }
 }

if (!class_exists("LS")) {
class LS {
 public static $jsContext = array (
  'flags' => 
  array (
    'jstrue' => 1,
    'jsobj' => 1,
  ),
);
    public function __construct($str, $escape = false) {
        $this->string = $escape ? (($escape === 'encq') ? static::encq(static::$jsContext, $str) : static::enc(static::$jsContext, $str)) : $str;
    }
    public function __toString() {
        return $this->string;
    }
    public static function stripExtendedComments($template) {
        return preg_replace(static::EXTENDED_COMMENT_SEARCH, '{{! }}', $template);
    }
    public static function escapeTemplate($template) {
        return addcslashes(addcslashes($template, '\\'), "'");
    }
    public static function raw($cx, $v, $ex = 0) {
        if ($ex) {
            return $v;
        }

        if ($v === true) {
            if ($cx['flags']['jstrue']) {
                return 'true';
            }
        }

        if (($v === false)) {
            if ($cx['flags']['jstrue']) {
                return 'false';
            }
        }

        if (is_array($v)) {
            if ($cx['flags']['jsobj']) {
                if (count(array_diff_key($v, array_keys(array_keys($v)))) > 0) {
                    return '[object Object]';
                } else {
                    $ret = array();
                    foreach ($v as $k => $vv) {
                        $ret[] = static::raw($cx, $vv);
                    }
                    return join(',', $ret);
                }
            } else {
                return 'Array';
            }
        }

        return "$v";
    }
    public static function enc($cx, $var) {
        return htmlspecialchars(static::raw($cx, $var), ENT_QUOTES, 'UTF-8');
    }
    public static function encq($cx, $var) {
        return str_replace(array('=', '`', '&#039;'), array('&#x3D;', '&#x60;', '&#x27;'), htmlspecialchars(static::raw($cx, $var), ENT_QUOTES, 'UTF-8'));
    }
}
}
return function ($in = null, $options = null) {
    $helpers = array(            'const' => function($args) {
                                //single argument call
                                return constant($args);
                            },
            'i18n' => function($args) {

                                return _t($args);
                            },
            'hide' => function($args) {
                                return "";
                            },
);
    $partials = array();
    $cx = array(
        'flags' => array(
            'jstrue' => false,
            'jsobj' => false,
            'jslen' => false,
            'spvar' => true,
            'prop' => false,
            'method' => false,
            'lambda' => false,
            'mustlok' => false,
            'mustlam' => false,
            'mustsec' => false,
            'echo' => false,
            'partnc' => false,
            'knohlp' => false,
            'debug' => isset($options['debug']) ? $options['debug'] : 1,
        ),
        'constants' =>  array(
            'DEBUG_ERROR_LOG' => 1,
            'DEBUG_ERROR_EXCEPTION' => 2,
            'DEBUG_TAGS' => 4,
            'DEBUG_TAGS_ANSI' => 12,
            'DEBUG_TAGS_HTML' => 20,
        ),
        'helpers' => isset($options['helpers']) ? array_merge($helpers, $options['helpers']) : $helpers,
        'partials' => isset($options['partials']) ? array_merge($partials, $options['partials']) : $partials,
        'scopes' => array(),
        'sp_vars' => isset($options['data']) ? array_merge(array('root' => $in), $options['data']) : array('root' => $in),
        'blparam' => array(),
        'partialid' => 0,
        'runtime' => '\LightnCandy\Runtime',
    );
    
    $inary=is_array($in);
    return '<div class="codo_page_'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['page_no'])) ? $in['page_no'] : null)).'">
'.lcr5ec604cdcad60sec($cx, (($inary && isset($in['topics'])) ? $in['topics'] : null), null, $in, true, function($cx, $in) {$inary=is_array($in);return '    <article class="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'hide', array(array('hmm'),array()), 'raw', $in)).'">

        <div class="codo_post_statistics" style="position:absolute;top: 20px;">

'.((lcr5ec604cdcad60ifvar($cx, (($inary && isset($in['new_topic'])) ? $in['new_topic'] : null), false)) ? '            <a title="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('new topic'),array()), 'raw', $in)).'" href="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'const', array(array('RURI'),array()), 'raw', $in)).'topic/'.lcr5ec604cdcad60encq($cx, (($inary && isset($in['topic_id'])) ? $in['topic_id'] : null)).'/'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['safe_title'])) ? $in['safe_title'] : null)).'">
                <div class=\'codo_new_topic_badge\'>'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('New'),array()), 'raw', $in)).'</div>
            </a>    
' : '').'
            <div title="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('No. of views'),array()), 'raw', $in)).'" id="codo_topics_no_views">
                <div style="float:left;padding-top:2px;" style="float:left;">
                    <i class="icon icon-eye2" style="font-size:16px;"></i>
                </div>
                <div style="float:left;font-weight:bold;padding-left:3px;">
                    '.lcr5ec604cdcad60encq($cx, (($inary && isset($in['no_views'])) ? $in['no_views'] : null)).'
                </div>
            </div>            
            <div title="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('No. of replies'),array()), 'raw', $in)).'">
                <div style="float:left;padding-top:2px;" style="float:left;">
                    <i class="icon icon-message" style="font-size:16px;"></i>
                </div>
                <div style="float:left;font-weight:bold;padding-left:3px;">
                    <span>'.lcr5ec604cdcad60encq($cx, (($inary && isset($in['no_replies'])) ? $in['no_replies'] : null)).'</span>
                </div>
            </div>



        </div>

        <div class="codo_topics_topic_content">

            <div class="codo_posts_post_moderation">

'.((lcr5ec604cdcad60ifvar($cx, (($inary && isset($in['can_manage_topic'])) ? $in['can_manage_topic'] : null), false)) ? '                <div class="dropdown codo_manage_topic">
                    <div class="codo_manage_button" data-toggle="dropdown"  id="codo_manage_options_menu">
                        <i class="icon-more-horiz"></i>
                    </div>
                    <ul class="dropdown-menu dropdown-menu-right" role="menu" aria-labelledby="codo_manage_options_menu">
'.((lcr5ec604cdcad60ifvar($cx, (($inary && isset($in['can_edit_topic'])) ? $in['can_edit_topic'] : null), false)) ? '                        <li id="codo_posts_edit_'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['topic_id'])) ? $in['topic_id'] : null)).'" class="dropdown-item codo_posts_edit_post codo_post_this_is_topic"
                            role="presentation">
                                <i class="icon-edit"></i> '.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('Edit'),array()), 'raw', $in)).'
                            </li>
' : '').''.((lcr5ec604cdcad60ifvar($cx, (($inary && isset($in['can_delete_topic'])) ? $in['can_delete_topic'] : null), false)) ? '                        <li id="codo_posts_trash_'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['topic_id'])) ? $in['topic_id'] : null)).'" class="dropdown-item codo_posts_trash_post codo_post_this_is_topic"
                            role="presentation">
                                <i class="icon-trash"></i> '.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('Delete'),array()), 'raw', $in)).'
                            </li>
' : '').'                    </ul>
                </div>
' : '').'
            </div>

            <div class=\'codo_badges\'>    

'.((lcr5ec604cdcad60ifvar($cx, (($inary && isset($in['sticky'])) ? $in['sticky'] : null), false)) ? '                <span class="codo_badge_sticky" title="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('topic is sticky'),array()), 'raw', $in)).'">'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('sticky'),array()), 'raw', $in)).'</span>
' : '').''.((lcr5ec604cdcad60ifvar($cx, (($inary && isset($in['closed'])) ? $in['closed'] : null), false)) ? '                <span class="codo_badge_closed" title="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('topic is closed'),array()), 'raw', $in)).'">'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('closed'),array()), 'raw', $in)).'</span>
' : '').'            </div>


            <div class="codo_topics_topic_avatar" data-userid="'.lcr5ec604cdcad60encq($cx, (($inary && isset($in['id'])) ? $in['id'] : null)).'">
                <a href="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'const', array(array('RURI'),array()), 'raw', $in)).'user/profile/'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['id'])) ? $in['id'] : null)).'">
                    <img draggable="false" src="'.lcr5ec604cdcad60encq($cx, (($inary && isset($in['avatar'])) ? $in['avatar'] : null)).'" />
                </a>
            </div>

'.((lcr5ec604cdcad60ifvar($cx, (($inary && isset($in['in_search'])) ? $in['in_search'] : null), false)) ? '
            <div class="codo_topics_topic_title"><a href="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'const', array(array('RURI'),array()), 'raw', $in)).'topic/'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['topic_id'])) ? $in['topic_id'] : null)).'/'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['safe_title'])) ? $in['safe_title'] : null)).'/post-'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'#post-'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'">'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['title'])) ? $in['title'] : null)).'</a></div>
' : '
'.((lcr5ec604cdcad60ifvar($cx, (($inary && isset($in['new_replies'])) ? $in['new_replies'] : null), false)) ? '            <div class="codo_topics_topic_title"><a href="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'const', array(array('RURI'),array()), 'raw', $in)).'topic/'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['topic_id'])) ? $in['topic_id'] : null)).'/'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['safe_title'])) ? $in['safe_title'] : null)).'/post-'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['first_new_reply'])) ? $in['first_new_reply'] : null)).'#post-'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['first_new_reply'])) ? $in['first_new_reply'] : null)).'" style="font-size:16px;">'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['title'])) ? $in['title'] : null)).'</a></div>
' : '            <div class="codo_topics_topic_title"><a href="'.lcr5ec604cdcad60encq($cx, lcr5ec604cdcad60hbch($cx, 'const', array(array('RURI'),array()), 'encq', $in)).'topic/'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['topic_id'])) ? $in['topic_id'] : null)).'/'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['safe_title'])) ? $in['safe_title'] : null)).'" style="font-size:16px;">'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['title'])) ? $in['title'] : null)).'</a></div>
').'').'
            <div class="codo_topics_topic_name">
                <a href="'.lcr5ec604cdcad60encq($cx, lcr5ec604cdcad60hbch($cx, 'const', array(array('RURI'),array()), 'encq', $in)).'user/profile/'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['id'])) ? $in['id'] : null)).'"><span class="role_styled role_'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['role'])) ? $in['role'] : null)).'">'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['name'])) ? $in['name'] : null)).'</span></a>
                <span>'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('posted'),array()), 'raw', $in)).' '.lcr5ec604cdcad60encq($cx, (($inary && isset($in['post_created'])) ? $in['post_created'] : null)).'</span>
            </div>
        </div>
        <div class="codo_topics_topic_message '.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'hide', array(array('hide_msg'),array()), 'raw', $in)).'">
            '.lcr5ec604cdcad60raw($cx, (($inary && isset($in['message'])) ? $in['message'] : null)).'
        </div>
        <div class="row">
            <div class=" col-md-10 col-xs-12 codo_readmore_container">
'.((lcr5ec604cdcad60ifvar($cx, (($inary && isset($in['overflow'])) ? $in['overflow'] : null), false)) ? '                <a href="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'const', array(array('RURI'),array()), 'raw', $in)).'topic/'.lcr5ec604cdcad60encq($cx, (($inary && isset($in['topic_id'])) ? $in['topic_id'] : null)).'/'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['safe_title'])) ? $in['safe_title'] : null)).'" class="codo_readmore">'.lcr5ec604cdcad60encq($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('read more'),array()), 'encq', $in)).'</a>
' : '').'                <div class="codo_topics_topic_oembed_video">
                    '.lcr5ec604cdcad60raw($cx, (($inary && isset($in['oembed_video'])) ? $in['oembed_video'] : null)).'
                </div>
            </div>
            <div class="col-md-10 col-xs-12 codo_readmore_container">
                <!--'.((lcr5ec604cdcad60ifvar($cx, (($inary && isset($in['tags'])) ? $in['tags'] : null), false)) ? '
                <div class="codo_tag_list">
                    <div class="codo_tags_all">
                        <i class="icon-tags icon-light"></i>
'.lcr5ec604cdcad60sec($cx, (($inary && isset($in['tags'])) ? $in['tags'] : null), null, $in, true, function($cx, $in) {$inary=is_array($in);return '                        <a title="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('find topics tagged'),array()), 'raw', $in)).' \''.lcr5ec604cdcad60encq($cx, (($inary && isset($in['tag'])) ? $in['tag'] : null)).'\'" href="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'const', array(array('RURI'),array()), 'raw', $in)).'tags/'.lcr5ec604cdcad60encq($cx, (($inary && isset($in['tag'])) ? $in['tag'] : null)).'" title="">'.lcr5ec604cdcad60encq($cx, (($inary && isset($in['tag'])) ? $in['tag'] : null)).'</a>
';}).'                    </div>
                </div>
                ' : '').'-->
'.((lcr5ec604cdcad60ifvar($cx, (($inary && isset($in['tags'])) ? $in['tags'] : null), false)) ? '                <div class="codo_tag_list">
                    <div class="codo_tags_all col-xs-12" style="padding-left:0px;">
                        <!--<i class="icon-tags icon-light"></i>-->
'.lcr5ec604cdcad60sec($cx, (($inary && isset($in['tags'])) ? $in['tags'] : null), null, $in, true, function($cx, $in) {$inary=is_array($in);return '                        <a class="codo_tag_a_style" title="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('find topics tagged'),array()), 'raw', $in)).' \''.lcr5ec604cdcad60encq($cx, (($inary && isset($in['tag'])) ? $in['tag'] : null)).'\'" href="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'const', array(array('RURI'),array()), 'raw', $in)).'tags/'.lcr5ec604cdcad60encq($cx, (($inary && isset($in['tag'])) ? $in['tag'] : null)).'" title="">'.lcr5ec604cdcad60encq($cx, (($inary && isset($in['tag'])) ? $in['tag'] : null)).'</a>
';}).'                    </div>
                </div>
' : '').'            </div>
        </div>

        <div class="codo_topics_topic_foot clearfix">


'.((lcr5ec604cdcad60ifvar($cx, (($inary && isset($in['last_post_time'])) ? $in['last_post_time'] : null), false)) ? '            <div class="codo_topics_last_post">
                '.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('recent by'),array()), 'raw', $in)).' <a class="codo_topics_last_post_name" href="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'const', array(array('RURI'),array()), 'raw', $in)).'user/profile/'.lcr5ec604cdcad60encq($cx, (($inary && isset($in['last_post_uid'])) ? $in['last_post_uid'] : null)).'">'.lcr5ec604cdcad60encq($cx, (($inary && isset($in['last_post_name'])) ? $in['last_post_name'] : null)).'</a>
                &nbsp;&middot;&nbsp; <span class=\'codo_topics_last_post_time\'><a href="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'const', array(array('RURI'),array()), 'raw', $in)).'topic/'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['topic_id'])) ? $in['topic_id'] : null)).'/'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['safe_title'])) ? $in['safe_title'] : null)).'/post-'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['last_post_id'])) ? $in['last_post_id'] : null)).'#post-'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['last_post_id'])) ? $in['last_post_id'] : null)).'">'.lcr5ec604cdcad60encq($cx, (($inary && isset($in['last_post_time'])) ? $in['last_post_time'] : null)).'</a></span>
            </div>
' : '').''.((lcr5ec604cdcad60ifvar($cx, (($inary && isset($in['new_replies'])) ? $in['new_replies'] : null), false)) ? '            <a title="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'i18n', array(array('new replies'),array()), 'raw', $in)).'"  href="'.lcr5ec604cdcad60raw($cx, lcr5ec604cdcad60hbch($cx, 'const', array(array('RURI'),array()), 'raw', $in)).'topic/'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['topic_id'])) ? $in['topic_id'] : null)).'/'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['safe_title'])) ? $in['safe_title'] : null)).'/post-'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['last_reply_id'])) ? $in['last_reply_id'] : null)).'#post-'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['last_reply_id'])) ? $in['last_reply_id'] : null)).'"><div class=\'codo_unread_replies\'>'.lcr5ec604cdcad60raw($cx, (($inary && isset($in['new_replies'])) ? $in['new_replies'] : null)).'</div></a>
' : '').'
        </div>

    </article>
';}).'</div>';
};