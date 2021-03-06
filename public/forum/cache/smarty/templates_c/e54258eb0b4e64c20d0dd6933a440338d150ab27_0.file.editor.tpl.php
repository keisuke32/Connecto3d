<?php
/* Smarty version 3.1.33-dev-5, created on 2020-05-21 05:34:24
  from '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/forum/editor.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33-dev-5',
  'unifunc' => 'content_5ec604d03560c7_08847738',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e54258eb0b4e64c20d0dd6933a440338d150ab27' => 
    array (
      0 => '/home/u628291831/domains/connecto3d.com/public_html/public/forum/sites/default/themes/default/templates/forum/editor.tpl',
      1 => 1588918331,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5ec604d03560c7_08847738 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="modal fade" id='codo_draft_pending'>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"><?php echo _t("Pending draft");?>
</h4>
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            </div>
            <div class="modal-body">
                <p><?php echo _t("Your previous draft for topic ");?>
<span id="codo_draft_topic_title"></span> <?php echo _t("is pending");?>
</p>
                <p><?php echo _t("If you continue, ");
echo _t("your previous draft will be discarded.");?>
 </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _t("Cancel");?>
</button>
                <button onclick="CODOF.autoDraft.recycle();" type="button" class="btn btn-primary"><?php echo _t("Continue");?>
</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<!-- Modal -->
<div class="modal animated bounceInDown" id="codo_modal_link" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel"><?php echo _t("Add link");?>
</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">

                    <input id="codo_modal_link_url" name="element_1" type="text" class="form-control" placeholder="<?php echo _t("link url");?>
" required=""/>
                    <hr/>

                    <input id="codo_modal_link_text" name="element_2" type="text" class="form-control" placeholder="<?php echo _t("link text");?>
 - <?php echo _t("optional");?>
"/>
                    <hr/>

                    <input id="codo_modal_link_title" name="element_3" type="text" class="form-control" placeholder="<?php echo _t("link title");?>
 - <?php echo _t("optional");?>
"/>
                </form>

            </div>
            <div class="modal-footer">
                <div class="codo_modal_link_cancel codo_btn codo_btn_def" data-dismiss="modal"><?php echo _t("Cancel");?>
</div>
                <div id="codo_modal_link_submit" class="codo_btn codo_btn_primary"><?php echo _t("Add");?>
</div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->



<div class="modal animated bounceInDown" id="codo_modal_upload" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel"><?php echo _t("Upload");?>
</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form class="dropzone"
                      id="codomyawesomedropzone">

                    <div class="fallback">
                        <input name="file" type="file" multiple />
                    </div>

                    <input name="token" type="hidden" value="<?php echo $_smarty_tpl->tpl_vars['CSRF_token']->value;?>
" />
                </form>

            </div>
            <div class="modal-footer">
                <div class="codo_modal_upload_cancel codo_btn codo_btn_def" data-dismiss="modal"><?php echo _t("Cancel");?>
</div>
                <div id="codo_modal_upload_submit" class="codo_btn"><?php echo _t("Upload");?>
</div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<a id="jquery-oembed-me"></a>
<?php }
}
