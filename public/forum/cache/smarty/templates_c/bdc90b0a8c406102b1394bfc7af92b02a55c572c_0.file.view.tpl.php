<?php
/* Smarty version 3.1.33-dev-5, created on 2020-05-08 07:35:54
  from '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/user/profile/view.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-dev-5',
  'unifunc' => 'content_5eb4fdca713948_89395521',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bdc90b0a8c406102b1394bfc7af92b02a55c572c' => 
    array (
      0 => '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/user/profile/view.tpl',
      1 => 1588918331,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5eb4fdca713948_89395521 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>
    

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_4650645865eb4fdca6f0ac8_10930640', 'body');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, 'layout.tpl');
}
/* {block 'body'} */
class Block_4650645865eb4fdca6f0ac8_10930640 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_4650645865eb4fdca6f0ac8_10930640',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.load_block.php','function'=>'smarty_modifier_load_block',),1=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.abbrev_no.php','function'=>'smarty_modifier_abbrev_no',),2=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.get_pretty_time.php','function'=>'smarty_modifier_get_pretty_time',),));
?>


<div class="container-fluid top-custom-container-profile">
      <div class="container">
         <div class="row">
             <div class="col-md-1 col-sm-3">

                <img draggable="false" class="img-rounded profile-avatar-img" src="<?php echo $_smarty_tpl->tpl_vars['user']->value->avatar;?>
" />
            </div>
             <div class="codo_username col-md-6 col-sm-6 codo-username-profile">
               <h4><?php echo $_smarty_tpl->tpl_vars['user']->value->username;?>
</h4>
               <p>
                <?php echo $_smarty_tpl->tpl_vars['user']->value->signature;?>

            </p>
        </div>
    </div>
</div>
</div>

<div class="container" style="padding-top: 0px">

    <ul class="nav nav-tabs nav-main-profile" id="profile_nav" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="overview-tab" data-toggle="tab" href="#overview"
               role="tab"><?php echo _t("Overview");?>
