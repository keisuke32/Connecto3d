<?php
/* Smarty version 3.1.33-dev-5, created on 2020-05-08 07:36:07
  from '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/user/profile/edit.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-dev-5',
  'unifunc' => 'content_5eb4fdd74d2271_68836969',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2ffdfe4a3b01c8865589fdf6c52a0561f683b20a' => 
    array (
      0 => '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/user/profile/edit.tpl',
      1 => 1588918331,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:forum/notification_level.tpl' => 4,
  ),
),false)) {
function content_5eb4fdd74d2271_68836969 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_20287346505eb4fdd746c0b1_23405717', 'body');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, 'layout.tpl');
}
/* {block 'body'} */
class Block_20287346505eb4fdd746c0b1_23405717 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_20287346505eb4fdd746c0b1_23405717',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.load_block.php','function'=>'smarty_modifier_load_block',),1=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/function.match_option.php','function'=>'smarty_function_match_option',),2=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/function.match_switch.php','function'=>'smarty_function_match_switch',),3=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.get_preference.php','function'=>'smarty_modifier_get_preference',),4=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.abbrev_no.php','function'=>'smarty_modifier_abbrev_no',),5=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.get_pretty_time.php','function'=>'smarty_modifier_get_pretty_time',),));
?>



    <div class="container-fluid top-custom-container-profile">
        <div class="container">
            <div class="row">
                <div class="col-md-1">

                    <img draggable="false" class="img-rounded profile-avatar-img" src="<?php echo $_smarty_tpl->tpl_vars['user']->value->avatar;?>
" />
                </div>
                <div class="codo_username col-md-6 col-sm-12 codo-username-profile">
                    <h4><?php echo $_smarty_tpl->tpl_vars['user']->value->username;?>
</h4>
                    <p><?php echo $_smarty_tpl->tpl_vars['user']->value->signature;?>

                    </p>
                </div>
            </div>

        </div>
    </div>
    <div class="container" style="padding-top:0px">
        <ul class="nav nav-tabs" id="profile_tabs" role="tablist">
            <li class="nav-item">
                <a class="nav-link" href="index.php?u=user/profile"><?php echo _t("Overview");?>
</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="#edit" role="tab" data-toggle="tab"><?php echo _t("Edit Account");?>
</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#preferences" role="tab" data-toggle="tab"><?php echo _t("Preference");?>
</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#subscriptions" role="tab" data-toggle="tab"><?php echo _t("Subscription");?>
</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#notifications" role="tab" data-toggle="tab"><?php echo _t("Notification");?>
</a>
            </li>
        </ul>


        <div class="row">

                <?php echo smarty_modifier_load_block("block_profile_edit_before");?>


             <div class="col-md-8 col-sm-12">
                 <div id="profile_edit_status" class="codo_notification" style="display: none"></div>
               <div class="tab-content">

                <div class="tab-pane fade active show" id="edit">


                    <?php echo smarty_modifier_load_block("block_profile_edit_details_before");?>


                    <div class="codo_edit_profile">

                        <?php echo smarty_modifier_load_block("block_profile_edit_details_start");?>


                        <?php if (isset($_smarty_tpl->tpl_vars['file_upload_error']->value)) {?>

                            <div class="codo_notification codo_notification_error"><?php echo $_smarty_tpl->tpl_vars['file_upload_error']->value;?>
</div>
                        <?php }?>

                        <?php if (isset($_smarty_tpl->tpl_vars['user_profile_edit']->value) && $_smarty_tpl->tpl_vars['user_profile_edit']->value) {?>
                            <div class="codo_notification codo_notification_success"><?php echo _t("user profile edits saved successfully");?>
</div>
                        <?php }?>


                        <form action="<?php echo @constant('RURI');?>
user/profile/<?php echo $_smarty_tpl->tpl_vars['user']->value->id;?>
/edit" method="POST" enctype="multipart/form-data" class="form-horizontal" role="form">
                        <span class="mdi mdi-checkbox-multiple-marked"></span>
                        <div class="codo_edit_profile_title">
                            <div class=""><span>Edit Profile</span></div>
                            <div style="float: right" class="col-md-6">
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="codo_btn codo_btn_primary"><?php echo _t("Save Changes");?>
</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="">

                          <div class="col-12 col-sm-6 col-md-8">


                              <div class="form-group">

                                  <label for="username"
                                         class="control-label profile-edit-label"><?php echo _t("username");?>
