<?php
/* Smarty version 3.1.33-dev-5, created on 2020-05-21 05:34:24
  from '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/forum/category.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-dev-5',
  'unifunc' => 'content_5ec604d03047e4_02611172',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f6b8c29c7a1fd2ce9c1c6133ea9dbb9dea440851' => 
    array (
      0 => '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/forum/category.tpl',
      1 => 1588918331,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:forum/notification_level.tpl' => 1,
    'file:forum/editor.tpl' => 1,
  ),
),false)) {
function content_5ec604d03047e4_02611172 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>
        

    <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_14882114225ec604cfc53403_57105154', 'body');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, 'layout.tpl');
}
/* {block 'body'} */
class Block_14882114225ec604cfc53403_57105154 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_14882114225ec604cfc53403_57105154',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.load_block.php','function'=>'smarty_modifier_load_block',),1=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.abbrev_no.php','function'=>'smarty_modifier_abbrev_no',),2=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/function.get_children.php','function'=>'smarty_function_get_children',),3=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/function.print_children.php','function'=>'smarty_function_print_children',),));
?>


    <!--<?php echo smarty_modifier_load_block("block_breadcrumbs_before");?>

    <div id="breadcrumb" class="col-md-12">
    <?php echo smarty_modifier_load_block("block_breadcrumbs_before");?>


    <div class="codo_breadcrumb_list btn-breadcrumb hidden-xs">
        <a href="<?php echo @constant('RURI');
