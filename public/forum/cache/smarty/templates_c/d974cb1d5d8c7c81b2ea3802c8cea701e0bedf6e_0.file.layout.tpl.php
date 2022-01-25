<?php
/* Smarty version 3.1.33-dev-5, created on 2020-05-08 07:31:03
  from '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/layout.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-dev-5',
  'unifunc' => 'content_5eb4fca75b0b27_63902587',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd974cb1d5d8c7c81b2ea3802c8cea701e0bedf6e' => 
    array (
      0 => '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/layout.tpl',
      1 => 1588918331,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5eb4fca75b0b27_63902587 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.get_opt.php','function'=>'smarty_modifier_get_opt',),1=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.load_block.php','function'=>'smarty_modifier_load_block',),2=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.get_preference.php','function'=>'smarty_modifier_get_preference',),));
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
?>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="generator" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
        <meta name="description" content="<?php echo smarty_modifier_get_opt("site_description");?>
">

        <?php if (isset($_smarty_tpl->tpl_vars['meta_author']->value)) {?>
        <meta name="author" content="<?php echo $_smarty_tpl->tpl_vars['meta_author']->value;?>
">
        <?php }?>
        <title><?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_9276415545eb4fca756f761_17685460', "title");
?>
</title>
        <!--[if lte IE 8]>
         <?php echo '<script'; ?>
 src="//cdnjs.cloudflare.com/ajax/libs/json2/20121008/json2.min.js"><?php echo '</script'; ?>
>
        <![endif]-->

        <?php echo smarty_modifier_load_block("block_head");?>


        <!--
                <?php echo '<script'; ?>
 type="text/javascript" language="javascipt" src="http://localhost/codoforum/freichat/client/main.php"><?php echo '</script'; ?>
>
                <link rel="stylesheet" href="http://localhost/codoforum/freichat/client/jquery/freichat_themes/freichatcss.php" type="text/css">
        -->
        <?php echo '<script'; ?>
 type="text/javascript">

            var on_codo_loaded = function () {
            };
            var codo_defs = {
                url: "<?php echo @constant('RURI');?>
",
                duri: "<?php echo @constant('DURI');?>
",
                def_theme: "<?php echo @constant('DEF_THEME_PATH');?>
",
                reluri: "<?php echo @constant('DATA_REL_PATH');?>
",
                token: "<?php echo $_smarty_tpl->tpl_vars['CSRF_token']->value;?>
",
                smiley_path: "<?php echo @constant('SMILEY_PATH');?>
",
                logged_in: "<?php echo $_smarty_tpl->tpl_vars['I']->value->loggedIn() ? 'yes' : 'no';?>
",
                uid: "<?php echo $_smarty_tpl->tpl_vars['I']->value->id;?>
",
                login_url: "<?php echo $_smarty_tpl->tpl_vars['login_url']->value;?>
",
                time: "<?php echo $_smarty_tpl->tpl_vars['php_time_now']->value;?>
",
                forum_tags_num: <?php echo $_smarty_tpl->tpl_vars['forum_tags_num']->value;?>
,
                forum_tags_len: <?php echo $_smarty_tpl->tpl_vars['forum_tags_len']->value;?>
,
                unread_notifications: '<?php echo $_smarty_tpl->tpl_vars['unread_notifications']->value;?>
',
                roleName: `<?php echo $_smarty_tpl->tpl_vars['roleName']->value;?>
`,
                trans: {

                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['translations']->value, 'translation', false, 'key');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['translation']->value) {
?>
                    "<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
": "<?php echo $_smarty_tpl->tpl_vars['translation']->value;?>
",
                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    embed_no_preview: "<?php echo _t('preview not available inside editor');?>
",
                    editor: {
                        bold: "<?php echo _t('Bold');?>
",
                        italic: "<?php echo _t('Italic');?>
",
                        bulleted_list: "<?php echo _t('Bulleted List');?>
",
                        numeric_list: "<?php echo _t('Numeric List');?>
",
                        picture: "<?php echo _t('Picture');?>
",
                        link: "<?php echo _t('Link');?>
",
                        quotes: "<?php echo _t('Quotes');?>
",
                        preview: "<?php echo _t('Preview');?>
",
                        download_file: "<?php echo _t('Click to download file');?>
",
                        clickToViewFull: "<?php echo _t('Click to view full size image');?>
"
                    },
                    notify: {
                        mention: "<?php echo _t("New mention");?>
",
                        mention_action: "<?php echo _t("mentioned you in");?>
",
                        rolled_up_trans: "<?php echo _t(" for same topic");?>
",
                        caught_up: "<?php echo _t("No new notifications");?>
"
                    }
                },
                preferences: {
                    drafts: {
                        autosave: 'yes'
                    },
                    notify: {
                        real_time: "<?php echo smarty_modifier_get_preference("real_time_notifications");?>
",
                        desktop: "<?php echo smarty_modifier_get_preference("desktop_notifications");?>
"
                    }
                }

            };

            if (codo_defs.unread_notifications != '') {
                codo_defs.unread_notifications = parseInt(codo_defs.unread_notifications);
            } else {
                codo_defs.unread_notifications = 0;
            }

            var CODOF = {
                hook: {
                    hooks: [],
                    add: function (myhook, func, weight, args) {

                        var i = 0;
                        if (typeof weight === "undefined") {

                            weight = 0;
                        }
                        if (typeof args === "undefined") {

                            args = {
                            };
                        }

                        if (typeof CODOF.hook.hooks[myhook] !== "undefined") {

                            i = CODOF.hook.hooks[myhook].length;
                        } else {

                            CODOF.hook.hooks[myhook] = [];
                        }

                        CODOF.hook.hooks[myhook][i] = {
                            func: func,
                            args: args,
                            weight: weight
                        };
                    }
                }
            }


        <?php echo '</script'; ?>
>

        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet">
        <link rel="shortcut icon" type="image/x-icon" href="<?php echo @constant('DURI');?>
assets/img/general/img/favicon.ico?v=1">
        <link rel="apple-touch-icon" sizes="57x57" href="https://codoforum.com/img/apple-touch-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="114x114" href="https://codoforum.com/img/apple-touch-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="72x72" href="https://codoforum.com/img/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="144x144" href="https://codoforum.com/img/apple-touch-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="60x60" href="https://codoforum.com/img/apple-touch-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="120x120" href="https://codoforum.com/img/apple-touch-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="76x76" href="https://codoforum.com/img/apple-touch-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="152x152" href="https://codoforum.com/img/apple-touch-icon-152x152.png">
        <link rel="icon" type="image/png" href="https://codoforum.com/img/favicon-196x196.png" sizes="196x196">
        <link rel="icon" type="image/png" href="https://codoforum.com/img/favicon-160x160.png" sizes="160x160">
        <link rel="icon" type="image/png" href="https://codoforum.com/img/favicon-96x96.png" sizes="96x96">
        <link rel="icon" type="image/png" href="https://codoforum.com/img/favicon-16x16.png" sizes="16x16">
        <link rel="icon" type="image/png" href="https://codoforum.com/img/favicon-32x32.png" sizes="32x32">


        <!-- Some SEO stuff -->

        <?php if (isset($_smarty_tpl->tpl_vars['meta_robots']->value)) {?>

            <meta name="robots" content="<?php echo $_smarty_tpl->tpl_vars['meta_robots']->value;?>
">
        <?php }?>

        <?php if (isset($_smarty_tpl->tpl_vars['canonical']->value)) {?>

            <link rel="canonical" href="<?php echo $_smarty_tpl->tpl_vars['canonical']->value;?>
" />
        <?php }?>
        <?php if (isset($_smarty_tpl->tpl_vars['rel_prev']->value)) {?>

            <link rel="prev" href="<?php echo $_smarty_tpl->tpl_vars['rel_prev']->value;?>
" />
        <?php }?>
        <?php if (isset($_smarty_tpl->tpl_vars['rel_next']->value)) {?>

            <link rel="next" href="<?php echo $_smarty_tpl->tpl_vars['rel_next']->value;?>
" />
        <?php }?>

        <?php if (isset($_smarty_tpl->tpl_vars['google_plus_profile']->value)) {?>
            <link rel="author" href="https://plus.google.com/<?php echo $_smarty_tpl->tpl_vars['google_plus_profile']->value;?>
"/>
        <?php }?>

        <?php if (isset($_smarty_tpl->tpl_vars['og']->value)) {?>    <!-- Twitter Card data -->
            <meta name="twitter:card" content="summary">

            <!-- Open Graph data -->
            <meta property="og:title" content="<?php echo $_smarty_tpl->tpl_vars['og']->value['title'];?>
" />
            <meta property="og:type" content="<?php echo $_smarty_tpl->tpl_vars['og']->value['type'];?>
" />
            <?php if (isset($_smarty_tpl->tpl_vars['og']->value['url'])) {?><meta property="og:url" content="<?php echo $_smarty_tpl->tpl_vars['og']->value['url'];?>
" /><?php }?>

            <?php if (isset($_smarty_tpl->tpl_vars['og']->value['image'])) {?>
                <meta property="og:image" content="<?php echo $_smarty_tpl->tpl_vars['og']->value['image'];?>
" /><?php }?>
            <?php if (isset($_smarty_tpl->tpl_vars['og']->value['desc'])) {?><meta property="og:description" content="<?php echo $_smarty_tpl->tpl_vars['og']->value['desc'];?>
" /><?php }?>

            <meta property="og:site_name" content="<?php echo $_smarty_tpl->tpl_vars['site_title']->value;?>
" />

            <!-- Schema.org markup for Google+ -->
            <meta itemprop="name" content="<?php echo $_smarty_tpl->tpl_vars['og']->value['title'];?>
">
            <?php if (isset($_smarty_tpl->tpl_vars['og']->value['desc'])) {?><meta itemprop="description" content="<?php echo $_smarty_tpl->tpl_vars['og']->value['desc'];?>
"><?php }?>

            <?php if (isset($_smarty_tpl->tpl_vars['og']->value['image'])) {?><meta itemprop="image" content="<?php echo $_smarty_tpl->tpl_vars['og']->value['image'];?>
"><?php }?>
        <?php }?>

        <?php if (isset($_smarty_tpl->tpl_vars['article_published']->value)) {?><meta property="article:published_time" content="<?php echo $_smarty_tpl->tpl_vars['article_published']->value;?>
" /><?php }?>

        <?php if (isset($_smarty_tpl->tpl_vars['article_modified']->value)) {?><meta property="article:modified_time" content="<?php echo $_smarty_tpl->tpl_vars['article_modified']->value;?>
" /><?php }?>

        <!-- SEO stuff ends -->


        <?php echo $_smarty_tpl->tpl_vars['page']->value['head']['css'];?>

        <?php echo $_smarty_tpl->tpl_vars['page']->value['head']['js'];?>


        <style type="text/css">

            .navbar {

                border-radius: 0;

            }

            .navbar-toggler {
                padding: 3px 7px;
            }

            .mm-list > li > a{
                color: #dcdcdc !important;
            }

            .nav .open > a, .nav .open > a:hover, .nav .open > a:focus {

                background: white;
            }

            .navbar-clean .container-fluid {

                padding-left: 20px;
                padding-right: 30px;
            }


            .codo_forum_title:hover {
                -webkit-transition: all 0.5s ease;
                -moz-transition: all 0.5s ease;
                -o-transition: all 0.5s ease;
                transition: all 0.5s ease;
            }

            .dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus {

                color: white;
                background: #3794db;
            }

            .container{
                /* margin-top: 60px;*/
            }

            .CODOFORUM{

                position:relative !important;
                top:0;

            }

            .mm-page {

                height: 100%;
            }

            <?php echo $_smarty_tpl->tpl_vars['roleStyles']->value;?>

        </style>

    </head>

    <body>

        <?php echo smarty_modifier_load_block("block_body_start");?>



        <div class="CODOFORUM">


            <nav id="mmenu" style="display: none">
                <ul>


                    <?php if ($_smarty_tpl->tpl_vars['I']->value->loggedIn()) {?>
                        <li style="text-align:center">
                            <a href="<?php echo $_smarty_tpl->tpl_vars['profile_url']->value;?>
"><img  src="<?php echo $_smarty_tpl->tpl_vars['I']->value->avatar;?>
" style="width: 50px;border-radius: 30px;border: 3px solid"/></a>
                            <span style="padding: 10px 0px;font-weight:bold"><?php echo $_smarty_tpl->tpl_vars['I']->value->name;?>
</span>
                        </li>
                        <?php echo smarty_modifier_load_block("block_next_to_user");?>

                    <?php }?>

                    <?php echo smarty_modifier_load_block("block_main_menu_start");?>


                    <?php if ($_smarty_tpl->tpl_vars['I']->value->loggedIn()) {?>
                        <li title="<?php echo _t('Notifications');?>
"
                            class="codo_inline_notifications_show_all codo_mobile_menu_notifications">

                            <a><i class="fa fa-bell"></i>
                                <span><?php echo _t('Notifications');?>
</span>
                                <?php if ($_smarty_tpl->tpl_vars['unread_notifications']->value) {?>
                                    <span class="codo_inline_notifications_unread_no codo_inline_notifications_unread_no_mobile"><?php echo $_smarty_tpl->tpl_vars['unread_notifications']->value;?>
</span>
                                <?php }?>

                            </a>

                        </li>

                        <?php if ($_smarty_tpl->tpl_vars['canCreateTopicInAtleastOneCategory']->value) {?>
                            <li class="" onclick="codo_create_topic()">
                                <a><i class="fa fa-pencil"></i><span><?php echo _t('New topic');?>
</span></a>
                            </li>
                        <?php }?>

                        <?php if ($_smarty_tpl->tpl_vars['tpl']->value == "forum/topic" && $_smarty_tpl->tpl_vars['can_reply']->value) {?>
                            <li class="" onclick="CODOF.replyTopic(true)">
                                <a><i class="fa fa-edit"></i><span><?php echo _t('New reply');?>
</span></a>
                            </li>
                        <?php }?>


                        <li class="">

                            <span><i class="fa fa-user"></i><?php echo _t('Profile');?>
</span>
                            <ul>


                                <li><a href="<?php echo $_smarty_tpl->tpl_vars['profile_url']->value;?>
"><i class="fa fa-user"></i>
                                        <span><?php echo _t("View Profile");?>
</span></a></li>
                                <li><a href="<?php echo $_smarty_tpl->tpl_vars['profile_url']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['I']->value->id;?>
/edit"><i class="fa fa-pencil"></i>
                                        <span><?php echo _t("Edit");?>
</span></a></li>
                                <li><a href="<?php echo $_smarty_tpl->tpl_vars['logout_url']->value;?>
"><i
                                                class="fa fa-logout"></i><span><?php echo _t("Logout");?>
</span></a>
                                </li>

                            </ul>
                        </li>

                        
                    <?php } else { ?>

                        <li class="active"><a href="<?php echo $_smarty_tpl->tpl_vars['register_url']->value;?>
"><?php echo _t("Register");?>
</a></li>
                        <li><a id="codo_login_link" href="<?php echo $_smarty_tpl->tpl_vars['login_url']->value;?>
"><?php echo _t("Login");?>
</a></li>
                    <?php }?>

                    <?php echo smarty_modifier_load_block("block_main_menu_end");?>



                </ul>
            </nav>


            <nav id="nav" class="navbar navbar-expand-lg navbar-clean navbar-light fixed-top bg-white" role="navigation">
                <div class="container-fluid" style="width:85%;">

                    <div class="navbar-header">

                                                <button type="button" class="navbar-toggler" onclick='$("#mmenu").trigger("open.mm");'>
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <?php ob_start();
echo smarty_modifier_get_opt("forum_header_menu");
$_prefixVariable1 = ob_get_clean();
if ($_prefixVariable1 == "site_title") {?>
                            <a style="padding-left: 28px" href="<?php echo @constant('RURI');
echo $_smarty_tpl->tpl_vars['site_url']->value;?>
" class="navbar-brand codo_forum_title" ><?php echo $_smarty_tpl->tpl_vars['site_title']->value;?>
</a>
                        <?php } else { ?>
                            <a href="<?php echo @constant('RURI');
echo $_smarty_tpl->tpl_vars['site_url']->value;?>
" class="navbar-brand codo_forum_title" >
                                <img src="<?php echo @constant('DURI');?>
assets/img/attachments/<?php echo smarty_modifier_get_opt("forum_logo");?>
" alt="codoforum logo" class="navbar-header-img">
                            </a>
                        <?php }?>

                    </div>


                        


                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="codo_navbar_content">

                        <ul class="nav navbar-nav ml-auto">
                            <?php if (isset($_smarty_tpl->tpl_vars['can_search']->value) && $_smarty_tpl->tpl_vars['can_search']->value) {?>
                                <li class="dropdown d-none d-sm-block global_search">
                                   <input class="codo_global_search_input codo_global_search_head_input" type="text" placeholder="<?php echo _t('Search');?>
" />
                                </li>
                                <li class="dropdown d-none d-sm-block global_search">
                                    <a href="#" id="codo_global_search">
                                        <i class="fa fa-search" title="Advanced search" ></i>
                                    </a>
                                </li>
                            <?php }?>


                            <?php echo smarty_modifier_load_block("block_main_menu_start");?>


                            <?php if ($_smarty_tpl->tpl_vars['I']->value->loggedIn()) {?>
                                <li class="nav-item dropdown d-none d-sm-block codo_tooltip" data-toggle="tooltip"
                                    data-placement="bottom" title="<?php echo _t('Notifications');?>
">
                                    <a data-toggle="dropdown" class="nav-link dropdown-toggle codo_nav_icon codo_inline_notifications" id="codo_inline_notifications">
                                        <!--<i class="icon-bell"></i>-->
                                        <i class="material-icons">notifications</i>
                                        <?php if ($_smarty_tpl->tpl_vars['unread_notifications']->value) {?>
                                            <span class="codo_inline_notifications_unread_no"><?php echo $_smarty_tpl->tpl_vars['unread_notifications']->value;?>
</span>
                                        <?php }?>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right codo_inline_notifications_list" id="codo_inline_notifications_list" role="menu" aria-labelledby="dLabel">

                                        <div class="codo_inline_notification_header">
                                            <div class="codo_load_more_bar_black_gif" ></div>
                                            <div class="codo_inline_notification_header_content" id="codo_inline_notification_header_content">

                                                <span><?php echo _t("Notifications");?>
</span>
                                                <div>
                                                                                                        <span id="codo_inline_notifications_preferences" class="glyphicon glyphicon-tasks"  data-toggle="tooltip" data-placement="bottom" title="<?php echo _t('preferences');?>
"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="codo_inline_notification_body" id="codo_inline_notification_body">

                                                                                    </div>
                                        <div class="codo_inline_notification_footer codo_inline_notifications_show_all">
                                            <span><?php echo _t("show all");?>
</span><i class="glyphicon glyphicon-time"></i>
                                        </div>
                                    </div>
                                </li>

                                <li class="codo_xs_li d-block d-sm-none">
                                    <a href="<?php echo $_smarty_tpl->tpl_vars['profile_url']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['I']->value->id;?>
/edit#notifications">
                                        <i class="icon-bell"></i>
                                        <span class="d-block d-sm-none"> <?php echo _t("Notifications");?>
</span>
                                    </a>
                                </li>

                                <?php echo smarty_modifier_load_block("block_next_to_user");?>


                                <li class="nav-item codo_menu_user dropdown">

                                    <a class="nav-link codo_menu_user_img" data-toggle="dropdown"><img  src="<?php echo $_smarty_tpl->tpl_vars['I']->value->avatar;?>
" />
                                        <span class="codo_user_name_span"><?php echo $_smarty_tpl->tpl_vars['I']->value->name;?>
</span>
                                    </a>
                                    <div class="dropdown-menu codo_menu_user_container" role="menu" aria-labelledby="dLabel">

                                       <a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['profile_url']->value;?>
"><i class="glyphicon glyphicon-user"></i>
                                                <span><?php echo _t("View Profile");?>
</span></a>
                                        <a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['profile_url']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['I']->value->id;?>
/edit"><i class="glyphicon glyphicon-pencil"></i>
                                                <span><?php echo _t("Edit");?>
</span></a>
                                        <a class="dropdown-item" href="<?php echo $_smarty_tpl->tpl_vars['logout_url']->value;?>
"><i
                                                        class="glyphicon glyphicon-log-out"></i><span><?php echo _t("Logout");?>
</span></a>

                                    </div>
                                </li>

                                
                            <?php } else { ?>

                                <li class="nav-item"><a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['register_url']->value;?>
"><?php echo _t("Register");?>
</a></li>
                                <li class="nav-item"><a class="nav-link" id="codo_login_link" href="<?php echo $_smarty_tpl->tpl_vars['login_url']->value;?>
"><?php echo _t("Login");?>
</a></li>
                            <?php }?>

                            <?php echo smarty_modifier_load_block("block_main_menu_end");?>


                            <li class="codo_back_to_top"><a class="codo_back_to_top_arrow"><i class="icon-arrow-top"></i></a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>


            <div class='codo_modal_bg'></div>

        <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_7797701215eb4fca75a7ef9_05865956', "body");