</label>
                                    <input type="text" name="username" class="codo_input codo_input_disabled" id="username"  value="<?php echo $_smarty_tpl->tpl_vars['user']->value->username;?>
" disabled="">
                            </div>
                            <div class="form-group">
                                <label for="display_name" class="control-label profile-edit-label"><?php echo _t("display name");?>
</label>
                                <input type="text" name="name" class="codo_input" id="codo_display_name" placeholder="" value="<?php echo $_smarty_tpl->tpl_vars['user']->value->name;?>
">
                            </div>



                            <div class="form-group">
                                <label for="display_name" class="control-label profile-edit-label-normal"><?php echo _t("signature");?>
</label>
                                <textarea name="signature" maxlength="<?php echo $_smarty_tpl->tpl_vars['signature_char_lim']->value;?>
" id="codo_signature_textarea" class="codo_input"><?php echo $_smarty_tpl->tpl_vars['user']->value->signature;?>
</textarea>
                                <span id="codo_countdown_signature_characters"><?php echo $_smarty_tpl->tpl_vars['signature_char_lim']->value;?>
</span>

                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['custom_fields']->value, 'field');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['field']->value) {
?>


                                <div class="form-group" id="custom_field_<?php echo $_smarty_tpl->tpl_vars['field']->value['id'];?>
">

                                    <?php if ($_smarty_tpl->tpl_vars['field']->value['title']) {?>
                                        <label class="control-label" for="<?php echo $_smarty_tpl->tpl_vars['field']->value['title'];?>
" ><?php echo $_smarty_tpl->tpl_vars['field']->value['title'];?>
</label>
                                    <?php }?>
                                <div>

                                        <?php if ($_smarty_tpl->tpl_vars['field']->value['type'] == 'input') {?>
                                            <input value="<?php echo $_smarty_tpl->tpl_vars['field']->value['def_val'];?>
" class="codo_input" type="<?php echo $_smarty_tpl->tpl_vars['field']->value['input_type'];?>
" name="input_<?php echo $_smarty_tpl->tpl_vars['field']->value['id'];?>
" placeholder="<?php ob_start();
echo $_smarty_tpl->tpl_vars['field']->value['title'];
$_prefixVariable1 = ob_get_clean();
echo _t($_prefixVariable1);?>
"
                                                   <?php if (!($_smarty_tpl->tpl_vars['field']->value['input_length'] == 0)) {?> maxlength="<?php echo $_smarty_tpl->tpl_vars['field']->value['input_length'];?>
"<?php }?>
                                                   <?php if ($_smarty_tpl->tpl_vars['field']->value['is_mandatory']) {?>required=""<?php }?>/>

                                        <?php } else { ?>

                                            <?php if ($_smarty_tpl->tpl_vars['field']->value['type'] == 'radio') {?>
                                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['field']->value['data']['options'], 'text');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['text']->value) {
?>

                                                    <div class="radio">
                                                        <label>
                                                            <input
                                                                <?php if ($_smarty_tpl->tpl_vars['field']->value['def_val'] == $_smarty_tpl->tpl_vars['text']->value) {?>checked="checked"<?php }?>
                                                                    <?php if ($_smarty_tpl->tpl_vars['field']->value['is_mandatory']) {?>required=""<?php }?>
                                                                type="radio" name="input_<?php echo $_smarty_tpl->tpl_vars['field']->value['id'];?>
"/><?php ob_start();
echo $_smarty_tpl->tpl_vars['text']->value;
$_prefixVariable2 = ob_get_clean();
echo _t($_prefixVariable2);?>

                                                        </label>
                                                    </div>
                                                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                            <?php } elseif ($_smarty_tpl->tpl_vars['field']->value['type'] == 'dropdown') {?>
                                                <select class="form-control" <?php if ($_smarty_tpl->tpl_vars['field']->value['is_mandatory']) {?>required=""<?php }?> name="input_<?php echo $_smarty_tpl->tpl_vars['field']->value['id'];?>
">

                                                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['field']->value['data']['options'], 'text');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['text']->value) {
?>

                                                        <option <?php if ($_smarty_tpl->tpl_vars['field']->value['def_val'] == $_smarty_tpl->tpl_vars['text']->value) {?>selected="selected"<?php }?>><?php ob_start();
echo $_smarty_tpl->tpl_vars['text']->value;
$_prefixVariable3 = ob_get_clean();
echo _t($_prefixVariable3);?>
</option>
                                                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                                </select>
                                            <?php } elseif ($_smarty_tpl->tpl_vars['field']->value['type'] == 'checkbox') {?>
                                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['field']->value['data']['options'], 'text');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['text']->value) {
?>

                                                    <div class="checkbox">
                                                        <label>
                                                            <input <?php if ($_smarty_tpl->tpl_vars['field']->value['def_val'] == $_smarty_tpl->tpl_vars['text']->value) {?>checked="checked"<?php }?>
                                                                   <?php if ($_smarty_tpl->tpl_vars['field']->value['is_mandatory']) {?>required=""
                                                                   <?php }?>type="checkbox"
                                                                   name="input_<?php echo $_smarty_tpl->tpl_vars['field']->value['id'];?>
[]"/><?php ob_start();
echo $_smarty_tpl->tpl_vars['text']->value;
$_prefixVariable4 = ob_get_clean();
echo _t($_prefixVariable4);?>

                                                        </label>
                                                    </div>
                                                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                            <?php } elseif ($_smarty_tpl->tpl_vars['field']->value['type'] == 'textarea') {?>

                                                <textarea <?php if ($_smarty_tpl->tpl_vars['field']->value['is_mandatory']) {?>required=""<?php }?> name="input_<?php echo $_smarty_tpl->tpl_vars['field']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['field']->value['def_val'];?>
</textarea>
                                            <?php }?>
                                        <?php }?>
                                    </div>
                                </div>
                            <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                            <div id="codo_before_save_user_profile">
                            </div>

                            <!--<div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="codo_btn codo_btn_primary"><?php echo _t("Save edits");?>
