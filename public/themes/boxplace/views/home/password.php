<?php
defined('FIR') OR exit();
/**
 * The template for displaying Home page menu
 */
?>
  
     <!-- ==============================================
	 Header
	 =============================================== -->	 
	 <header class="header-login top-page" style="background: linear-gradient( rgba(34,34,34,0.6), rgba(34,34,34,0.6) ), url('<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/<?=e($this->theme_details('bg_image_two'))?>') no-repeat center center fixed;">
      <div class="container">
	   <div class="content">
	    <div class="row">
	     <h1> <?=$this->lang('reset_password')?>.</h1>
        </div><!-- /.row -->
       </div><!-- /.content -->
	  </div><!-- /.container -->
     </header><!-- /header -->
	 
     <!-- ==============================================
     Banner Login Section
     =============================================== -->
	 <section class="banner-login">
	  <div class="container">
	  		  	
	   <div class="row">
	   
	   
	    <main class="main main-signup col-lg-12">
	     <div class="col-lg-6 col-lg-offset-3 text-center">
	   
	    <?=$this->validation();?>
				
	     	
		  <div class="form-sign">
		   <form action="<?=$this->siteUrl()?>/password/<?=e($data['url_one'])?>/<?=e($data['url_two'])?>" method="post">
		    <div class="form-head">
			</div><!-- /.form-head -->
            <div class="form-body">            	

			 <div class="form-row">
			  <div class="form-controls">
			   <input name="password" placeholder="<?=$this->lang('password')?>" class="field" type="password">
			  </div><!-- /.form-controls -->
			 </div><!-- /.form-row -->

			 <div class="form-row">
			  <div class="form-controls">
			   <input type="password" name="confirmPassword" class="field" placeholder="<?=$this->lang('confirm_password')?>">
			  </div><!-- /.form-controls -->
             </div><!-- /.form-row -->
			 
		    </div><!-- /.form-body -->

			<div class="form-foot">
			 <div class="form-actions">					
              <?=$this->token()?>
			  <input name="reset" value="<?=$this->lang('submit_to_change_password')?>" class="kafe-btn kafe-btn-default full-width" type="submit"><br></br>
			  <div class="m-15"></div>
			 </div><!-- /.form-actions -->
			</div><!-- /.form-foot -->
		   </form>
		   
		  </div><!-- /.form-sign -->
	     </div><!-- /.col-lg-6 -->
        </main>
		
	   </div><!-- /.row -->
	  </div><!-- /.container -->
     </section><!-- /section --> 	