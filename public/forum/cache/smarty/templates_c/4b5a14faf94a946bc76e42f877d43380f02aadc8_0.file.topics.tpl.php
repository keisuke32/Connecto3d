<?php
/* Smarty version 3.1.33-dev-5, created on 2020-05-08 07:31:03
  from '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/forum/topics.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-dev-5',
  'unifunc' => 'content_5eb4fca7565138_28476313',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4b5a14faf94a946bc76e42f877d43380f02aadc8' => 
    array (
      0 => '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/forum/topics.tpl',
      1 => 1588918331,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5eb4fca7565138_28476313 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>
            

    <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_10561936685eb4fca74ff160_42734197', 'body');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, 'layout.tpl');
}
/* {block 'body'} */
class Block_10561936685eb4fca74ff160_42734197 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_10561936685eb4fca74ff160_42734197',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.load_block.php','function'=>'smarty_modifier_load_block',),1=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.abbrev_no.php','function'=>'smarty_modifier_abbrev_no',),2=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/function.get_children.php','function'=>'smarty_function_get_children',),3=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/function.print_children.php','function'=>'smarty_function_print_children',),));
?>

    <input type="hidden" id="page_sort_option" value="newest"/>

    <div class="container" id="codo_topics_row">

    <div class="row">

        <div class="col-lg-12 codo_mobile_top_container">

            <div class="codo_icon_header d-block d-sm-none  d-none d-sm-block d-lg-none container" style="padding: 0">

                <div onclick="CODOF.toggleTopicsAndCategories()" class="col-md-12 col-12"><i class="icon-books" title="<?php echo _t("Categories");?>
"></i>
                    <span id="codo_sm_categories_text"><?php echo _t("Show Categories");?>
</span>
                    <span id="codo_sm_topics_text" style="display: none"><?php echo _t("Show topics");?>
</span>
                </div>

                <span style="display: none"
                id="icon-books-click-trans"><?php echo _t("Click the icon again to toggle between categories and topics");?>
</span>
            </div>

            <?php echo smarty_modifier_load_block("block_catgory_list_before");?>

            <?php if ($_smarty_tpl->tpl_vars['can_search']->value) {?>
            <div id="codo_mobile_top_search" class="col-sm-12">
                <input type="text" placeholder="<?php echo _t('Search');?>
"
                class="form-control codo_global_search_input"/>
                <i class="glyphicon glyphicon-search codo_topics_search_icon"
                title="Advanced search"></i>
            </div>
            <?php }?>
        </div>
        <!--all topics -->
        <div class="codo_topics col-lg-8">
            <div class="clearfix">

                <?php echo smarty_modifier_load_block("block_all_topics_before");?>


                
                <div class="codo_topics_head d-md-block d-sm-none">

                    <div class="codo_topics_start_button_div">
                        <a class="btn btn-default btn-light codo_topics_start_button" href="#" role="button"
                        onclick="codo_create_topic()"><?php echo _t("Start New Topic");?>
