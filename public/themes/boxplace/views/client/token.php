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
		  <h3><?=$this->lang('token')?></h3>
		  <!-- <a href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/invites"><?=$this->lang('go_back')?></a> -->
		 </div>	
		 
		</div><!--/ .col-lg-12 -->
	   </div><!--/ .row -->
	   
	   <div class="row">
		 

		
		<div class="col-lg-12">

         <div class="add-box">
         	<table class="table table-bordered">
         		<thead>
         			<tr>
         				<th><?=$this->lang('token')?> #</th>
         				<th><?=$this->lang('subscription')?> #</th>
         				<th><?=$this->lang('expiry')?></th>
         			</tr>
         		</thead>
         		<tbody>
         			<?php foreach ($data['token'] as $Row) { 

         				$date=date_create($Row['expiry']);
							date_modify($date,"-1 month");
						$start = strtotime(date_format($date,"Y-m-d"));
						$end = strtotime($Row['expiry']);

						if (time()>$start && time()<$end) {
						

         				?>
         				<tr <?php if($Row['status']==1){ ?> class="bg-danger" <?php } ?> >
         					<td><?php echo  $Row['uid'];?></td>
         					<td><?php 

         					foreach ($data['subscription'] as $subscription) {
         						if($subscription['id']==$Row['subscription_id']){
         							echo $subscription['uid'];
         						}
         					}
         					?></td>
         					<td><?php

         					if ($Row['status']==0) {
         					 	echo  date('d F Y',strtotime($Row['expiry']));
         					 }else{
         					 	echo  $this->lang('used');
         					 	echo ' ( '.date('d F Y',strtotime($Row['updated_at'])).' )';
         					 }

         					 ?></td>
         				</tr>
         			<?php } 	
						}

						?>
         		</tbody>
         	</table>
          		 
		 </div><!--/ .add-box -->	


		
		</div><!--/ .col-lg-8 -->
	   </div><!--/ .row -->
		
	  </div><!--/ .container -->
     </section>	  