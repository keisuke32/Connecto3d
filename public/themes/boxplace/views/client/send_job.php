<?php
defined('FIR') OR exit();
/**
 * The template for displaying Example Create page
 */
?>
		

	 
	 <!-- ==============================================
	 Dashboard Section
	 =============================================== -->
     <section class="dashboard">
      <div class="container">
	   <div class="row">
		<div class="col-lg-12">
		
         <div class="headline">
		  <h3><?=$this->lang('send_job_details')?></h3>
		  <!-- <a href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/invites"><?=$this->lang('go_back')?></a> -->
		 </div>	
		 
		</div><!--/ .col-lg-12 -->
	   </div><!--/ .row -->
	   
	   <div class="row">
		 
	       <?=$this->validation()?>
		<div class="col-lg-4">
		 
			 <div class="proposal-box">
			  <div class="proposal-img">
			   <div class="proposal-img-inner">
				 <a href="<?=$this->siteUrl()?>/<?=$this->freelancers_url()?>/portfolio/<?=e($data['freelancer']["userid"])?>/<?=e($data['freelancer']["slug"])?>">
				  <img class="img-responsive img-circle" src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/users/<?=e($data['freelancer']['imagelocation'])?>" alt="Profile Picture">
				 </a>
			   </div>
			  </div><!--/ .freelancer-box-img -->	
			  <div class="proposal-details">
			   <div class="proposal-description">
					<a href="<?=$this->siteUrl()?>/<?=$this->freelancers_url()?>/portfolio/<?=e($data['freelancer']["userid"])?>/<?=e($data['freelancer']["slug"])?>">
					<h3 class="<?=($data['freelancer']["verified"] == '1' ? ' verified' : '')?>"><?=e($data['freelancer']["name"])?></h3></a>
				  <h5> <?=$this->client_name()?></h5>
			   </div>
			  </div><!--/ .freelancer-box-details -->
			 </div><!--/ .proposal-box -->	
		 
		</div><!--/ .col-lg-4 -->
		<div class="col-lg-8">

         <div class="add-box">
           <form method="post" action="<?=$this->siteUrl()?>/<?=$this->client_url()?>/process_add_jobs" enctype="multipart/form-data">
           	<input type="hidden" name="xid" value="<?php echo($data['freelancer']["id"]); ?>">
				 
			  <input type="hidden" name="freelancerid" class="form-control" value="<?=e($data['freelancer']["userid"])?>" />
			  <input type="hidden" name="freelancer_slug" class="form-control" value="<?=e($data['freelancer']["slug"])?>" />
		   
			  <div class="form-group">	
			    <label><?=$this->lang('subject')?></label>
			    <input type="text" name="subject" class="form-control" required>
			  </div> 

			  <div class="form-group">	
			    <label><?=$this->lang('description')?></label>
                 <textarea id="summernote" name="description" class="form-control" rows="5" placeholder="<?=$this->lang('description')?>" required ></textarea>	
              </div>

              <div class="form-group">	
			    <label><?=$this->lang('name')?></label>
			    <input type="text" name="name" class="form-control" required>
			  </div>

			  <div class="form-group">	
			    <label><?=$this->lang('shipping')?></label>
			    <input type="text" name="shipping" class="form-control" required>
			  </div>

			  <div class="form-group">	
			    <label><?=$this->lang('attachments')?></label>
			    <input class="form-control" name="userfile[]" type="file" multiple="multiple" />
			  </div>

			  
			  
		   
			  
              <?=$this->token()?>
              <button type="submit" name="invite_freelancer" class="kafe-btn kafe-btn-mint full-width"><?=$this->lang('submit')?></button>
			  
           </form>		 
		 </div><!--/ .add-box -->	
		

		
		</div><!--/ .col-lg-8 -->
	   </div><!--/ .row -->
		
	  </div><!--/ .container -->
     </section>	  