echo $_smarty_tpl->tpl_vars['site_url']->value;?>
"><div><i class="glyphicon glyphicon-home"></i></div></a>

    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['parents']->value, 'crumb');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['crumb']->value) {
?>
        <a title="<?php echo $_smarty_tpl->tpl_vars['crumb']->value['name'];?>
" data-toggle="tooltip" href="<?php echo @constant('RURI');?>
category/<?php echo $_smarty_tpl->tpl_vars['crumb']->value['alias'];?>
"><div><?php echo $_smarty_tpl->tpl_vars['crumb']->value['name'];?>
</div></a>                    
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</div>

<select id="codo_breadcrumb_select" class="form-control hidden-sm hidden-md hidden-lg">
<option selected="selected" value=""><?php echo _t("Where am I ?");?>
</option>
    <?php $_smarty_tpl->_assignInScope('space', "&nbsp;&nbsp;&nbsp;");?>
    <?php $_smarty_tpl->_assignInScope('indent', ((string)$_smarty_tpl->tpl_vars['space']->value));?>

    <option value="<?php echo @constant('RURI');
echo $_smarty_tpl->tpl_vars['site_url']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['indent']->value;
echo $_smarty_tpl->tpl_vars['home_title']->value;?>
</option>

    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['parents']->value, 'crumb');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['crumb']->value) {
?>
        <?php $_smarty_tpl->_assignInScope('indent', ((string)$_smarty_tpl->tpl_vars['indent']->value).((string)$_smarty_tpl->tpl_vars['space']->value));?>
        <option value="<?php echo @constant('RURI');?>
category/<?php echo $_smarty_tpl->tpl_vars['crumb']->value['alias'];?>
"><?php echo $_smarty_tpl->tpl_vars['indent']->value;
echo $_smarty_tpl->tpl_vars['crumb']->value['name'];?>
</option>                   
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

</select>    
    <?php echo smarty_modifier_load_block("block_breadcrumbs_after");?>
                
</div>

<?php echo smarty_modifier_load_block("block_breadcrumbs_after");?>
-->
<div class="container-fluid" style="padding: 50px 0 0 0;">

    <div class="row">
        <div class="col-lg-12" style="padding: 0">
            <div class="codo_icon_header d-none d-sm-block d-lg-none visible-xs d-block d-sm-none">
                <button id="codo_create_topic_btn" type="submit" class="btn btn-default btn-light codo_create_topic_btn"
                        style="width:100%"><?php echo _t("Create new topic");?>
</button>
            </div>

        </div>
    </div>
</div>


<div class="container-fluid top-custom-container-profile">
    <div class="container">

        <div class="row">


            <div class="col-md-9">
                <?php echo smarty_modifier_load_block("block_breadcrumbs_before");?>

                <div id="breadcrumb" class="col-md-12">
                    <?php echo smarty_modifier_load_block("block_breadcrumbs_before");?>


                    <div class="codo_breadcrumb_list btn-breadcrumb d-none d-sm-block">
                        <a href="<?php echo @constant('RURI');
echo $_smarty_tpl->tpl_vars['site_url']->value;?>
">
                            <div><?php echo _t("Home");?>
</div>
                        </a>

                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['parents']->value, 'crumb');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['crumb']->value) {
?>
                        <a title="<?php echo $_smarty_tpl->tpl_vars['crumb']->value['name'];?>
" data-toggle="tooltip"
                        href="<?php echo @constant('RURI');?>
category/<?php echo $_smarty_tpl->tpl_vars['crumb']->value['alias'];?>
">
                        <div><?php echo $_smarty_tpl->tpl_vars['crumb']->value['name'];?>
</div>
                    </a>
                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                </div>

                <select id="codo_breadcrumb_select"
                class="form-control d-none">
                <option selected="selected" value=""><?php echo _t("Where am I ?");?>
</option>
                <?php $_smarty_tpl->_assignInScope('space', "&nbsp;&nbsp;&nbsp;");?>
                <?php $_smarty_tpl->_assignInScope('indent', ((string)$_smarty_tpl->tpl_vars['space']->value));?>

                <option value="<?php echo @constant('RURI');
echo $_smarty_tpl->tpl_vars['site_url']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['indent']->value;
echo $_smarty_tpl->tpl_vars['home_title']->value;?>
</option>

                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['parents']->value, 'crumb');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['crumb']->value) {
?>
                <?php $_smarty_tpl->_assignInScope('indent', ((string)$_smarty_tpl->tpl_vars['indent']->value).((string)$_smarty_tpl->tpl_vars['space']->value));?>
                <option value="<?php echo @constant('RURI');?>
category/<?php echo $_smarty_tpl->tpl_vars['crumb']->value['alias'];?>
"><?php echo $_smarty_tpl->tpl_vars['indent']->value;
echo $_smarty_tpl->tpl_vars['crumb']->value['name'];?>
</option>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

            </select>
            <?php echo smarty_modifier_load_block("block_breadcrumbs_after");?>

        </div>

        <?php echo smarty_modifier_load_block("block_breadcrumbs_after");?>


        <div class="row codo_cat_top_title_area">
            <div class="col-lg-2">
                <img src='<?php echo @constant('DURI');
echo @constant('CAT_IMGS');
echo $_smarty_tpl->tpl_vars['cat_info']->value['cat_img'];?>
'
                style="width:75px;border-radius:50%;"/>
            </div>
            <div class="col-lg-8 codo_cat_top_title_box">
                <div class="codo_cat_top_title"><?php echo $_smarty_tpl->tpl_vars['cat_info']->value['cat_name'];?>
</div>
                <p><?php echo $_smarty_tpl->tpl_vars['cat_info']->value['cat_description'];?>
</p>
                <?php if (isset($_smarty_tpl->tpl_vars['new_topics']->value) && count($_smarty_tpl->tpl_vars['new_topics']->value)) {?>
                <div id='mark_all_read' class="mark_unread">
                    <div>
                        <?php echo _t("Mark all as read");?>

                    </div>
                    <div class="codo_mark_unread_checkbox">
                        <input type="checkbox" name="group0" id="codo_sidebar_title_switch"
                        class="chk-box codo_switch toggle_switch_container codo_switch_off">
                        <label for="codo_sidebar_title_switch"></label>
                    </div>

                </div>
                <?php }?>

            </div>
        </div>
    </div>
</div>
</div>
</div>

<div class="container" id="codo_category_topics" style="padding:0px;">
            <div class="row">


                <div style="display:none" id="codo_no_topics_display"
                class="codo_no_topics"><?php echo _t("No posts to display");?>
</div>

                <div class="codo_topics col-lg-8">

                    <div id="codo_topics_list">
                        <?php if ($_smarty_tpl->tpl_vars['cat_info']->value['no_topics'] > 0) {?>
                        <?php echo $_smarty_tpl->tpl_vars['topics']->value;?>

                        <?php } else { ?>
                        <div class="codo_zero_topics">
                            <?php echo _t("No topics created yet!");?>
<br/><br/>
                            <?php if ($_smarty_tpl->tpl_vars['logged_in']->value) {?>
                            <?php echo _t("Be the first to");?>

                            <a href="#" id="codo_zero_topics"><?php echo _t("create");?>
</a>
                            <?php echo _t("a topic");?>

                            <?php }?>
                        </div>
                        <?php }?>
                    </div>

                    <span style="display: none">
                                                <div id="codo_topic_page_info">
                            <span id="codo_page_info_time_spent" data-toggle="tooltip"
                            title="<?php echo _t("time spent reading previous page");?>
"></span>
                            <span id="codo_page_info_page_no" data-toggle="tooltip" title="<?php echo _t("page no.");?>
"></span>
                            <span id="codo_page_info_pages_to_go" data-toggle="tooltip"
                            title="<?php echo _t("pages to go");?>
"></span>
                        </div>
                    </span>
                </div>

                  <div class="codo_categories col-md-4" id="codo_categories">
                <?php echo smarty_modifier_load_block("block_category_desc_before");?>

                <div class="codo_categories_container">
                    <!--<a href="<?php echo @constant('RURI');?>
category/<?php echo $_smarty_tpl->tpl_vars['cat_alias']->value;?>
"><div class="codo_cat_title"><?php echo $_smarty_tpl->tpl_vars['cat_info']->value['cat_name'];?>
</div></a>-->

                    <div class="row codo_multi_column">
                        <!--<div class="col-sm-6 col-md-12">
                            <div class="codo_cat_imgs">
                                <div class="codo_cat_img" style="background-image:url('<?php echo @constant('DURI');
echo @constant('CAT_IMGS');
echo $_smarty_tpl->tpl_vars['cat_info']->value['cat_img'];?>
')">
                                </div>
                            </div>
                        </div>-->
                        <div class="col-sm-12 col-md-12">
                            <!--<?php if ($_smarty_tpl->tpl_vars['can_search']->value) {?>
                                <div class="codo_sidebar_search">
                                    <input type="text" placeholder="<?php echo _t('Search');?>
" class="form-control codo_topics_search_input" />
                                    <i class="glyphicon glyphicon-search codo_topics_search_icon" title="Advanced search" ></i>
                                </div>
                                <?php }?>-->

                                <!--<div class="codo_cat_desc"><?php echo $_smarty_tpl->tpl_vars['cat_info']->value['cat_description'];?>
</div>-->

                                <div class="codo_cat_info row clearfix">

                                    <div class="codo_cat_num col-4" title="<?php echo _t("No. of topics");?>
">
                                        <i class="icon icon-eye2"
                                           style="font-size:20px;padding-top: 2px;padding-left: 6px;"></i>
                                        <div class="codo-topic-right">
                                            <?php echo $_smarty_tpl->tpl_vars['no_topics']->value;?>

                                        </div>

                                    </div>

                                    <div class="codo_cat_num col-4" title="<?php echo _t("No. of posts");?>
">
                                        <i class="icon icon-message"
                                           style="font-size:20px;padding-top: 2px;"></i>
                                        <div class="codo-topic-right">
                                            <?php echo $_smarty_tpl->tpl_vars['no_posts']->value;?>

                                        </div>

                                    </div>

                                    <div class="codo_cat_num col-4" title="<?php echo _t("No. of followers");?>
">
                                        <i class="fa fa-signal" style="font-size:20px;color:#5a7fee;"></i>
                                        <div class="codo-topic-right">
                                            <?php echo smarty_modifier_abbrev_no($_smarty_tpl->tpl_vars['no_followers']->value);?>

                                        </div>

                                    </div>

                                <!--<div class="codo_cat_num col-4">
                                        <div><?php echo $_smarty_tpl->tpl_vars['no_topics']->value;?>
</div>
                                    <?php echo _t("Topics");?>

                                </div>

                                <div class="codo_cat_num col-4">
                                    <div><?php echo $_smarty_tpl->tpl_vars['no_posts']->value;?>
</div>
                                    <?php echo _t("Posts");?>

                                </div>
                                <div class="codo_cat_num col-4">
                                    <div><?php echo smarty_modifier_abbrev_no($_smarty_tpl->tpl_vars['no_followers']->value);?>
</div>
                                    <?php echo _t("Followers");?>

                                </div>-->

                            </div>
                            <?php if ($_smarty_tpl->tpl_vars['logged_in']->value) {?>
                            <?php $_smarty_tpl->_subTemplateRender('file:forum/notification_level.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
                            <?php }?>
                        </div>
                    </div>

                </div>

                <?php if (!empty($_smarty_tpl->tpl_vars['sub_cats']->value)) {?>
                <div class="codo_sub_categories" style="margin-top:15px;">


                    <div class="codo_sub_categories_txt"><?php echo _t("Sub Categories");?>
</div>
                    <ul id="codo_categories_ul">

                        <?php $_smarty_tpl->_assignInScope('total_topics', 0);?>
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['sub_cats']->value, 'cat');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['cat']->value) {
?>
                        <li>
                            <div class="row">

                                <div class="codo_categories_category">
                                    <a href="<?php echo @constant('RURI');?>
category/<?php echo $_smarty_tpl->tpl_vars['cat']->value->cat_alias;?>
">
                                        <div class="codo_category_title"><?php echo $_smarty_tpl->tpl_vars['cat']->value->cat_name;?>
</div>
                                    </a>
                                    <span data-toggle="tooltip" data-placement="bottom"
                                    title="<?php echo _t('No. of topics');?>
"
                                    class="codo_category_num_topics codo_bs_tooltip">
                                    <?php if ($_smarty_tpl->tpl_vars['cat']->value->granted == 1) {?>
                                    <?php echo smarty_modifier_abbrev_no($_smarty_tpl->tpl_vars['cat']->value->no_topics);?>

                                    <?php } else { ?> --
                                    <?php }?>
                                </span>
                                                                </div>
                            </div>
                            <?php echo smarty_function_get_children(array('cat'=>$_smarty_tpl->tpl_vars['cat']->value,'new_topics'=>$_smarty_tpl->tpl_vars['new_topics']->value),$_smarty_tpl);?>

                        </li>
                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                    </ul>

                </div>
                <?php }?>

                <?php echo smarty_modifier_load_block("block_category_desc_after");?>

                <div class="codo_categories_container">
                    <div class="codo_sidebar_fixed">

                        <?php if ($_smarty_tpl->tpl_vars['can_search']->value) {?>
                        <div id="codo_sidebar_fixed_search" class="codo_sidebar_search codo_sidebar_fixed_els">
                            <input type="text" placeholder="<?php echo _t('Search');?>
"
                            class="form-control codo_topics_search_input"/>
                            <i class="fa fa-search codo_topics_search_icon"
                            title="Advanced search"></i>
                        </div>
                        <?php }?>

                        <div class="dropdown codo_sidebar_navigation codo_sidebar_fixed_els" id="codo_category_select">
                            <button value="" class="dropdown-toggle" type="button" id="dropdownMenu1"
                            data-toggle="dropdown">
                            <span><?php echo _t("All topics");?>
</span>
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">

                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['cats']->value, 'cat');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['cat']->value) {
?>
                            <li role="presentation" data-alias="<?php echo $_smarty_tpl->tpl_vars['cat']->value->cat_alias;?>
"><?php echo $_smarty_tpl->tpl_vars['cat']->value->cat_name;?>
</li>
                            <?php echo smarty_function_print_children(array('cat'=>$_smarty_tpl->tpl_vars['cat']->value),$_smarty_tpl);?>

                            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        </ul>
                    </div>


                    <div class="codo_sidebar_settings">
                        <div class="codo_sub_categories_txt" style="margin:0px;"><?php echo _t("Actions");?>
</div>

                            <!--<div style="border-bottom:1px solid #cccccc;margin:0;height:50px;">
                                        
                                        
                                        
                                        <div class="codo_categories_category col-md-12">
                                                
                                                <div class="codo_category_title" style="margin-top:15px;"><?php echo _t("Actions");?>
</div>
                                                
                                                
                                        </div>
                                    </div>-->

                                    <div>
                                        <div class="codo_switch">
                                            <!--<div class="codo_switch_toggle"></div>-->
                                            <input type="checkbox" name="group1" id="codo_sidebar_hide_msg_switch"
                                            class="chk-box codo_switch toggle_switch_container codo_switch_off">
                                            <label for="codo_sidebar_hide_msg_switch"></label>
                                    <!--<span class="codo_switch_on"><?php echo _t('Yes');?>
</span>
                                        <span class="codo_switch_off"><?php echo _t('No');?>
</span>-->
                                    </div>
                                    <span><?php echo _t("Hide topic messages");?>
</span>
                                </div>

                                <div>
                                    <div class="codo_switch">
                                    <!--<div class="codo_switch_toggle"></div>
                                        <span class="codo_switch_on"><?php echo _t('Yes');?>
</span>
                                        <span class="codo_switch_off"><?php echo _t('No');?>
</span>-->
                                        <input type="checkbox" name="group1" id="codo_sidebar_inf_scroll_switch"
                                        class="chk-box codo_switch toggle_switch_container codo_switch_on">
                                        <label for="codo_sidebar_inf_scroll_switch"></label>
                                    </div>
                                    <span><?php echo _t("Enable infinite scrolling");?>
</span>
                                    </div>

                                </div>

                            </div>
                        </div>

                        <?php if ($_smarty_tpl->tpl_vars['can_create_topic']->value) {?>
                        <div class="codo_categories_container codo_new_topic d-sm-none d-md-block  d-none d-sm-block">
                            <button id="codo_create_topic_btn" type="submit"
                            class="codo_btn codo_btn_primary codo_create_topic_btn"
                            style="width:100%"><?php echo _t("Create new topic");?>
</button>
                        </div>
                        <?php }?>
                    </div>
                </div>
            </div>

                    <?php if (!$_smarty_tpl->tpl_vars['load_more_hidden']->value) {?>
                    <div class="codo_topics_loadmore_div row" id="codo_topics_load_more">

                        <div onclick="CODOF.changePage(this, <?php echo $_smarty_tpl->tpl_vars['curr_page']->value;?>
, 'prev')"
                            class="pagination_previous_page offset-md-1 col-md-2 col-sm-12<?php if ($_smarty_tpl->tpl_vars['curr_page']->value != 1) {?> active_page_controls<?php }?>">

                            <i class="icon icon-arrow-left"></i>
                            <div><?php echo _t("Previous");?>
</div>
                        </div>

                        <div class="col-md-4 pagination_pages col-sm-12">
                            <?php echo $_smarty_tpl->tpl_vars['pagination']->value;?>

                        </div>

                        <div onclick="CODOF.changePage(this, <?php echo $_smarty_tpl->tpl_vars['curr_page']->value;?>
, 'next')"
                        class="pagination_next_page col-md-2 col-sm-12<?php if ($_smarty_tpl->tpl_vars['curr_page']->value != $_smarty_tpl->tpl_vars['total_pages']->value) {?> active_page_controls<?php }?>">

                        <div><?php echo _t("Next");?>
