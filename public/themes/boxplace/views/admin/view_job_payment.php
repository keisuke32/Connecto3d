
	 	
	 	  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
 
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h2><?=$this->lang('job_payments')?></h2>
        </section>

        <!-- Main content -->
        <section class="content">	 	
		 <div class="row">	
          
		 <div class="col-lg-12">	 		


		 		<div class="box box-info">
                <div class="box-header text-right">

                </div><!-- /.box-header -->
                <div class="box-body">




                 <div class="table-responsive">
                  <table  class="table table-bordered table-striped">
                    <thead>
                      <tr>
                       <th>#</th>
                       <th><?=$this->lang('payment')?>#</th>
					   <th><?=$this->lang('name')?></th>
					   <th><?=$this->lang('amount')?></th>
					   <th><?=$this->lang('job')?> #</th>
					   <th><?=$this->lang('token')?> #</th>
					   <th><?=$this->lang('payment_mode')?></th>
					   <th><?=$this->lang('time')?></th>
					   <th><?=$this->lang('action')?></th>
                      </tr>
                    </thead>
                    <tbody>
				    <?php 

				    $x = 1;

				    $payments_data = array();

				    foreach($data['payments'] as $row) { 


				    	try {
				    		$payments_data = json_decode(decrypt_text($row['payment_data']));

							}
							catch(Exception $e) {
							  $payments_data = array('text'=>$row['payment_data']);
							}


				    	?>
				    	<tr>
				    		<td><?php echo $x++;?></td>
				    		<td><?php  echo $row['uid']; ?></td>
				    		<td><?php 

				    		foreach ($data['users'] as $User) {
				    			if($row['user_id']==$User['id']){
				    				echo $User['name'];

				    			}
				    		}
				    		?>
				    		</td>
				    		<td><?php  echo $row['amount']; ?></td>
				    		<td><?php  
				    		foreach ($data['jobs'] as $Jobs) {
				    			if($Jobs['id']==$row['job_id']){
				    				echo $Jobs['job_id'];
				    			}
				    		}?></td>
				    		<td>
				    			<?php

				    			foreach ($data['token'] as $Tok) {
				    				if ($Tok['id']==$row['job_token']) {
				    					echo $Tok['uid'];
				    				}
				    			}


				    			?>
				    		</td>
				    		<td><?php  echo $row['payment_type']; ?></td>
				    		
				    		<td><?php echo $row['created_at'];?></td>
				    		<td>
				    			<a href="<?=$this->siteUrl()?>/admin/remove_job_payment?id=<?=e($row['id'])?>" class="btn btn-danger btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('delete');?>"><span class="fa fa-trash"></span></a>
				    		</td>

				    	</tr>

					<?php }  ?>
                    </tbody>
                    
                  </table>


                  <h3>Payment Data</h3>

                  <table class="table table-bordered">
                  	<thead>
                  		<tr>
                  			<th>Pramemter</th>
                  			<th>Value</th>
                  		</tr>
                  	</thead>
                  	<tbody>
                  		<?php foreach ($payments_data as $key => $value) { ?>
                  		<tr>
                  			<td><?php echo $key; ?></td>
                  			<td><?php print_r($value);?></td>
                  		</tr>
                  			
                  		<?php } ?>
                  		
                  	</tbody>
                  </table>
                  </div><!-- /.table-responsive -->
                </div><!-- /.box-body -->
              </div><!-- /.box -->
			  
          </div>
        
			 
	    </div><!-- /.row -->		  		  
	   </section><!-- /.content -->
      </div><!-- /.content-wrapper -->