</button>
                                </div>
                            </div>-->

                            <input type="hidden" name="token" value="<?php echo $_smarty_tpl->tpl_vars['CSRF_token']->value;?>
" />


                                </div>
                          <div class="col-6 col-md-4">

                            <div class="form-group" style="margin-left:0px;">
                                <label for="display_name" class="control-label profile-edit-label-normal"><?php echo _t("Avatar");?>
</label>
                                <div class="codo_avatar">

                                    <img class="codo_avatar_img" draggable="false" src="<?php echo $_smarty_tpl->tpl_vars['user']->value->avatar;?>
" />
                                    <input class="codo_change_avatar" id="codo_avatar_file" type="file" name="avatar" />
                                    <div style="display: none" id="codo_new_avatar_selected_name"></div>
                                    <img class="codo_right_arrow" id="codo_right_arrow" src="<?php echo @constant('CURR_THEME');?>
img/arrow-right.jpg" />
                                    <img class="codo_avatar_preview" src="" id="codo_avatar_preview"/>
                                    <div class="codo_btn codo_btn_def col-12 col-sm-6 col-md-8"><?php echo _t("Change");?>
</div>
                                    <div style="text-align: right;padding-top:5px;" class="col-6 col-md-4"><span class="small text-muted">100x100</span></div>
                                </div>
                            </div>
                            </form>

                          </div>


                    <?php echo smarty_modifier_load_block("block_profile_edit_details_end");?>


                    <?php echo smarty_modifier_load_block("block_profile_edit_details_after");?>


                    <div class="codo_edit_profile" style="padding: 0">

                        <?php echo smarty_modifier_load_block("block_profile_change_pass_start");?>

                        <form class="form-horizontal" role="form">
                        <div class="codo_edit_profile_title">
                            <div class=""><span><?php echo _t("Change password");?>
</span></div>

                        </div>
                        <br/>

                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label for="curr_pass" class="control-label profile-edit-label"><?php echo _t("Current password");?>
</label>
                                    <input type="password" name="curr_pass" class="codo_input" id="curr_pass"  placeholder="<?php echo _t("Current password");?>
" required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label for="new_pass" class="control-label profile-edit-label"><?php echo _t("New password");?>
</label>
                                    <input type="password" name="new_pass" class="codo_input" id="new_pass"  placeholder="<?php echo _t("New password");?>
