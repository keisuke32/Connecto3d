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
		  <h3><?=$this->lang('subscription')?></h3>
		 </div>	
		 
		<?php if(count($data['current'])==0){ ?> 
		  
		  <div class="prop-info text-center">
		     <img src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.$this->themePath().'/'.$this->theme()?>/assets/img/graphic.png" class="img-responsive" alt="Image" />
			 <h3><?=$this->lang('no_payments')?>.</h3>
          </div><!-- /.prop-info -->	
		  
		<?php }else{ ?> 

			 
			 <div class="withdraw-box">
			  <div class="withdraw-bid">
			   <div class="withdraw-bid-inner">
				 <h2>Plan Name</h2>
				 <h4><?php foreach($data['plans'] as $planVAL){
				 	if($data['current']['plan_id']==$planVAL['id']){
				 		echo $planVAL['name'];
				 	}
				 }  ?>
				 </h4>
			   </div>
			  </div><!--/ .withdraw-bid -->
			  <div class="withdraw-details">
			   <div class="withdraw-description">
				 <h4>Start From - <?php echo date('d F Y',strtotime($data['current']['starter'])); ?></h4>
				 <h4>Expiry Date - <?php echo date('d F Y',strtotime($data['current']['expiry'])); ?></h4>
			   </div>
			  </div><!--/ .job-box-details -->
			 </div><!--/ .withdraw-box -->
				
			  
		<?php } ?>  
		

		
		</div><!--/ .col-lg-12 -->
	   </div><!--/ .row -->
		
	  </div><!--/ .container -->
     </section>	  