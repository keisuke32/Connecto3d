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
		  	  <a class="kafe-btn kafe-btn-mint" href="<?=$this->siteUrl()?>/subscription/select_plan"><?=$this->lang('upgrade_plan')?></a>
		 </div>	
		 
		<?php if(count($data['subscription'])==0){ ?> 
		  
		  <div class="prop-info text-center">
		     <img src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.$this->themePath().'/'.$this->theme()?>/assets/img/graphic.png" class="img-responsive" alt="Image" />
			 <h3><?=$this->lang('no_payments')?>.</h3>
          </div><!-- /.prop-info -->	
		  
		<?php }else{ ?> 

			<?php foreach ($data['subscription'] as $ROW) { 

				$unused = 0;


					foreach ($data['tokans'] as $Tokn) {
						$date=date_create($Tokn['expiry']);
						date_modify($date,"-1 month");
						$tokan_date = date_format($date,"Y-m-d");
						$token_start = strtotime($tokan_date);
						$token_end = strtotime($Tokn['expiry']);
						if ($ROW['id']==$Tokn['subscription_id'] &&  $token_start<time() && $token_end>time()  && $Tokn['status']==1) {
							$unused++;
						}
					}


				?>
			 
			 <div class="withdraw-box">
			  <div class="withdraw-bid">
			   <div class="withdraw-bid-inner">
				 
				 <a class="btn kafe-btn kafe-btn-mint btn-lg" href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/subscription_invoice?subscription_id=<?php echo base64_encode($ROW['id']); ?>"><i class="fa fa-file-text"></i>  <?=$this->lang('invoice')?></a>

			   </div>
			  </div><!--/ .withdraw-bid -->
			  <div class="withdraw-details">
			   <div class="withdraw-description">
			   	<h2>#<?php echo $ROW['uid']; ?></h2>

			   	<h4><?=$this->lang('name')?> - <?php echo $ROW['plan_name']; ?></h4>
				 
			   	<h4><?=$this->lang('price')?> - <?php echo $ROW['plan_price']; ?></h4>
			   	<h4><?=$this->lang('used_tokens')?> - <?php echo $unused; ?></h4>
			   	<h4><?=$this->lang('tokens_per_month')?>  - <?php echo $ROW['plan_token']; ?></h4>
			   

				 <h4><?=$this->lang('plan_start')?> - <?php echo $ROW['plan_month']; ?> <?=$this->lang('month')?> ( <?php echo date('d F Y',strtotime($ROW['starter'])); ?> ) </h4>

				 <h4><?=$this->lang('plan_end')?> - <?php echo date('d F Y',strtotime($ROW['expiry'])); ?></h4>


			   </div>
			  </div><!--/ .job-box-details -->
			 </div><!--/ .withdraw-box -->

			<?php } ?>

				
			  
		<?php } ?>  






		
		

		
		</div><!--/ .col-lg-12 -->
	   </div><!--/ .row -->
		
	  </div><!--/ .container -->
     </section>	  