</div>
                        <i class="icon icon-arrow-right"></i>
                    </div>

                    <?php if ($_smarty_tpl->tpl_vars['can_create_topic']->value) {?>
                    <div class="pagination_new_topic col-md-2 col-sm-12">
                        <button id="codo_create_topic_btn" type="submit"
                        class="codo_btn codo_btn_primary codo_create_topic_btn"><?php echo _t("Create new topic");?>
</button>
                    </div>
                    <?php }?>
                    <div class="offset-md-1"></div>

                </div>
                <?php }?>
            <div id='codo_delete_topic_confirm_html'>
                <div class='codo_posts_topic_delete'>
                    <div class='codo_content'>
                        <?php echo _t("All posts under this topic will be ");?>
<b><?php echo _t("deleted");?>
</b> ?
                        <br/>

                        <div class="codo_consider_as_spam codo_spam_checkbox">
                            <input id="codo_spam_checkbox" name="spam" type="checkbox" checked="">
                            <label class="codo_spam_checkbox" for="spam"><?php echo _t('Mark as spam');?>
</label>
                        </div>

                    </div>
                    <div class="codo_modal_footer">
                        <div class="codo_btn codo_btn_def codo_modal_delete_topic_cancel"><?php echo _t("Cancel");?>
</div>
                        <div class="codo_btn codo_btn_primary codo_modal_delete_topic_submit"><?php echo _t("Delete");?>