</a>
        </li>
        <?php if ($_smarty_tpl->tpl_vars['can_edit_profile']->value) {?>
        <li class="nav-item">
            <a class="nav-link" id="edit-tab" data-toggle="tab" href="#edit" role="tab"><?php echo _t("Edit Account");?>
</a>
        </li>
        <?php }?>
    </ul>


    <?php echo smarty_modifier_load_block("block_profile_view_before");?>

    <div style="display:none" class="codo_notification codo_notification_error" id="codo_resend_mail_failed"></div>

    <div style="display:none" id="codo_mail_resent" class="codo_notification codo_notification_success">
        <?php echo _t("A confirmation email has been sent to your email address!");?>

    </div>


    <?php if ($_smarty_tpl->tpl_vars['user_not_confirmed']->value) {?>

    <div class="codo_notification codo_notification_warning">
        <?php echo _t("You have not yet confirmed your email address.");?>

        <a id="codo_resend_mail" href="#"><?php echo _t("Resend email");?>
</a>
        <img id="codo_email_sending_img" src="<?php echo @constant('CURR_THEME');?>
img/ajax-loader-orange.gif" />
    </div>
    <?php }?>
    <?php if ($_smarty_tpl->tpl_vars['user_not_approved']->value) {?>

    <div class="codo_notification codo_notification_warning">
        <?php echo _t("Your account is awaiting approval.");?>

    </div>
    <?php }?>

    <div class="row">
        <div class="col-md-8 codo_recent_posts_container">

            <div class="codo_tabs">

                    <!--<ul class="nav nav-tabs">
                        <li role="presentation" class="active"><a data-toggle="tab" href="#recent_posts">Recent posts</a></li>
                    </ul>-->

                    <div class="codo_tabs_content tab-content">

                        <div id="recent_posts" class="tab-pane fade show active codo_topics_body">

                            
                            <div class='codo_load_more_gif'></div>

                            <?php echo '<script'; ?>
 style="display: none" id="codo_template" type="text/html">


                                {{#each topics}}
                                <article class="clearfix">

                                    <!--<div class="codo_topics_topic_img">
                                        <a href="{{../RURI}}category/{{cat_alias}}">
                                            <img draggable="false" src="{{../DURI}}{{../CAT_IMGS}}{{cat_img}}" />
                                        </a>
                                    </div>-->

                                    <div class="row codo_recent_post_stats">

                                         <div class="col-md-5" style="padding-left:0px;padding-right:0px;float:right;">
                                            <div style="float:left;padding-top:2px;" style="float:left;">
                                                <i class="icon icon-message" style="font-size:16px;"></i>
                                            </div>
                                            <div style="float:left;font-weight:bold;padding-left:3px;">
                                                <span>{{no_replies}}</span>
                                            </div>
                                        </div>
                                        <div class="col-md-5" style="padding-left:0px;padding-right:0px;float:right;" id="codo_topics_no_views">
                                            <div style="float:left;padding-top:2px;" style="float:left;">
                                                <i class="icon icon-eye2" style="font-size:16px;"></i>
                                            </div>
                                            <div style="float:left;font-weight:bold;padding-left:3px;">
                                                {{no_views}}
                                            </div>
                                        </div>
                                    </div>

                                <div class="codo_topics_topic_content">
                                    <div class="codo_topics_topic_avatar">
                                        <a href="{{../RURI}}user/profile/{{id}}">

                                            {{#if avatar}}
                                            <img draggable="false" src="{{avatar}}" />
                                            {{else}}
                                            <img draggable="false" src="{{../../DURI}}{{../../DEF_AVATAR}}" />
                                            {{/if}}

                                        </a>
                                    </div>

                                    <div class="codo_topics_topic_title"><a href="{{../RURI}}topic/{{topic_id}}/{{{safe_title}}}"style="font-size:16px;color:#000;">{{{title}}}</a></div>




                                </div>

                                {{#each contents}}
                                <div class='codo_topics_topic_contents'>
                                    <div class="codo_topics_topic_message">{{{message}}}
                                    </div>
                                    <div class='codo_virtual_space'></div>
                                    <div class="codo_topics_last_post">
                                        <a href="{{../../RURI}}topic/{{../topic_id}}/{{../safe_title}}/post-{{post_id}}#post-{{post_id}}">{{post_created}}</a>
                                    </div>
                                </div>
                                {{/each}}

                                <!--<div class="codo_topics_topic_name">
                                    <a href="{{../RURI}}user/profile/{{id}}"><span class="role_{{role}}">{{name}}</span></a>
                                    <span>{{../created}} {{topic_created}}</span>
                                </div>-->

                                <!--<div class="codo_topics_topic_foot clearfix">

                                    <div class="codo_topics_no_replies"><span>{{no_replies}}</span>{{../reply_txt}}</div>
                                    <div class="codo_topics_no_replies"><span>{{no_views}}</span>{{../views_txt}}</div>

                                </div>-->

                                <br/>
                                <br/>
                            </article>
                            {{else}}

                            <div class="codo_no_posts">
                                {{no_topics}}
                                {{#if can_create}}
                                <br/><br/>
                                <button class="codo_btn codo_btn_primary" onclick="codo_create_topic()" href="#" >{{new_topic}}</button>
                                {{/if}}
                            </div>
                            {{/each}}
                        <?php echo '</script'; ?>
>

                        
                    </div>

                    <?php echo smarty_modifier_load_block("block_profile_view_tabs_after");?>


                </div>
            </div>
        </div>


        <!--admin profile-->
        <div class="col-md-4 col-12 profile-user-statistics-right">
            <div class="codo_profile profile-user-statistics-right-inner" id="">
                <?php echo smarty_modifier_load_block("block_profile_user_statistics_before");?>

                    <div class="codo_user_statistics  codo_info_block">
                        <div class="row mb-2">
                            <div class="col-md-6 codo_profile_left" style="margin-top: 2px">
                                <i class="icon icon-eye2" style="font-size: 22px;"></i>
                            </div>
                            <div class="col-md-6">
                                <div class="codo_user_info_num codo_profile_right">
                                    <?php echo smarty_modifier_abbrev_no($_smarty_tpl->tpl_vars['user']->value->profile_views);?>

                                </div>
                            </div>
                        </div>

                        <div class="row mb-2">
                             <div class="col-md-6 codo_profile_left" style="margin-top: 2px">
                                <i class="icon icon-message" style="font-size: 22px;"></i>
                             </div>
                             <div class="col-md-6 codo_user_info_num codo_profile_right">
                                <?php echo smarty_modifier_abbrev_no($_smarty_tpl->tpl_vars['user']->value->no_posts);?>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 codo_profile_left">
                                <i class="fa fa-star" style="font-size: 22px;color:#5a7fee;"></i>
                             </div>
                             <div class="codo_user_info_num col-md-6 codo_profile_right">
                                <?php echo $_smarty_tpl->tpl_vars['user']->value->reputation;?>

                            </div>
                        </div>

                </div>
                <div class="codo_user_details">

                    <div style="color:#9f9f9f;"> <?php echo _t("Joined :");?>
 <span style="float:right;color:#3e3e3e;font-weight:bold"><?php echo smarty_modifier_get_pretty_time($_smarty_tpl->tpl_vars['user']->value->created);?>
</span>
                    </div>
                    <div style="color:#9f9f9f;">
                        <?php echo _t("Last login :");?>
 <span style="float:right;color:#3e3e3e;font-weight:bold"><?php if ($_smarty_tpl->tpl_vars['user']->value->last_access == 0) {
echo _t('never');
} else {
echo smarty_modifier_get_pretty_time($_smarty_tpl->tpl_vars['user']->value->last_access);
}?></span>
                    </div>
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['custom_fields']->value, 'field');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['field']->value) {
?>

                    <?php echo $_smarty_tpl->tpl_vars['field']->value['output'];?>

                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                </div>
                <?php echo smarty_modifier_load_block("block_profile_user_statistics_after");?>

            </div>
        </div>

        <!--end admin profile-->


    </div>


    <?php echo '<script'; ?>
 type="text/javascript">

        CODOFVAR = {
            userid: <?php echo $_smarty_tpl->tpl_vars['user']->value->id;?>
,
            tab: '<?php echo $_smarty_tpl->tpl_vars['tab']->value;?>
'
        }
    <?php echo '</script'; ?>
>
    <?php
}
}
/* {/block 'body'} */
}
