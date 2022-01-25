<?php
/* Smarty version 3.1.33-dev-5, created on 2020-09-14 23:32:26
  from '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/user/forgot.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-dev-5',
  'unifunc' => 'content_5f5fef7a1390c5_87024491',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2c14c6bd0206e802a9d90118127408f49ad1556a' => 
    array (
      0 => '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/user/forgot.tpl',
      1 => 1588918331,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5f5fef7a1390c5_87024491 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_20880824235f5fef79f0dfa5_34815989', 'body');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, 'layout.tpl');
}
/* {block 'body'} */
class Block_20880824235f5fef79f0dfa5_34815989 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_20880824235f5fef79f0dfa5_34815989',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.load_block.php','function'=>'smarty_modifier_load_block',),));
?>


    <style type="text/css">

        #breadcrumb {
            padding: 0;
        }
    </style>

    <div id="breadcrumb" class="col-md-12">

        <div class="codo_breadcrumb_list btn-breadcrumb hidden-xs">                
            <?php echo smarty_modifier_load_block("block_breadcrumbs_before");?>

            <a href="<?php echo @constant('RURI');
echo $_smarty_tpl->tpl_vars['site_url']->value;?>
"><div><?php echo $_smarty_tpl->tpl_vars['home_title']->value;?>
</div></a>
            <a href="<?php echo @constant('RURI');?>
user/login"><div><?php echo _t("User login");?>
</div></a>
            <a href="#"><?php echo $_smarty_tpl->tpl_vars['sub_title']->value;?>
</a>
            <?php echo smarty_modifier_load_block("block_breadcrumbs_after");?>

        </div>
    </div>

    <div class="container">

        <div class="row">

            <div id='codo_new_password_resp' class='codo_notification' style="display: none"></div>

            <?php echo smarty_modifier_load_block("block_forgot_form_before");?>
  
            <div class="codo_block col-md-12">

                <?php echo smarty_modifier_load_block("block_forgot_form_start");?>
  
                <div class="row">

                    <div class="col-md-6">            
                        <input class="codo_input" type="text" id="name" maxlength="60" placeholder="<?php echo _t('username or e-mail address');?>
" required="">
                    </div>

                </div>

                <div class='row'>

                    <div class='col-md-6'>

                        <button id='req_pass' class='codo_btn codo_btn_primary'><?php echo _t('E-mail reset token');?>
</button>
                        <img id="codo_sending_mail" style="display: none" src="<?php echo @constant('CURR_THEME');?>
img/ajax-loader.gif" />
                    </div>
                </div>
                <?php echo smarty_modifier_load_block("block_forgot_form_end");?>
                  
            </div>
            <?php echo smarty_modifier_load_block("block_forgot_form_after");?>
  

        </div>
    </div>
    <?php echo '<script'; ?>
 type="text/javascript">

        function on_codo_loaded() {

            jQuery('document').ready(function ($) {

                //keep initial focus
                $('#name').focus();

                $('input').bind('keypress', function (e) {

                    var code = e.keyCode || e.which;
                    if (code === 13) { //Enter keycode

                        $('#req_pass').trigger('click');
                    }
                });


                $('#req_pass').on('click', function () {

                    $('#codo_sending_mail').show();
                    $.getJSON(
                            codo_defs.url + 'Ajax/user/login/req_pass',
                            {
                                ident: $.trim($('#name').val()),
                                token: codo_defs.token
                            },
                    function (response) {

                        $('#codo_sending_mail').hide();
                        CODOF.util.update_response_status(response, $('#codo_new_password_resp'), true);
                    }
                    );

                });


            });
        }
    <?php echo '</script'; ?>
>

<?php
}
}
/* {/block 'body'} */
}