" required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label for="new_pass" class="control-label profile-edit-label"><?php echo _t("Confirm password");?>
</label>
                                    <input type="password" name="confirm_new_pass" class="codo_input" id="confirm_pass"  placeholder="<?php echo _t("Confirm password");?>
" required="">
                                </div>
                            </div>
                            <!--<div style="float: right"  class="col-md-6">
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button id="change_pass" type="submit" class="codo_btn codo_btn_primary"><?php echo _t("Change password");?>
</button>
                                        <span id="codo_pass_no_match_txt" class="codo_pass_no_match_txt"><?php echo _t("passwords do not match!");?>
</span>
                                    </div>
                                </div>
                            </div>-->
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <button id="change_pass" type="submit"
                                            class="codo_btn codo_btn_primary"><?php echo _t("Change password");?>
</button>
                                    <span id="codo_pass_no_match_txt"
                                          class="codo_pass_no_match_txt"><?php echo _t("passwords do not match!");?>
</span>
                                </div>
                            </div>
                        </form>
                        <?php echo smarty_modifier_load_block("block_profile_change_pass_end");?>

                    </div>

                </div>
            </div>
</div>
</form>
</div>


        <div class="tab-pane fade" id="preferences">


                <div class="codo_edit_profile">

                    <div class="codo_edit_profile_title">
                        <div class=""><span>General</span></div>
                    </div>
                    <br/>
                    <form class="form-horizontal" id="codo_form_user_preferences">
                        <fieldset>
                    <div class="codo-preferences-container">

                        <!--<legend><?php echo _t("General");?>
</legend>-->

                        <div class="form-group" style="margin-left:0px;margin-right:0px;">
                                <label for="frequency" class="profile-edit-label"><?php echo _t("Notification frequency");?>
</label>
                                <div class="">
                                    <select id="codo_notification_frequency" class="form-control">
                                        <option value="immediate" <?php echo smarty_function_match_option(array('key'=>'notification_frequency','value'=>'immediate'),$_smarty_tpl);?>
><?php echo _t("Immediate");?>
</option>
                                        <option value="daily" <?php echo smarty_function_match_option(array('key'=>'notification_frequency','value'=>'daily'),$_smarty_tpl);?>
><?php echo _t("Daily digest");?>
</option>
                                        <option value="weekly" <?php echo smarty_function_match_option(array('key'=>'notification_frequency','value'=>'weekly'),$_smarty_tpl);?>
><?php echo _t("Weekly digest");?>
</option>
                                    </select>
                                </div>
                            </div>
                                                        <div class="row form-group">
                                <label class="col-sm-4 profile-edit-label"><?php echo _t("Show real-time notifications");?>
</label>
                                <div class="col-sm-6">
                                    <!--<div id="real_time_notifications" class="codo_switch <?php echo smarty_function_match_switch(array('key'=>'real_time_notifications','value'=>'yes'),$_smarty_tpl);?>
" style="margin-top: 6px">
                                        <div class="codo_switch_toggle"></div>
                                        <span class="codo_switch_on"><?php echo _t('Yes');?>
</span>
                                        <span class="codo_switch_off"><?php echo _t('No');?>
</span>
                                    </div>-->

                                    <div class="codo-radio-btn">
                                        <ul>
                                          <li>
                                            <input type="radio" id="f-option" name="real_time_notifications">
                                            <label for="f-option">Yes</label>

                                              <div class="check"></div>
                                          </li>

                                            <li>
                                            <input type="radio" id="s-option" name="real_time_notifications">
                                            <label for="s-option">No</label>

                                                <div class="check">
                                                    <div class="inside"></div>
                                                </div>
                                          </li>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                            <div class="row form-group">
                                <label class="col-sm-4 profile-edit-label"><?php echo _t("Show desktop notifications");?>
</label>
                                <div class="col-sm-6">
                                    <!--<div id="desktop_notifications" class="codo_switch <?php echo smarty_function_match_switch(array('key'=>'desktop_notifications','value'=>'yes'),$_smarty_tpl);?>
" style="margin-top: 6px">
                                        <div class="codo_switch_toggle"></div>
                                        <span class="codo_switch_on"><?php echo _t('Yes');?>
