<?php
/* Smarty version 3.1.33-dev-5, created on 2020-05-08 07:36:28
  from '/home/u628291831/domains/connecto3d.com/public_html/public/forum/admin/layout/templates/login.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-dev-5',
  'unifunc' => 'content_5eb4fdecc8b4b5_14099892',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9aaa22601876513553a3d6c349435fe52406c676' => 
    array (
      0 => '/home/u628291831/domains/connecto3d.com/public_html/public/forum/admin/layout/templates/login.tpl',
      1 => 1588918323,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5eb4fdecc8b4b5_14099892 (Smarty_Internal_Template $_smarty_tpl) {
?><section class="content-header" id="breadcrumb_forthistemplate_hack">
    <h1>&nbsp;</h1>
    <ol class="breadcrumb" style="float:left; left:10px;">
         <li class="breadcrumb-item"><a href="index.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
         <li class="breadcrumb-item active"><i class="fa fa-lock"></i> Login</li>
    </ol>
    
</section>



<div class="row" id="msg_cntnr">
    <div class="col-lg-4"><!-- just an empty tag so that the next div looks centeres--> </div>
    <div class="col-lg-4">
        <?php if ($_smarty_tpl->tpl_vars['msg']->value == '') {?>

        <?php } else { ?>
            <div class="alert alert-danger"><?php echo $_smarty_tpl->tpl_vars['msg']->value;?>
</div>
        <?php }?>

    </div>
</div>
<br/>


<div class="row" id="add_cat">
    <div class="col-lg-4"><!-- just an empty tag so that the next div looks centeres--> </div>
    
    <div class="col-lg-4">
        <div class="box box-primary">
            <div class="box-header" style="text-align: center">
                <img src="<?php echo @constant('A_RURI');?>
img/mstile-70x70.png" />
            </div>
            <hr/>
            <form class="box-body" action="?page=login" role="form" method="post" enctype="multipart/form-data">
               
                <input type="text" name="username"  value="" class="form-control" placeholder="<?php echo $_smarty_tpl->tpl_vars['name_placeholder']->value;?>
" required />
                <br/>
                <input type="password" name="password"  value="" class="form-control" placeholder="password" required />
                <br/>
                <input type="submit" value="Login" class="btn btn-success btn-block" />

            </form>
        </div>
    </div>

</div>
                        
            
<?php echo '<script'; ?>
 type="text/javascript">

    jQuery('input[name=username]').focus();

<?php echo '</script'; ?>
><?php }
}