</div>
                    </div>
                    <div class="codo_spinner"></div>
                </div>
            </div>

<?php $_smarty_tpl->_subTemplateRender('file:forum/editor.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
echo '<script'; ?>
 type="text/javascript">

    CODOFVAR = {
        cid: '<?php echo $_smarty_tpl->tpl_vars['cat_info']->value['cat_id'];?>
',
        cat_alias: '<?php echo $_smarty_tpl->tpl_vars['cat_alias']->value;?>
',
        curr_page: parseInt('<?php echo $_smarty_tpl->tpl_vars['curr_page']->value;?>
'),
        total: <?php echo $_smarty_tpl->tpl_vars['cat_info']->value['no_topics'];?>
,
        num_posts_per_page: <?php echo $_smarty_tpl->tpl_vars['num_posts_per_page']->value;?>
,
        smileys: JSON.parse('<?php echo $_smarty_tpl->tpl_vars['forum_smileys']->value;?>
'),
        reply_min_chars: parseInt(<?php echo $_smarty_tpl->tpl_vars['reply_min_chars']->value;?>
),
        dropzone: {
            dictDefaultMessage: '<?php echo _t("Drop files to upload &nbsp;&nbsp;(or click)");?>
',
            max_file_size: parseInt('<?php echo $_smarty_tpl->tpl_vars['max_file_size']->value;?>
'),
            allowed_file_mimetypes: '<?php echo $_smarty_tpl->tpl_vars['allowed_file_mimetypes']->value;?>
',
            forum_attachments_multiple: <?php echo $_smarty_tpl->tpl_vars['forum_attachments_multiple']->value;?>
,
            forum_attachments_parallel: parseInt('<?php echo $_smarty_tpl->tpl_vars['forum_attachments_parallel']->value;?>
'),
            forum_attachments_max: parseInt('<?php echo $_smarty_tpl->tpl_vars['forum_attachments_max']->value;?>
')

        },
        trans: {
            continue_mesg: '<?php echo _t("Continue");?>
'
        },
        login_url: '<?php echo $_smarty_tpl->tpl_vars['login_url']->value;?>
',
        search_data: '<?php echo $_smarty_tpl->tpl_vars['search_data']->value;?>
',
        last_page: '<?php echo _t("last page");?>
',
        no_more_posts: '<?php echo _t("No more topics to display!");?>
',
        no_posts: '<?php echo _t("No topics found matching your criteria!");?>
'

    };

<?php echo '</script'; ?>
>
<link rel="stylesheet" type="text/css" href="<?php echo @constant('DURI');?>
assets/dropzone/css/basic.css"/>
        <link rel="stylesheet" type="text/css" href="<?php echo @constant('DURI');?>
assets/oembedget/oembed-get.css"/>
<?php
}
}
/* {/block 'body'} */
}
