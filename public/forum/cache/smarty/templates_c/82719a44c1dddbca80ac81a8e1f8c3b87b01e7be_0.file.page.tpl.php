<?php
/* Smarty version 3.1.33-dev-5, created on 2020-05-22 06:33:47
  from '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/page.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-dev-5',
  'unifunc' => 'content_5ec7643bba7784_31042079',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '82719a44c1dddbca80ac81a8e1f8c3b87b01e7be' => 
    array (
      0 => '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/page.tpl',
      1 => 1588918331,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5ec7643bba7784_31042079 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_3429936305ec7643bab4bb2_05179520', 'body');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, 'layout.tpl');
}
/* {block 'body'} */
class Block_3429936305ec7643bab4bb2_05179520 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_3429936305ec7643bab4bb2_05179520',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.load_block.php','function'=>'smarty_modifier_load_block',),));
?>


    <style type="text/css">

        .codo_page_content {

            margin-top: 20px;
            background: white;
            box-shadow: 1px 1px 5px #ccc;
            padding: 20px;
            
        }
        .container {
        
            padding-top: 60px;
            overflow-x:hidden;
        }

    </style>

    <div class="container">

        <?php echo smarty_modifier_load_block("block_custom_page_before");?>


        <div class="codo_page_content">

            <?php echo smarty_modifier_load_block("block_custom_page_start");?>


            <?php echo $_smarty_tpl->tpl_vars['contents']->value;?>


            <?php echo smarty_modifier_load_block("block_custom_page_end");?>


        </div>

        <?php echo smarty_modifier_load_block("block_custom_page_after");?>


    </div>
<?php
}
}
/* {/block 'body'} */
}