</span>
                                        <span class="codo_switch_off"><?php echo _t('No');?>
</span>
                                    </div>-->
                                    <div class="codo-radio-btn">
                                        <ul>
                                          <li>
                                            <input type="radio" id="f-option2" name="desktop_notifications">
                                            <label for="f-option2">Yes</label>

                                              <div class="check"></div>
                                          </li>

                                            <li>
                                            <input type="radio" id="s-option2" name="desktop_notifications">
                                            <label for="s-option2">No</label>

                                                <div class="check">
                                                    <div class="inside"></div>
                                                </div>
                                          </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                    </div>

                            <div class="codo_edit_profile_title">
                    <div class=""><span>Notification level</span></div>
                    </div>

                            <div class="codo-preferences-container">
                            <!--<legend><?php echo _t("Notification level");?>
</legend>-->
                            <div class="form-group">
                                <label class="control-label profile-edit-label-normal"><?php echo _t("When I create a topic");?>
</label>
                                <div class="col-12" style="height:120px;">
                                    <?php $_smarty_tpl->_assignInScope('my_subscription_type', smarty_modifier_get_preference('notification_type_on_create_topic'));?>
                                    <?php $_smarty_tpl->_subTemplateRender('file:forum/notification_level.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('id'=>'1'), 0, false);
?>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label profile-edit-label-normal"><?php echo _t("When I reply a topic");?>
</label>
                                <div class="col-12" style="height:120px;">
                                    <?php $_smarty_tpl->_assignInScope('my_subscription_type', smarty_modifier_get_preference('notification_type_on_reply_topic'));?>
                                    <?php $_smarty_tpl->_subTemplateRender('file:forum/notification_level.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('id'=>'2'), 0, true);
?>
                                </div>
                            </div>

                                <br/><br/>
                            <div class="form-group">
                                <div class="col-sm-7">
                                    <button id="codo_update_preferences" type="submit" class="codo_btn codo_btn_primary"><?php echo _t("Update preferences");?>
</button>
                                    <span style="display: none" class="codo_load_more_bar_blue_gif"></span>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                    </div>
                </div>

            <div class="tab-pane fade" id="subscriptions">

                <div class="codo_edit_profile">
                    <fieldset>
                        <div class="codo_edit_profile_title">
                            <div class=""><span>Categories</span></div>
                        </div>
                        <!--<legend><?php echo _t("Categories");?>
</legend>-->
                        <?php $_smarty_tpl->_assignInScope('is_category', 'yes');?>
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['categories']->value, 'cat');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['cat']->value) {
?>

                            <div class="codo_subscription col-sm-12">
                                <div class="col-sm-4">
                                    <div class="codo_subscription_img">
                                        <img draggable="false" src="<?php echo @constant('DURI');
echo @constant('CAT_IMGS');
echo $_smarty_tpl->tpl_vars['cat']->value['cat_img'];?>
" />
                                    </div>

                                    <a href="<?php echo @constant('RURI');?>
topics/<?php echo $_smarty_tpl->tpl_vars['cat']->value['cat_alias'];?>
">
                                        <?php echo $_smarty_tpl->tpl_vars['cat']->value['cat_name'];?>

                                    </a>
                                </div>
                                <div class="col-sm-8">
                                    <?php $_smarty_tpl->_assignInScope('my_subscription_type', $_smarty_tpl->tpl_vars['cat']->value['type']);?>
                                    <?php ob_start();
echo '_category_';
$_prefixVariable5=ob_get_clean();
$_smarty_tpl->_subTemplateRender('file:forum/notification_level.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('id'=>$_prefixVariable5.((string)$_smarty_tpl->tpl_vars['cat']->value['cat_id'])), 0, true);
?>
                                </div>
                            </div>
                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        <!--<div class='col-md-12' style='height: 3em'></div>
                        <legend><?php echo _t("Topics");?>
</legend>-->
                        <div class="codo_edit_profile_title" style="clear:both;">
                            <div class=""><span>Topics</span></div>
                        </div>
                        <?php $_smarty_tpl->_assignInScope('is_category', 'no');?>

                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['topics']->value, 'topic');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['topic']->value) {
?>

                            <?php $_smarty_tpl->_assignInScope('avatar', ((string)@constant('DURI')).((string)@constant('PROFILE_IMG_PATH')).((string)$_smarty_tpl->tpl_vars['topic']->value['avatar']));?>

                            <?php if ($_smarty_tpl->tpl_vars['avatar']->value == null) {?>

                                <?php $_smarty_tpl->_assignInScope('avatar', ((string)@constant('DURI')).((string)@constant('DEF_AVATAR')));?>
                            <?php }?>

                            <div class="codo_subscription col-sm-12">
                                <div class="col-sm-12">
                                    <div class="codo_subscription_img">
                                        <a href="<?php echo @constant('RURI');?>
user/profile/<?php echo $_smarty_tpl->tpl_vars['topic']->value['id'];?>
">
                                            <img draggable="false" src="<?php echo $_smarty_tpl->tpl_vars['avatar']->value;?>
" />
                                        </a>
                                    </div>

                                    <a href="<?php echo @constant('RURI');?>
topic/<?php echo $_smarty_tpl->tpl_vars['topic']->value['tid'];?>
/"
                                       class="codo_subscription_a_style"><?php echo $_smarty_tpl->tpl_vars['topic']->value['title'];?>
</a>
                                </div>
                                <div class="col-sm-9">
                                    <?php $_smarty_tpl->_assignInScope('my_subscription_type', $_smarty_tpl->tpl_vars['topic']->value['type']);?>
                                    <?php ob_start();
echo '_topic_';
$_prefixVariable6=ob_get_clean();
$_smarty_tpl->_subTemplateRender('file:forum/notification_level.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('id'=>$_prefixVariable6.((string)$_smarty_tpl->tpl_vars['topic']->value['tid'])), 0, true);
?>
                                </div>
                            </div>

                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                    </fieldset>
                </div>
            </div>
            <div class="tab-pane fade" id="notifications">

                <div class='codo_edit_profile'>
                    <div id='codo_all_notifications'>

                    </div>
                </div>
            </div>


    </div>
    </div>
                                <!--admin profile-->
            <div class="col-md-4 profile-user-statistics-right">

                <div class="codo_profile profile-user-statistics-right-inner" id="">

                    <div class="codo_user_statistics">
                        <div class="row mb-2">
                            <div class="col-md-6 codo_profile_left" style="margin-top: 2px">
                                <i class="icon icon-eye2" style="font-size: 22px;"></i>
                            </div>
                            <div class="col-md-6 codo_user_info_num codo_profile_right">
                                <?php echo smarty_modifier_abbrev_no($_smarty_tpl->tpl_vars['user']->value->profile_views);?>

                            </div>
                        </div>

                        <div class="row mb-2">
                            <!--<div class="codo_red_dot">

                            </div>
                            <div class="codo_user_info_label">
                            
                                <?php echo _t("posts");?>

                            </div>-->
                            <div class="col-md-6 codo_profile_left" style="margin-top: 2px">
                                <i class="icon icon-message" style="font-size: 22px;"></i>
                            </div>
                            <div class="col-md-6 codo_user_info_num codo_profile_right">
                                <?php echo smarty_modifier_abbrev_no($_smarty_tpl->tpl_vars['user']->value->no_posts);?>

                            </div>
                        </div>
                        <div class="row mb-2">
                            <!--<div class="codo_green_dot">

                            </div>
                            <div class="codo_user_info_label">
                            
                                <?php echo _t("reputation");?>

                            </div>-->
                            <div class="col-md-6 codo_profile_left" style="margin-top: 2px">
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

                    </div>

                </div>

            </div>


        </div>
    </div>


    <?php echo '<script'; ?>
 type="text/javascript">

        CODOFVAR = {
            signature_char_limit: '<?php echo $_smarty_tpl->tpl_vars['signature_char_lim']->value;?>
',
            lim_notifications: 20,
            trans: {
                preferences: {
                    title: "<?php echo _t('Preferences');?>
", text: "<?php echo _t('Your preferences have been successfully saved');?>
"
                },
                subscriptions: {
                    title: "<?php echo _t('Subscriptions');?>
", text: "<?php echo _t('Subscription updated successfully');?>
"
                }
            }
        };

    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block 'body'} */
}