?>


        <div class="codo_footer">

            <?php echo $_smarty_tpl->tpl_vars['page']->value['body']['js'];?>

            <?php echo smarty_modifier_load_block("block_footer");?>



            <footer class="footer">
                <div class="container" style="padding:0px;">
                    <div class="row" style="padding: 5px !important">
                        <div class="col-sm-4">&copy; <?php echo date('Y');?>
 <?php echo $_smarty_tpl->tpl_vars['site_title']->value;?>
<br>


                            <small><?php echo _t("Powered by");?>
 <a href="http://codoforum.com" target="_blank">Codoforum</a></small>
                        </div>

                        <div class="col-sm-4 ml-auto" style="text-align: center">


                            <?php echo smarty_modifier_load_block("block_footer_right");?>




                            <span class=''></span>

                        </div>

                    </div>
                </div>
            </footer>


            <div style="display: none" id="codo_js_php_defs">
                <?php echo smarty_modifier_load_block("block_js_php_maps");?>

            </div>
        </div>
        <div class='notifications bottom-right'></div>


    </div>


    <?php echo smarty_modifier_load_block("block_body_end");?>


        
        <?php echo '<script'; ?>
 style="display: none" id="codo_inline_notifications_template" type="text/html">

            {{#each objects}}
            <a target="_blank" href="{{../url}}{{link}}" class="codo_inline_notification_el codo_notification_is_read_{{is_read}}">

                <div class="codo_inline_notification_el_img">

                    {{#isRemote actor.avatar}}
                    <img src="{{../actor.avatar}}"/>
                    {{else}}
                    <img src="{{../../duri}}assets/img/profiles/icons/{{../actor.avatar}}"/>
                    {{/isRemote}}
                </div>
                <div class="codo_inline_notification_el_body">
                    <div class="codo_inline_notification_el_head">
                        <span class="codo_inline_notification_el_title">{{title}}</span>
                        {{#if rolledX}}
                        <span data-toggle="tooltip" data-placement="bottom" title="{{../rolledX}}{{../../rolled_up_trans}}" class="codo_inline_notification_el_rolled">{{rolledX}}</span>
                        {{/if}}
                        <div class="codo_inline_notification_el_created">{{created}}</div>
                    </div>
                    <div class="codo_inline_notification_el_text">
                        <span>{{{body}}}</b></span>
                    </div>
                </div>
            </a>
            {{else}}
            <div class="codo_inline_notification_caught_up">{{../caught_up}}</div>
            {{/each}}
        <?php echo '</script'; ?>
>
    

    <div class="codo_editor_draft">
        <div>
            <div id="codo_pending_text" class="codo_pending_text"><?php echo _t("Pending draft ...");?>
 <?php echo _t("Click to resume editing");?>
</div>
            <div class="codo_delete_draft"><i class="icon-trash"></i> <?php echo _t(" Discard draft");?>
 </div>
        </div>
    </div>

    <div id = "codo_is_xs" class="d-none d-sm-block"></div>
    <div id="codo_is_sm" class="hidden-sm"></div>

    <?php echo '<script'; ?>
 type="text/javascript">
        /** Lets optimize to the MAX **/
        function downloadJSAtOnload() {

            var files = JSON.parse('<?php echo $_smarty_tpl->tpl_vars['page']->value['defer'];?>
');
            var len = files.length;
            var i = 0;
            var element = document.createElement("script");
            element.src = files[i];
            element.async = false;
            document.body.appendChild(element);
            if (element.readyState) {  //IE
                element.onreadystatechange = function () {
                    if (element.readyState === "loaded" || element.readyState === "complete") {
                        element.onreadystatechange = null;
                        on_codo_loaded();
                        codo_load_js();
                    }
                };
            } else {  //Others
                element.onload = function () {
                    on_codo_loaded();
                    CODOF.hook.call('on_cf_loaded');
                    codo_load_js();
                };
            }

            function codo_load_js() {
                var element;
                for (var i = 1; i < len; i++) {
                    element = document.createElement("script");
                    element.src = files[i];
                    element.async = false;
                    document.body.appendChild(element);
                    if (i === len - 1) {
                        element.onload = function () {
                            CODOF.hook.call('on_scripts_loaded');
                        }
                    }
                }
            }
        };

    if (window.addEventListener)
            window.addEventListener("load", downloadJSAtOnload, false);
    else if (window.attachEvent)
            window.attachEvent("onload", downloadJSAtOnload);
    else window.onload = downloadJSAtOnload;
        <?php echo '</script'; ?>
>
</body>



</html>
<?php }
/* {block "title"} */
class Block_9276415545eb4fca756f761_17685460 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'title' => 
  array (
    0 => 'Block_9276415545eb4fca756f761_17685460',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
echo $_smarty_tpl->tpl_vars['sub_title']->value;?>
 | <?php echo $_smarty_tpl->tpl_vars['site_title']->value;
}
}
/* {/block "title"} */
/* {block "body"} */
class Block_7797701215eb4fca75a7ef9_05865956 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_7797701215eb4fca75a7ef9_05865956',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
}
}
/* {/block "body"} */
}
