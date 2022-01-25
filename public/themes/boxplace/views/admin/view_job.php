
	 	
	 	  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
 
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h2><?=$this->lang('job')?></h2>
        </section>

        <!-- Main content -->
        <section class="content">	 	
		 <div class="row">	
          
		 <div class="col-lg-12">	 		


		 		<div class="box box-info">
                <div class="box-header">
                </div><!-- /.box-header -->
                <div class="box-body">
                 <div class="table-responsive">
        <?php foreach ($data['job'] as $JOBS) { 
			$Freelancers = array();
			$client = array();

				foreach ($data['users'] as $user) {
					if($JOBS['freelancer_id']==$user['id']){
						$Freelancers = $user;
					}
				}

				foreach ($data['users'] as $user) {
					if($JOBS['user_id']==$user['id']){
						$client = $user;
					}
				}
		?>



		<div class="cardx" >


			<table class="table table-bordered">
				<tbody>
					<tr>
						<td><?=$this->lang('job')?> #</td>
						<td><?=$JOBS['job_id'];?></td>
					</tr>
					<tr>
						<td><?=$this->lang('client')?></td>
						<td><img class="img-responsive img-circle" src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/users/<?=e($client['imagelocation'])?>" alt="Profile Picture" style="height: 100px;width: 100px;">
							<h3 class=" <?php if($Freelancers['verified']!=0){ ?>verified <?php } ?>"><?php echo $client['name'];?></h3>
						</td>
					</tr>
					<tr>
						<td><?=$this->lang('team')?></td>
						<td><img class="img-responsive img-circle" src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/users/<?=e($Freelancers['imagelocation'])?>" alt="Profile Picture" style="height: 100px;width: 100px;">
							<h3 class=" <?php if($Freelancers['verified']!=0){ ?>verified <?php } ?>"><?php echo $Freelancers['name'];?></h3>
						</td>
					</tr>
					<tr>
						<td><?=$this->lang('time')?></td>
						<td><?php echo date('d F Y H:i',strtotime($JOBS['created_at']));?></td>
					</tr>
					<tr>
						<td><?=$this->lang('service_category')?></td>
						<td><?php

						foreach ($data['services'] as $services) {
							if ($services['id']==$JOBS['service_id']) {
								echo $services['name'];
							}
						}
						?></td>
					</tr>
					<tr>
						<td><?=$this->lang('subject')?></td>
						<td><?=decrypt_text($JOBS['subject']);?></td>
					</tr>
					<tr>
						<td><?=$this->lang('description')?></td>
						<td><?=decrypt_text($JOBS['description']);?></td>
					</tr>
					<tr>
						<td><?=$this->lang('name')?></td>
						<td><?=decrypt_text($JOBS['name']);?></td>
					</tr>
					<tr>
						<td><?=$this->lang('shipping')?></td>
						<td><?=decrypt_text($JOBS['shipping']);?></td>
					</tr>
					<!-- <tr>
						<td><?=$this->lang('post_shipping')?></td>
						<td><?=decrypt_text($JOBS['post_shipping']);?></td>
					</tr> -->

					<tr>
						<td><?=$this->lang('shipping_type')?></td>
						<td><?=$JOBS['shipping_type'];?></td>
					</tr>


					<?php if ($JOBS['material']!="") { ?>
						<tr>
						<td><?=$this->lang('material')?></td>
						<td><?=decrypt_text($JOBS['material']);?></td>
					</tr>
					<?php }  ?>

					<?php if ($JOBS['type']!="") { ?>
						<tr>
						<td><?=$this->lang('type')?></td>
						<td><?=decrypt_text($JOBS['type']);?></td>
					</tr>
					<?php }  ?>

					<?php if ($JOBS['layer_height']!="") { ?>
						<tr>
						<td><?=$this->lang('layer_height')?></td>
						<td><?=decrypt_text($JOBS['layer_height']);?></td>
					</tr>
					<?php }  ?>

					<?php if ($JOBS['infil']!="") { ?>
						<tr>
						<td><?=$this->lang('infil')?></td>
						<td><?=decrypt_text($JOBS['infil']);?></td>
					</tr>
					<?php }  ?>

					<?php if ($JOBS['fininshings']!="") { ?>
						<tr>
						<td><?=$this->lang('fininshings')?></td>
						<td><?=decrypt_text($JOBS['fininshings']);?></td>
					</tr>
					<?php }  ?>

					<?php if ($JOBS['color']!="") { ?>
						<tr>
						<td><?=$this->lang('color')?></td>
						<td><?=decrypt_text($JOBS['color']);?></td>
					</tr>
					<?php }  ?>


					<?php if ($JOBS['postage']!="") { ?>
						<tr>
						<td><?=$this->lang('postage')?></td>
						<td><?=decrypt_text($JOBS['postage']);?></td>
					</tr>
					<?php }  ?>
					
					<tr>
						<td><?=$this->lang('status')?></td>
						<td><?php echo jobStatus($JOBS['status']); ?></td>
					</tr>

					<!---------------------------------------------------------->

					<?php if($JOBS['status']>0){ ?>

					<tr>
						<td><?=$this->lang('price')?></td>
						<td>
							<?php echo $JOBS['price']; ?>
						</td>
					</tr>
					<tr>
						<td><?=$this->lang('shipping')?> </td>
						<td>
							<?php echo $JOBS['shipping_f']; ?>
						</td>
					</tr>

					<tr>
						<td><?=$this->lang('days')?> </td>
						<td>
							<?php echo $JOBS['days']; ?>
						</td>
					</tr>

					<?php } ?>

					<?php if($JOBS['status']>=3){ ?>

					<tr>
						<td>Quality Assurances</td>
						<td>
							<?php echo date('d F Y H:i',strtotime($JOBS['quality_assurances'])); ?>
						</td>
					</tr>
					<?php } ?>


					<?php if($JOBS['status']>=4){ ?>
						<tr>
							<td>Tracking Number</td>
							<td>
								<?php echo $JOBS['tracking_number']; ?>

							</td>
						</tr>

						<tr>
							<td>Complete Date</td>
							<td>
								<?php echo  date('d F Y H:i',strtotime($JOBS['completed_date'])); ?>
							</td>
						</tr>


						<tr>
							<td>Review</td>
							<td>
								<?php echo decrypt_text($JOBS['review']); ?>
							</td>
						</tr>
					
					<?php } ?>



					<!---------------------------------------------------------->






					 <!---------------------------------------------------------->

					
				</tbody>
			</table>

		</div>

		<br/>



				<br/>
		 <?php if ($JOBS['tracking_number']!="") { ?>
			<div class="cardx" >
		

			<h2>Tracking</h2>

			<?php

			$trackingOBJ = tracking($JOBS['tracking_number']); 

			if ($trackingOBJ['meta']['code']==200) { 

				if (isset($trackingOBJ['data']['tracking_number'])) { ?>

					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Tracking Number</th>
								<th>Carrier code</th>
								<th>Original country</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><?php echo $trackingOBJ['data']['tracking_number']; ?></td>
								<td><?php echo $trackingOBJ['data']['carrier_code']; ?></td>
								<td><?php echo $trackingOBJ['data']['original_country']; ?></td>
								
							</tr>
						</tbody>
					</table>
					
				<?php }

				if (isset($trackingOBJ['data']['origin_info']['trackinfo'])) {

				?>

				<h3>Tracking Info</h3>

				<table class="table table-bordered">
					<thead>
						<tr>
							<td>Date</td>
							<td>StatusDescription</td>
							<td>Details</td>
							<td>status</td>
						</tr>
					</thead>
					<tbody>
						<?php  foreach ($trackingOBJ['data']['origin_info']['trackinfo'] as $tarckVAL) { ?>
							<tr>
								<td><?php echo $tarckVAL['Date']; ?></td>
								<td><?php echo $tarckVAL['StatusDescription']; ?></td>
								<td><?php echo $tarckVAL['Details']; ?></td>
								<td><?php if (isset($tarckVAL['ItemNode'])) {
									echo $tarckVAL['ItemNode'];
								}else{  echo $tarckVAL['checkpoint_status']; } ?></td>
							</tr>
						<?php } ?>
					</tbody>
				</table>

				



				
			<?php } }else{ echo 'Unsupported tracking Code'; } ?>

			

			 
         </div>
         <br/>
         <br/>
		<?php } ?>


		 <br/>
		 <?php if (count($data['job_action'])>0) { ?>
			<div class="cardx" >
		

			<h2>Actions</h2>

			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Time</th>
						<th>By</th>
						<th>Type</th>
						<th>Info</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($data['job_action'] as $Action) { ?>
						<tr>
							<td><?php echo $Action['created_at'];?></td>
							<td><?php if($Action['from_by']==0){ echo 'Team'; }else{ echo "Client";} ?></td>
							<td><?php if($Action['action_type']==0){ echo 'Action'; }else{ echo "File Send";} ?></td>
							<td>

								<?php

								if($Action['action_type']==1){

									$file = $Action['name'];


									$lower = strtolower($file);
									$expo = explode(".",$lower);
									$ext = end($expo);

									if ($ext=='obj' || $ext=='stl') {
										?>
										<iframe  height="300" style="width: 100%" src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/plugins/STL/draw.php?file=<?php echo $file;?>"></iframe>
										<?php
										
									}


									if ($ext=='jpg' || $ext=='png') {
										?>
										<img src="<?php echo $this->siteUrl().'/uploads/jobs/'.$file; ?>" class="img-fluid" >
										<?php
										
									}

									?>
									<br/>
									<a href="<?php echo $this->siteUrl().'/uploads/jobs/'.$file; ?>"> <i class="fa fa-download"></i> Download</a>

									<?php

								}

								?>

								<?php if($Action['action_type']==0){ 

									echo $Action['name'];


								} ?>


								





							</td>
						</tr>
					<?php } ?>
				</tbody>
			</table>


			 
         </div>
         <br/>
         <br/>
		<?php } ?>




		 <?php if (count($data['payments'])>0) { ?>
		 	<div class="cardx" >
				<h2>Payment</h2>
			<br>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th><?=$this->lang('payment')?> #</th>
							<th><?=$this->lang('type')?></th>
							<th><?=$this->lang('amount')?></th>
							<th><?=$this->lang('token')?> #</th>
							<th><?=$this->lang('time')?></th>
						</tr>
					</thead>
					<tbody>
						<?php foreach ($data['payments'] as $Payment) { ?>
						<tr>
							<td><?php echo $Payment['uid'];?></td>
							<td><?php echo $Payment['payment_type'];?></td>
							<td><?php echo $Payment['amount'];?></td>
							<td><?php  foreach ($data['tokens'] as $TOK) {
								if($TOK['id']==$Payment['job_token']){
									echo $TOK['uid'];
								}
							} ?></td>
							<td><?php echo date('d F Y H:i',strtotime($Payment['created_at'])); ?></td>
						</tr>
						<?php } ?>
					</tbody>
				</table>

				</div>
			
			<?php } ?>

		 
		 
		 <br>
		 <br>
		<div class="cardx" >

			

			<h2>Attachments</h2>

			<table class=" table table-bordered">
				<thead>
				<tr>
					<th>Name</th>
					<th>Preview</th>
				</tr>
				</thead>
				<tbody>
					<?php 
					$files = array();

						try {

							$files = json_decode($JOBS['files']);
							}
							catch(Exception $e) {
							  echo 'Message: ' .$e->getMessage();
							}

						foreach ($files as $file) {
							?>
							<tr>
								<td><a href="<?php echo $this->siteUrl().'/uploads/jobs/'.$file; ?>">
								<?php echo $file;?>
									</a>
								</td>
								<td>

									<?php

									$lower = strtolower($file);
									$expo = explode(".",$lower);
									$ext = end($expo);

									if ($ext=='obj' || $ext=='stl') {
										?>
										<iframe  height="300" style="width: 100%" src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/plugins/STL/draw.php?file=<?php echo $file;?>"></iframe>
										<?php
										
									}


									if ($ext=='jpg' || $ext=='png') {
										?>
										<img src="<?php echo $this->siteUrl().'/uploads/jobs/'.$file; ?>" class="img-fluid" >
										<?php
										
									}

									if ($ext!='jpg' && $ext!='png' && $ext!='obj' && $ext!='obj' ) {
										?>
										<i class="fa fa-ban"></i>
										<?php
										
									}


									?>
									

								</td>
							</tr>
							<?php
						} 
						?>
					
				</tbody>
			</table>


			<br>
			

			 
         </div><!-- /.prop-info -->	



		<?php } ?>

                  </div><!-- /.table-responsive -->
                </div><!-- /.box-body -->
              </div><!-- /.box -->
			  
          </div>
        
			 
	    </div><!-- /.row -->		  		  
	   </section><!-- /.content -->
      </div><!-- /.content-wrapper -->


 	 
	  <script>
	  $(document).on('click', '#delete_user', function (e) {
        e.preventDefault();
				  var id = $(this).data('id');
				  
		swal({
		  title: "<?=$this->lang('delete_this_record')?>?",
		  text: "<?=$this->lang('click_yes_delete')?>.",
		  icon: "warning",
		  buttons: ["Cancel!", "Yes!"],
		  dangerMode: true,
		}).then((willDelete) => {
			  if (willDelete) {    
				  
			     $.ajax({
			   		url: '<?=$this->siteUrl()?>/requests/delete_user',
			    	type: 'GET',
			       	data: 'id='+$(this).data('id'),
			       	dataType: 'json'
			     })
			     .done(function(response){
				console.log(response);
			     	swal('<?=$this->lang('deleted')?>!', response.message, response.status);
				    $('#tr'+id).fadeOut(500, function() { $('#comment'+id).remove(); });
			     })
			     .fail(function(){
					 console.log(response);
			     	swal('<?=$this->lang('oops')?>...', '<?=$this->lang('something_went_wrong')?>!', 'error');
			     });				  
				 
			  } else {
				swal("<?=$this->lang('cancelled')?>!");
			  }
       });
	  });
	  </script>	  

	 
	 <!-- ==============================================
	 Dashboard Section
	 =============================================== -->
     <section class="dashboard">
      <div class="container">
	   <div class="row">
		<div class="col-lg-12">
		
         <div class="headline">
		  <h3><?=$this->lang('view')?></h3>
		 </div>	

		
		

		
		</div><!--/ .col-lg-12 -->
	   </div><!--/ .row -->
		
	  </div><!--/ .container -->
     </section>	  