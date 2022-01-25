<?php
defined('FIR') OR exit();
/**
 * The template for displaying Example Create page
 */
?>

<style type="text/css">
	.pad_10{
		padding: 10px;
	}
</style>


	 
	 <!-- ==============================================
	 Dashboard Section
	 =============================================== -->
     <section class="dashboard">
      <div class="container">
	   <div class="row">
		<div class="col-lg-12">
		
         <div class="headline">
		  <h3><?=$this->lang('invoice')?></h3>
		  <!-- <a href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/invites"><?=$this->lang('go_back')?></a> -->
		 </div>	
		 
		</div><!--/ .col-lg-12 -->
	   </div><!--/ .row -->
	   
	   <div class="row">
		 
	       <?=$this->validation()?>
		
		<div class="col-lg-12">

         <div class="add-box">

          <?php foreach ($data['subscription'] as $subscriptionVAL) { ?>


            <div class="row" style="background-color: #31558F;color: white;">

              <div class="col-md-6 col-lg-6 col-xs-6 ">
                  
                  <h1><i class="fa fa-file-text"></i></h1>
                  <h1><b>INVOICE</b></h1>
                  
                </div>
                <div class="col-md-6 col-lg-6 col-xs-6 text-right">
                  
                  <h1><b>CONNECTO3D</b></h1>
                  <p><i class="fa fa-globe"></i> https://connecto3d.com </p>
                  
                </div>
            

          </div>




          <div class="row" >

            <div class="col-md-6 col-lg-6 col-xs-6 ">
                <br>
                <p>To,</p>
                <p><b><?php echo $data['userdata'][0]['name'];?></b></p>
                <p>Email : <?php echo $data['userdata'][0]['email'];?> </p>
                <p>Address :  <?php echo decrypt_text($data['userdata'][0]['shipping_address']) ;?> </p>
                
              </div>
              <div class="col-md-6 col-lg-6 col-xs-6 text-right">
                <br>
                <p>&nbsp;</p>
                
                <p>Invoice #<br/><?php echo $subscriptionVAL['uid'];  ?></p>
                <p>Date <br/><?php echo date('Y-m-d',strtotime($subscriptionVAL['created_at']));  ?></p>
                
              </div>
            

          </div>





           <div class="row">
           	

           	<div class="col-md-12 ">
           		<h3><?=$this->lang('description')?></h3>
           		<br>
           		<table class="table table-bordered">
           			<thead>
           				<tr>
           					<th><?=$this->lang('plan')?></th>
           					<th><?=$this->lang('payment_mode')?></th>
           					<th><?=$this->lang('amount')?></th>
           					
           				</tr>
           			</thead>
           			
           				
           			
           			<tbody>
           				
           				<tr>
           					<td><?php echo $subscriptionVAL['plan_name'];  ?></td>
           					<td><?php echo $subscriptionVAL['mode'];  ?></td>
           					<td><?php echo $subscriptionVAL['amount'];  ?></td>
           				</tr>
           				
           			</tbody>
           		</table>
           		<br/>


           	</div>

           </div> 


           <div class="row">
            <div class="col-md-6" style="background-color: #BCDFF5;min-height: 200px;">
              <h3>Note</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
            </div>
            <div class="col-md-6 text-right" style="background-color: #31558F;color: white;min-height: 200px;">
              <br>
              <b><?=$this->lang('total')?></b>
              <h1><b><?php echo $subscriptionVAL['amount'];  ?></b></h1>
            </div>
           </div>


           <?php } ?>
		 </div><!--/ .add-box -->	
		

		
		</div><!--/ .col-lg-8 -->
	   </div><!--/ .row -->
		
	  </div><!--/ .container -->
     </section>	  