</a>
                    </div>
                </div>
                                <div class="codo_topics_body" id="codo_topics_body">

                    <?php if ($_smarty_tpl->tpl_vars['total_num_topics']->value > 0) {?>
                    <?php echo $_smarty_tpl->tpl_vars['topics']->value;?>

                    <?php } else { ?>
                    <div class="codo_zero_topics">
                        <?php echo _t("No topics created yet!");?>
<br/><br/>
                        <?php echo _t("Be the first to");?>
 <a
                        href="<?php echo @constant('RURI');?>
new_topic"><?php echo _t("create");?>
</a> <?php echo _t("a topic");?>

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
        </div>
        <!--end all topics -->
        <div class="codo_categories col-lg-4" id="codo_categories_sidebar">

                <div class="row" id="codo_category_all_topics" style="border-bottom:1px solid #eee;">

                    <div class="codo_categories_category col-md-12">
                        <!--<i class="icon-arrow-up"></i>-->
                        <div class="codo_category_title_header"><?php echo _t("Categories");?>
</div>
                            <!--<?php if (isset($_smarty_tpl->tpl_vars['new_topics']->value) && count($_smarty_tpl->tpl_vars['new_topics']->value)) {?>
                                <div id="codo_mark_all_read" class="codo_btn codo_mark_all_read"><?php echo _t('Mark all as read');?>
</div>
                            <?php }?>
                            <span class="codo_category_num_topics"><?php echo $_smarty_tpl->tpl_vars['total_num_topics']->value;?>
</span>-->
                        </div>
                    </div>

                    <ul id="codo_categories_ul">

                        <!--<div class="row active" id="codo_category_all_topics">
                                    <div class="codo_categories_category col-md-12">
                                            <div class="codo_category_title"></div>
                            <?php if (isset($_smarty_tpl->tpl_vars['new_topics']->value) && count($_smarty_tpl->tpl_vars['new_topics']->value)) {?>
                                    <div id="codo_mark_all_read" class="codo_btn codo_mark_all_read"><?php echo _t('Mark all as read');?>
</div>
                            <?php }?>
                            <span class="codo_category_num_topics"><?php echo $_smarty_tpl->tpl_vars['total_num_topics']->value;?>
</span>
                    </div>
                </div>-->

                <li>
                    <div class="row">

                        <div class="codo_categories_category col-md-11 col-11">
                            <a href="#">
                                <div style="padding-left: 25px"
                                class="codo_category_title codo_category_title_active"><?php echo _t("All topics");?>
</div>
                            </a>
                            <span data-toggle="tooltip" data-placement="bottom" title="<?php echo _t('No. of topics');?>
"
                            class="codo_category_num_topics codo_bs_tooltip">
                            <?php echo $_smarty_tpl->tpl_vars['total_num_topics']->value;?>

                        </span>
                    </div>
                </div>
            </li>


            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['cats']->value, 'cat');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['cat']->value) {
?>
            <li>
                <div class="row">

                    <div class="codo_categories_category col-md-11 col-11">
                        <a href="<?php echo @constant('RURI');?>
category/<?php echo rawurlencode($_smarty_tpl->tpl_vars['cat']->value->cat_alias);?>
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

                        <?php } else { ?> -
                        <?php }?>
                    </span>

                                        </div>

                    <?php if ($_smarty_tpl->tpl_vars['cat']->value->show_children == 0) {?>
                    <div class="codo_category_toggle col-md-1 col-1"><i
                        class="icon-arrow-down"></i></div>
                        <?php }?>

                    </div>
                    <?php echo smarty_function_get_children(array('cat'=>$_smarty_tpl->tpl_vars['cat']->value,'new_topics'=>$_smarty_tpl->tpl_vars['new_topics']->value),$_smarty_tpl);?>

                </li>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
            </ul>
            <?php echo smarty_modifier_load_block("block_catgory_list_after");?>


            <div class="codo_sidebar_fixed">

                <?php if ($_smarty_tpl->tpl_vars['can_search']->value) {?>
                <div id="codo_sidebar_fixed_search" class="codo_sidebar_search codo_sidebar_fixed_els">
                    <input type="text" placeholder="<?php echo _t('Search');?>
"
                    class="form-control codo_topics_search_input codo_global_search_input"/>
                    <i class="glyphicon glyphicon-search codo_topics_search_icon"
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
                <ul class="dropdown-menu dropdown-menu-right" role="menu" aria-labelledby="dropdownMenu1">

                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['cats']->value, 'cat');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['cat']->value) {
?>
                    <li class="dropdown-item" role="presentation" data-alias="<?php echo $_smarty_tpl->tpl_vars['cat']->value->cat_alias;?>
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

                <div style="border-bottom:1px solid #eee;margin:0;height:50px;">

                    <div class="codo_categories_category col-md-12">

                        <div class="codo_category_title" style="margin-top:15px;"><?php echo _t("Actions");?>
</div>

                    </div>
                </div>

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
    <button id="codo_create_topic_btn" onclick="codo_create_topic()" type="submit"
    class="codo_btn codo_btn_primary"><?php echo _t("Create new topic");?>
</button>
    </div>
    <?php }?>
    <div class="offset-md-1"></div>

    </div>
    <?php }?>

            <!-- /.modal -->
            <div class="modal fade" id='codo_report_topic'>
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title"><?php echo _t("Report topic");?>
</h4>
                            <button type="button" class="close" data-dismiss="modal"><span
                                aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            </div>
                            <div class="modal-body">
                                <p><?php echo _t("Why are you reporting this topic ?");?>
</p>

                                <p>

                                    <select class="form-control" id="codo_report_select">
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['report_types']->value, 'report');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['report']->value) {
?>
                                        <option value="<?php echo $_smarty_tpl->tpl_vars['report']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['report']->value['name'];?>
</option>
                                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    </select>
                                </p>

                                <p style="display: none" id="report_reason">
                                    <input id="report_details" class="form-control" type="text"
                                    placeholder="<?php echo _t("provide your reason");?>
"/>
                                </p>


                            </div>
                            <div class="modal-footer">
                                <div class="codo_loading" style="right: 168px;"></div>
                                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _t("Cancel");?>
</button>
                                <button onclick="CODOF.report_topic()" type="button" class="btn btn-primary"><?php echo _t("Report");?>
</button>
                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <?php echo '<script'; ?>
 type="text/javascript">

                    CODOFVAR = {
                        no_more_posts: '<?php echo _t("No more topics to display!");?>
',
                        no_posts: '<?php echo _t("No topics found matching your criteria!");?>
',
                        subcategory_dropdown: '<?php echo $_smarty_tpl->tpl_vars['subcategory_dropdown']->value;?>
',
                        num_posts_per_page: '<?php echo $_smarty_tpl->tpl_vars['num_posts_per_page']->value;?>
',
                        total: <?php echo (($tmp = @$_smarty_tpl->tpl_vars['total_num_topics']->value)===null||$tmp==='' ? 0 : $tmp);?>
,
                        last_page: '<?php echo _t("last page");?>
'
                    };

                <?php echo '</script'; ?>
>
        <link rel="stylesheet" type="text/css" href="<?php echo @constant('DURI');?>
assets/oembedget/oembed-get.css"/>
    <?php
}
}
/* {/block 'body'} */
}
