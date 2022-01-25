<?php 
 function lcr5ec7643f5eb12sec($cx, $v, $bp, $in, $each, $cb, $else = null) {
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
     $raw = lcr5ec7643f5eb12m($cx, $raw, array($bp[0] => $raw));
    }
    if (isset($bp[1])) {
     $raw = lcr5ec7643f5eb12m($cx, $raw, array($bp[1] => $cx['sp_vars']['index']));
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

 function lcr5ec7643f5eb12encq($cx, $var) {
  if ($var instanceof LS) {
   return (string)$var;
  }

  return str_replace(array('=', '`', '&#039;'), array('&#x3D;', '&#x60;', '&#x27;'), htmlspecialchars(lcr5ec7643f5eb12raw($cx, $var), ENT_QUOTES, 'UTF-8'));
 }

 function lcr5ec7643f5eb12ifvar($cx, $v, $zero) {
  return ($v !== null) && ($v !== false) && ($zero || ($v !== 0) && ($v !== 0.0)) && ($v !== '') && (is_array($v) ? (count($v) > 0) : true);
 }

 function lcr5ec7643f5eb12raw($cx, $v, $ex = 0) {
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
      $ret[] = lcr5ec7643f5eb12raw($cx, $vv);
     }
     return join(',', $ret);
    }
   } else {
    return 'Array';
   }
  }

  return "$v";
 }

 function lcr5ec7643f5eb12hbch($cx, $ch, $vars, $op, &$_this) {
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

  return lcr5ec7643f5eb12exch($cx, $ch, $vars, $options);
 }

 function lcr5ec7643f5eb12m($cx, $a, $b) {
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

 function lcr5ec7643f5eb12exch($cx, $ch, $vars, &$options) {
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
   lcr5ec7643f5eb12err($cx, $e);
  }

  return $r;
 }

 function lcr5ec7643f5eb12err($cx, $err) {
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
    return ''.lcr5ec7643f5eb12sec($cx, (($inary && isset($in['posts'])) ? $in['posts'] : null), null, $in, true, function($cx, $in) {$inary=is_array($in);return '<a name="post-'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'"></a>
<article id="post-'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'" class="clearfix">

    <div class="codo_posts_post_moderation">


'.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['is_topic'])) ? $in['is_topic'] : null), false)) ? ''.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['can_manage_topic'])) ? $in['can_manage_topic'] : null), false)) ? '            <div class="dropdown codo_manage_topic">
                <div class="codo_manage_button" data-toggle="dropdown"  id="codo_manage_options_menu">
                    <i class="icon-more-vert"></i>
                </div>
                <ul class="dropdown-menu dropdown-menu-right" role="menu" aria-labelledby="codo_manage_options_menu">
'.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['can_edit_topic'])) ? $in['can_edit_topic'] : null), false)) ? '                    <li id="codo_posts_edit_'.lcr5ec7643f5eb12raw($cx, (($inary && isset($in['topic_id'])) ? $in['topic_id'] : null)).'" class="dropdown-item codo_posts_edit_post codo_post_this_is_topic"
                        role="presentation">
                            <i class="icon-edit"></i> '.lcr5ec7643f5eb12raw($cx, lcr5ec7643f5eb12hbch($cx, 'i18n', array(array('Edit'),array()), 'raw', $in)).'
                    </li>
' : '').''.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['can_delete_topic'])) ? $in['can_delete_topic'] : null), false)) ? '                    <li id="codo_posts_trash_'.lcr5ec7643f5eb12raw($cx, (($inary && isset($in['topic_id'])) ? $in['topic_id'] : null)).'" class="dropdown-item codo_posts_trash_post codo_post_this_is_topic"
                        role="presentation">
                            <i class="icon-trash"></i> '.lcr5ec7643f5eb12raw($cx, lcr5ec7643f5eb12hbch($cx, 'i18n', array(array('Delete'),array()), 'raw', $in)).'
                    </li>
' : '').''.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['can_see_history'])) ? $in['can_see_history'] : null), false)) ? '                    <li id="codo_posts_history_'.lcr5ec7643f5eb12raw($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'" class="dropdown-item codo_posts_history"
                        role="presentation">
                            <i class="fa fa-history"></i> '.lcr5ec7643f5eb12raw($cx, lcr5ec7643f5eb12hbch($cx, 'i18n', array(array('History'),array()), 'raw', $in)).'
                    </li>
' : '').'
                </ul>
            </div>
' : '').'
' : '
'.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['can_manage_post'])) ? $in['can_manage_post'] : null), false)) ? '            <div class="dropdown codo_manage_topic">
                <div class="codo_manage_button" data-toggle="dropdown"  id="codo_manage_options_menu">
                    <i class="icon-more-vert"></i>
                </div>
                <ul class="dropdown-menu dropdown-menu-right" role="menu" aria-labelledby="codo_manage_options_menu">
'.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['can_edit_post'])) ? $in['can_edit_post'] : null), false)) ? '                    <li id="codo_posts_edit_'.lcr5ec7643f5eb12raw($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'" class="dropdown-item codo_posts_edit_post codo_post_this_is_post"
                        role="presentation">
                            <i class="icon-edit"></i> '.lcr5ec7643f5eb12raw($cx, lcr5ec7643f5eb12hbch($cx, 'i18n', array(array('Edit'),array()), 'raw', $in)).'
                    </li>
' : '').''.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['can_delete_post'])) ? $in['can_delete_post'] : null), false)) ? '                    <li id="codo_posts_trash_'.lcr5ec7643f5eb12raw($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'" class="dropdown-item codo_posts_trash_post codo_post_this_is_post"
                        role="presentation">
                            <i class="icon-trash"></i> '.lcr5ec7643f5eb12raw($cx, lcr5ec7643f5eb12hbch($cx, 'i18n', array(array('Delete'),array()), 'raw', $in)).'
                    </li>
' : '').''.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['can_see_history'])) ? $in['can_see_history'] : null), false)) ? '                    <li id="codo_posts_history_'.lcr5ec7643f5eb12raw($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'" class="dropdown-item codo_posts_history"
                        role="presentation">
                            <i class="fa fa-clock-o"></i> '.lcr5ec7643f5eb12raw($cx, lcr5ec7643f5eb12hbch($cx, 'i18n', array(array('History'),array()), 'raw', $in)).'
                    </li>
' : '').'
                </ul>
            </div>
' : '').'').'    </div>

    <div class="codo_posts_user_info">
        <div class="codo_posts_post_avatar" data-userid="'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['id'])) ? $in['id'] : null)).'">
            <a href="'.lcr5ec7643f5eb12raw($cx, lcr5ec7643f5eb12hbch($cx, 'const', array(array('RURI'),array()), 'raw', $in)).'user/profile/'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['id'])) ? $in['id'] : null)).'">
                <img draggable="false" src="'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['avatar'])) ? $in['avatar'] : null)).'" />
            </a>
        </div>
        <!--<div class="codo_posts_post_title">

        </div>-->
		
        <div class="codo_posts_post_name">
            <a href="'.lcr5ec7643f5eb12raw($cx, lcr5ec7643f5eb12hbch($cx, 'const', array(array('RURI'),array()), 'raw', $in)).'user/profile/'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['id'])) ? $in['id'] : null)).'"><span class="role_styled role_'.lcr5ec7643f5eb12raw($cx, (($inary && isset($in['role'])) ? $in['role'] : null)).'">'.lcr5ec7643f5eb12raw($cx, (($inary && isset($in['name'])) ? $in['name'] : null)).'</span></a>
        </div>

        <div class="codo_posts_post_desc">
'.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['in_search'])) ? $in['in_search'] : null), false)) ? '            '.lcr5ec7643f5eb12raw($cx, lcr5ec7643f5eb12hbch($cx, 'i18n', array(array('posted'),array()), 'raw', $in)).'&nbsp;<a href="'.lcr5ec7643f5eb12raw($cx, lcr5ec7643f5eb12hbch($cx, 'const', array(array('RURI'),array()), 'raw', $in)).'topic/'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['tid'])) ? $in['tid'] : null)).'/'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['safe_title'])) ? $in['safe_title'] : null)).'/post-'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'#post-'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'">'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['post_created'])) ? $in['post_created'] : null)).'</a>
' : '            <span>
                '.lcr5ec7643f5eb12raw($cx, lcr5ec7643f5eb12hbch($cx, 'i18n', array(array('posted'),array()), 'raw', $in)).'&nbsp;<a href="'.lcr5ec7643f5eb12raw($cx, lcr5ec7643f5eb12hbch($cx, 'const', array(array('RURI'),array()), 'raw', $in)).'topic/'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['tid'])) ? $in['tid'] : null)).'/'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['safe_title'])) ? $in['safe_title'] : null)).'/'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['page'])) ? $in['page'] : null)).'#post-'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'">'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['post_created'])) ? $in['post_created'] : null)).'</a>
            </span>
').'        </div>
		
        <div class="codo_posts_user_spec">
        </div>
    </div>
    <div class="codo_posts_post_content">
        <div class="codo_posts_post_message">'.lcr5ec7643f5eb12raw($cx, (($inary && isset($in['message'])) ? $in['message'] : null)).'</div>
        <div class="codo_posts_post_imessage">'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['imessage'])) ? $in['imessage'] : null)).'</div>

'.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['signature'])) ? $in['signature'] : null), false)) ? '            <div class="codo_posts_signature">'.lcr5ec7643f5eb12raw($cx, (($inary && isset($in['signature'])) ? $in['signature'] : null)).'</div>
' : '').'
        
'.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['post_modified'])) ? $in['post_modified'] : null), false)) ? '            <div class="codo_last_edit">'.lcr5ec7643f5eb12raw($cx, lcr5ec7643f5eb12hbch($cx, 'i18n', array(array('edited'),array()), 'raw', $in)).' '.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['post_modified'])) ? $in['post_modified'] : null)).'</div>
' : '').'        
'.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['can_move_topic'])) ? $in['can_move_topic'] : null), false)) ? '            <input type="checkbox" name="group1" id="codo_posts_select_'.lcr5ec7643f5eb12raw($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'" class="chk-box codo_posts_select_post"/>
            <label class="codo_select_post_checkbox_label" for="codo_posts_select_'.lcr5ec7643f5eb12raw($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'"></label>
' : '').''.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['can_move_post'])) ? $in['can_move_post'] : null), false)) ? '            <input type="checkbox" name="group1" id="codo_posts_select_'.lcr5ec7643f5eb12raw($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'" class="chk-box codo_posts_select_post"/>
            <label class="codo_select_post_checkbox_label" for="codo_posts_select_'.lcr5ec7643f5eb12raw($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'"></label>
' : '').'    
        
'.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['can_rep'])) ? $in['can_rep'] : null), false)) ? '        <div class="codo_posts_post_reputation" id="codo_posts_rep_'.lcr5ec7643f5eb12raw($cx, (($inary && isset($in['post_id'])) ? $in['post_id'] : null)).'">
            <div class="codo_btn codo_btn_danger codo_rep_up_btn codo_tooltip" title="'.lcr5ec7643f5eb12encq($cx, lcr5ec7643f5eb12hbch($cx, 'i18n', array(array('vote up'),array()), 'encq', $in)).'"><i class="icon-thumbs-up"></i></div>
            <div class="codo_reputation_points codo_tooltip '.((lcr5ec7643f5eb12ifvar($cx, (($inary && isset($in['is_neg_rep'])) ? $in['is_neg_rep'] : null), false)) ? 'codo_reputation_negative' : '').'" data-placement="right" title="'.lcr5ec7643f5eb12encq($cx, lcr5ec7643f5eb12hbch($cx, 'i18n', array(array('reputation points'),array()), 'encq', $in)).'">'.lcr5ec7643f5eb12encq($cx, (($inary && isset($in['reputation'])) ? $in['reputation'] : null)).'</div>
            <div class="codo_btn codo_btn_danger codo_rep_down_btn codo_tooltip" title="'.lcr5ec7643f5eb12encq($cx, lcr5ec7643f5eb12hbch($cx, 'i18n', array(array('vote down'),array()), 'encq', $in)).'" data-placement="bottom"><i class="icon-thumbs-down"></i></div>
        </div>
' : '').'
    </div>  

</article>
<!--<div class="codo_topic_separator"></div>-->
';}).'';
};