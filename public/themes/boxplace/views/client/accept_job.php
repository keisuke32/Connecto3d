<?php
defined('FIR') OR exit();
/**
 * The template for displaying Home page menu
 */
?>


	 <?php foreach ($data['job'] as $JOB) { ?>
 <br>
 <br>
 <section>
 	<div class="container">

 		<div class="row">
 			<div class="col-md-12 col-sm-12">
 				<div class="cardx">
 					
 					
 					<table class="table table-bordered">
 						<thead>
 							<tr>
 								<th><?=$this->lang('job')?> #</th>
 								<th><?=$this->lang('subject')?></th>
 								<th><?=$this->lang('token')?></th>
 								<th><?=$this->lang('amount')?></th>
 							</tr>
 						</thead>
 						<tbody>
 							<tr>
 								<td><?php echo $JOB['job_id'];?></td>
 								<td><?php echo decrypt_text($JOB['subject']);?></td>
 								<td><?php echo $data['token'][0]['uid'];?></td>
 								<td><?php echo $data['amount'];?> </td>
 							</tr>
 						</tbody>
 					</table>
 				</div>
 			</div>
 			<div class="col-md-12 col-sm-12">
 				<br/>
 				
     <!-- ==============================================
     Banner Login Section
     =============================================== -->
      <?php if($data['settings']['paypal_active'] === "2"): ?>
		   
			 <div class="payment-box">
			  <div class="payment-details">
			   <div class="payment-description">
				<h4>PayPal</h4>
				<p><?=$this->lang('purchase_via')?> PayPal.</p>
				<p><?=$this->lang('click_return_to_merchant')?>.</p>
			   </div>
			  </div><!--/ .job-box-details -->
			  <div class="payment-bid">
			   <div class="payment-bid-inner">
				<?=$data["paypal_form"]->submit_formnull_post()?>
				<?=$data["paypal_form"]->submit_paypal_post()?>
			   </div>
			  </div><!--/ .payment-bid -->	
			 </div><!--/ .payment-box -->

           <?php endif; ?>	
		   
		   <?php if($data['settings']['stripe_active'] === "2"): ?>
		   
			 <div class="payment-box">
			  <div class="payment-details">
			   <div class="payment-description">
				<h4>Stripe</h4>
				<p><?=$this->lang('purchase_via')?> Stripe.</p>
			   </div>
			  </div><!--/ .job-box-details -->
			  <div class="payment-bid">
			   <div class="payment-bid-inner">
				
			
				<form action="<?=$this->siteUrl()?>/<?=$this->client_url()?>/confirm_job_payment?id=<?php echo base64_encode($JOB['id']);?>" method="post">
				  <script src="//checkout.stripe.com/checkout.js" class="stripe-button"
						  data-key="<?=e($data["settings"]['stripe_public_key'])?>"
						  data-description="Funds Checkout"
						  data-email="<?=e($data["user"]["email"])?>"
						  data-currency="<?=e($data["currency_code"])?>"
						  data-amount="<?=e($data['amount_cents'])?>"
						  data-locale="auto"></script>
                    <?=$this->token()?>
                    <input type="hidden" name="mode" value="stripe">
               
				</form>	
				
				
			   </div>
			  </div><!--/ .payment-bid -->	
			 </div><!--/ .payment-box -->	

           <?php endif; ?>		
		   
		   <?php if($data['settings']['razorpay_active'] === "2"): ?>
		   
			 <div class="payment-box">
			  <div class="payment-details">
			   <div class="payment-description">
				<h4>Razorpay</h4>
				<p><?=$this->lang('purchase_via')?> Razorpay.</p>
				<p><?=$this->lang('this_is_for_indian_currency')?>.</p>
			   </div>
			  </div><!--/ .job-box-details -->
			  <div class="payment-bid">
			   <div class="payment-bid-inner">
		 
				<form action="<?=$this->siteUrl()?>/<?=$this->client_url()?>/confirm_job_payment?id=<?php echo base64_encode($JOB['id']);?>" method="POST">
					<input type="hidden" name="mode" value="razorpay">
				<!-- Note that the amount is in paise = 50 INR -->
				<script
					src="//checkout.razorpay.com/v1/checkout.js"
					data-key="<?=e($data["settings"]['razorpay_key_id'])?>"
					data-amount="<?=e($data['amount_cents'])?>"
					data-buttontext="Pay with Razorpay"
					data-name="<?=e($data["settings"]['sitename'])?>"
					data-description="Funds Checkout"
					data-image=""
					data-prefill.name="<?=e($data["user"]["name"])?>"
					data-prefill.email="<?=e($data["user"]["email"])?>"
					data-theme.color="#F37254"
				></script>
				<input type="hidden" value="Hidden Element" name="hidden">
                    <?=$this->token()?>
                  
				</form>	
			
			   </div>
			  </div><!--/ .payment-bid -->	
			 </div><!--/ .payment-box -->	

           <?php endif; ?>	
		   
		   
		   <?php if($data['settings']['paystack_active'] === "2"): ?>
		   
			 <div class="payment-box">
			  <div class="payment-details">
			   <div class="payment-description">
				<h4>Paystack</h4>
				<p><?=$this->lang('purchase_via')?> Paystack.</p>
				<p><?=$this->lang('this_is_for_nigerian_currency')?>.</p>
			   </div>
			  </div><!--/ .job-box-details -->
			  <div class="payment-bid">
			   <div class="payment-bid-inner">
			   
				<form >
				  <script src="//js.paystack.co/v1/inline.js"></script>
				  <button type="button" class="kafe-btn kafe-btn-danger" onclick="payWithPaystack()"> Pay with Paystack</button> 
				</form>
				 
				<script>
				  function payWithPaystack(){
					var handler = PaystackPop.setup({
					  key: '<?=e($data['settings']['paystack_key'])?>',
					  email: '<?=e($data["user"]["email"])?>',
					  amount: "<?=e($data['payment_paystack'])?>",
					  currency: "NGN",
					  ref: "<?=$data["paystack_id"]?>", // generates a pseudo-unique reference. Please replace with a reference you generated. Or remove the line entirely so our API will generate one for you
					  firstname: '<?=e($data["user"]["name"])?>',
					  lastname: '',
					  // label: "Optional string that replaces customer email"
					  metadata: {
						 custom_fields: [
							{
								display_name: "Mobile Number",
								variable_name: "mobile_number",
								value: "+2348012345678"
							}
						 ]
					  },
					  callback: function(response){
					  	$('#paystack_resp').val(JSON.stringify(response));
					  	$('#paystack_form_resp').submit();
					  },
					  onClose: function(){
					  }
					});
					handler.openIframe();
				  }
				</script>
			
			   </div>
			  </div><!--/ .payment-bid -->	
			 </div><!--/ .payment-box -->	

			 <form id="paystack_form_resp"  action="<?=$this->siteUrl()?>/<?=$this->client_url()?>/confirm_job_payment?id=<?php echo base64_encode($JOB['id']);?>" method="POST">
			 	<input type="hidden" name="mode" value="paystack">
			 	<input id="paystack_resp" type="hidden" name="data">
			 	<?=$this->token()?>
			 </form>

           <?php endif; ?>	
 </div>
</section>


<script type="text/javascript">
	
	function update_subscription(){

		console.log(response);


	}


</script>

<?php } ?>

	