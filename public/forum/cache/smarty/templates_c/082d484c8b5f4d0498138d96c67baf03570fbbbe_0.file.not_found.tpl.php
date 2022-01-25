<?php
/* Smarty version 3.1.33-dev-5, created on 2020-11-12 06:14:24
  from '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/not_found.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-dev-5',
  'unifunc' => 'content_5facd2c08a8a80_39969606',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '082d484c8b5f4d0498138d96c67baf03570fbbbe' => 
    array (
      0 => '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/not_found.tpl',
      1 => 1588918331,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5facd2c08a8a80_39969606 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_7457981585facd2c078b1a2_06729845', 'body');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, 'layout.tpl');
}
/* {block 'body'} */
class Block_7457981585facd2c078b1a2_06729845 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'body' => 
  array (
    0 => 'Block_7457981585facd2c078b1a2_06729845',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/home/u628291831/domains/connecto3d.com/public_html/public/forum/sys/CODOF/Smarty/plugins/modifier.load_block.php','function'=>'smarty_modifier_load_block',),));
?>


    <style type="text/css">

        .codo_not_found {

            margin-top: 60px;
            background: white;
            box-shadow: 1px 1px 5px #ccc;
            padding: 20px;
        }

    </style>

    <div class="container">

        <?php echo smarty_modifier_load_block("block_not_found_before");?>
        
        <div class="codo_not_found">

            <?php echo smarty_modifier_load_block("block_not_found_start");?>


            <?php echo _t("The page you are looking for does not exists!");?>

            <?php echo smarty_modifier_load_block("block_not_found_end");?>


        </div>
        <?php echo smarty_modifier_load_block("block_not_found_after");?>


    </div>
<?php
}
}
/* {/block 'body'} */
}
