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
		  <h3><?=$this->lang('job_payments')?></h3>
		 </div>	
		 
		<?php if(count($data['payments']) == 0): ?> 
		  
		  <div class="prop-info text-center">
		     <img src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.$this->themePath().'/'.$this->theme()?>/assets/img/graphic.png" class="img-responsive" alt="Image" />
			 <h3><?=$this->lang('no_info')?>.</h3>
          </div><!-- /.prop-info -->	
		  
		<?php elseif(count($data['payments'])>0): ?> 
		
		
		   <?php foreach($data['payments'] as $Payment) { ?>  
			  
			 
			 <div class="withdraw-box">
			  <div class="withdraw-bid">
			   <div class="withdraw-bid-inner">
				 <h2><?php echo $Payment['payment_type']; ?></h2>
				 <h4><?=e($this->currency)?><?=e($Payment["amount"])?></h4>
				 <a class="btn kafe-btn kafe-btn-mint btn-lg" href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/payment_invoice?payment_id=<?php echo base64_encode($Payment['id']); ?>"><i class="fa fa-file-text"></i>  <?=$this->lang('invoice')?></a>
			   </div>
			  </div><!--/ .withdraw-bid -->
			  <div class="withdraw-details">
			   <div class="withdraw-description">
			   	<h4><?=$this->lang('payment')?> : # <?=e($Payment["uid"])?> </h4>

				 <h4><?=$this->lang('job')?> : # 
				 	<?php foreach ($data['jobs'] as $JOB) {
				 		if($JOB['id']==$Payment['job_id']){
				 			echo $JOB['job_id'];
				 		}
				 	} ?>

				 </h4>

				 <h4><?=$this->lang('token')?> : # 
				 	<?php foreach ($data['tokens'] as $TOK) {
				 	
				 		if($Payment['job_token']==$TOK['id']){
				 			echo $TOK['uid'];
				 		}
				 	} ?>

				 </h4>

				 
				 
				 <h4><?=$this->lang('time')?> : <?php echo date('d F Y H:i',strtotime($Payment['created_at'])); ?></h4>
			   </div>
			  </div><!--/ .job-box-details -->
			 </div><!--/ .withdraw-box -->
				
			  <?php } ?>	
			
			<?=$data['pagination']?>		
			  
		<?php endif; ?>  
		

		
		</div><!--/ .col-lg-12 -->
	   </div><!--/ .row -->
		
	  </div><!--/ .container -->
     </section>	  