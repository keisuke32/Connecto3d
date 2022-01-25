<?php
defined('FIR') OR exit();
/**
 * The template for displaying Home page content
 */
?>
	  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
 
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h2>Boxplace <?=$this->lang('theme')?></h2>
        </section>

        <!-- Main content -->
        <section class="content">	 	
		 <div class="row">	
		 	
		 <div class="col-lg-12">	
		  
	       <?=$this->message()?>
	       <?=$this->validation()?>
		   
          </div>
           
          <div class="col-lg-4">
          	<?php $selected = ($data['m'] == 'details') ? ' active' : ''; ?>
          	<?php $image = ($data['m'] == 'bgimage') ? ' active' : ''; ?>
          	<?php $image_two = ($data['m'] == 'bgimage_two') ? ' active' : ''; ?>
	         <div class="list-group">
	         <a href="<?=$this->siteUrl()?>/admin/boxplace/details" class="list-group-item<?php echo e($selected); ?>">
	          <em class="fa fa-fw fa-user-md text-white"></em>&nbsp;&nbsp;&nbsp; <?=$this->lang('details')?>
			 </a>
	         <a href="<?=$this->siteUrl()?>/admin/boxplace/bgimage" class="list-group-item<?php echo e($image); ?>">
	          <em class="fa fa-fw fa-image text-white"></em>&nbsp;&nbsp;&nbsp; <?=$this->lang('background_image_one')?>
			 </a>
	         <a href="<?=$this->siteUrl()?>/admin/boxplace/bgimage_two" class="list-group-item<?php echo e($image_two); ?>">
	          <em class="fa fa-fw fa-image text-white"></em>&nbsp;&nbsp;&nbsp; <?=$this->lang('background_image_two')?>
			 </a>
			 
	         </div>
          </div>
          
		 <div class="col-lg-8">
		 <?php if ($data['m'] == 'details') : ?>
		 <!-- Input addon -->
              <div class="box box-info">
                <div class="box-header">
                </div>
                <div class="box-body">
                 <form role="form" method="post" action="<?=$this->siteUrl()?>/admin/boxplace/details"> 
				 
                    <input type="hidden" name="id" class="form-control" value="<?=e($data['theme']['id'])?>" />
					
                  <div class="form-group">	
				   <label><?=$this->lang('title')?></label>
                   <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-info"></i></span>
                    <input type="text" name="title" class="form-control" value="<?=e($data['theme']['title'])?>" />
                   </div>
                    
                  </div> 
					
                  <div class="form-group">	
				   <label><?=$this->lang('sub_title')?></label>
                   <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-info"></i></span>
                    <input type="text" name="sub_title" class="form-control" value="<?=e($data['theme']['sub_title'])?>" />
                   </div>
                    
                  </div>     
					
                  <div class="form-group">	
				   <label><?=$this->lang('project_search')?></label>
                   <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-info"></i></span>
                    <input type="text" name="project_search" class="form-control" value="<?=e($data['theme']['project_search'])?>" />
                   </div>
                    
                  </div>    
					
                  <div class="form-group">	
				   <label><?=$this->lang('freelancer_search')?></label>
                   <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-info"></i></span>
                    <input type="text" name="freelancer_search" class="form-control" value="<?=e($data['theme']['freelancer_search'])?>" />
                   </div>
                    
                  </div>     
                                   
                  <div class="box-footer">
                    <?=$this->token()?>
                    <button type="submit" name="edit_details" class="kafe-btn kafe-btn-mint-small full-width"><?=$this->lang('submit')?></button>
                  </div>
                 </form> 
                </div><!-- /.box-body -->
              </div><!-- /.box -->
              
		 <?php elseif ($data['m'] == 'bgimage') : ?>
		  
		  		 <div class="box box-info">
                <div class="box-header">
                  <h3 class="box-title"><?=$this->lang('background_image_one')?></h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                 <form role="form" method="post" action="<?=$this->siteUrl()?>/admin/boxplace/bgimage" enctype="multipart/form-data"> 
				 
                    <input type="hidden" name="id" class="form-control" value="<?=e($data['theme']['id'])?>" />
                    <input type="hidden" name="bg_image_one" class="form-control" value="<?=e($data['theme']['bg_image_one'])?>" />
				
                  <div class="box-body">
				  
				  
                    <div class="form-group">
					 <div class="image text-center">
					  <img src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/<?=e($data['theme']['bg_image_one'])?>" class="img-thumbnail" width="515" height="415"/>
					 </div>
                    </div>


					<div class="form-group">
						<label><?=$this->lang('choose_image')?></label>
						<input type="file" name="photoimg" id="photoimg" class="form-control">
					</div>
				  
                  </div><!-- /.box-body -->
                  
                  <div class="box-footer">
                    <?=$this->token()?>
                    <button type="submit" name="edit_bgimage" class="kafe-btn kafe-btn-mint-small full-width"><?=$this->lang('submit')?></button>
                  </div>

                </form>
              </div><!-- /.box -->	   
              
		 <?php elseif ($data['m'] == 'bgimage_two') : ?>
		  
		  		 <div class="box box-info">
                <div class="box-header">
                  <h3 class="box-title"><?=$this->lang('background_image_two')?></h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                 <form role="form" method="post" action="<?=$this->siteUrl()?>/admin/boxplace/bgimage_two" enctype="multipart/form-data"> 
				 
                    <input type="hidden" name="id" class="form-control" value="<?=e($data['theme']['id'])?>" />
                    <input type="hidden" name="bg_image_two" class="form-control" value="<?=e($data['theme']['bg_image_two'])?>" />
				
                  <div class="box-body">
				  
				  
                    <div class="form-group">
					 <div class="image text-center">
					  <img src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/<?=e($data['theme']['bg_image_two'])?>" class="img-thumbnail" width="515" height="415"/>
					 </div>
                    </div>


					<div class="form-group">
						<label><?=$this->lang('choose_image')?></label>
						<input type="file" name="photoimg" id="photoimg" class="form-control">
					</div>
				  
                  </div><!-- /.box-body -->
                  
                  <div class="box-footer">
                    <?=$this->token()?>
                    <button type="submit" name="edit_bgimage_two" class="kafe-btn kafe-btn-mint-small full-width"><?=$this->lang('submit')?></button>
                  </div>

                </form>
              </div><!-- /.box -->	 
			 
		 <?php endif; ?>
		 
		</div><!-- /.col -->
		
        
			 
	    </div><!-- /.row -->		  		  
	   </section><!-- /.content -->
 	 
      </div><!-- /.content-wrapper -->