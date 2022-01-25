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
		  <h3><?=$this->lang('service_category')?></h3>
		 </div>	

	
		 
		<div class="cardx text-center" >

			<?php foreach ($data['services'] as $services) { ?>
				<h1 style="color: #00C4CF;"><?php echo $services['name'];?></h1>
				<h3 style="color: #00C4CF;"><?php echo $this->lang('from');?> - <?php echo date('d F Y',strtotime($services['updated_at']));?></h3>
			<?php } ?>

			<?php if(count($data['services'])==0){ ?>
				<h1 class="text-danger"><?php echo $this->lang('no_service_or_category_associate_to_you');?></h1>
			<?php } ?>

			


			 
         </div><!-- /.prop-info -->	

		

		
		</div><!--/ .col-lg-12 -->
	   </div><!--/ .row -->
		
	  </div><!--/ .container -->
     </section>	  