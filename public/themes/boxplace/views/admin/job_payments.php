
	 	
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
                  <table id="example1" class="table table-bordered table-striped">
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

				    foreach($data['payments'] as $row) { ?>
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
				    			<a href="<?=$this->siteUrl()?>/admin/view_job_payment?id=<?=e($row['id'])?>" class="btn btn-primary btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('view');?>"><span class="fa fa-folder-open"></span></a>
				    			&nbsp;
				    			<a href="<?=$this->siteUrl()?>/admin/remove_job_payment?id=<?=e($row['id'])?>" class="btn btn-danger btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('delete');?>"><span class="fa fa-trash"></span></a>
				    		</td>
				    		<!-- <td>
						      <a href="<?php echo $this->siteUrl().'/admin/view_subscription?id='.$row['id']; ?>" class="btn btn-success btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('view');?>"><span class="fa fa-folder-open"></span></a>
				    		</td> -->

				    	</tr>

					<?php }  ?>
                    </tbody>
                    
                  </table>
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
