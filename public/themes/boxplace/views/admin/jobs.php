
	 	
	 	  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
 
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h2><?=$this->lang('jobs')?></h2>
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
					   <th><?=$this->lang('job')?> #</th>
					   <th><?=$this->lang('service_category')?></th>
					   <th><?=$this->lang('client')?></th>
					   <th><?=$this->lang('freelancer')?></th>
					   <th><?=$this->lang('total')?></th>
					   <th><?=$this->lang('status')?></th>
					   <th><?=$this->lang('review_sentiment')?></th>
					   <th><?=$this->lang('time')?></th>
					   <th><?=$this->lang('action')?></th>
                      </tr>
                    </thead>
                    <tbody>
				    <?php 

				    $x = 1;

				    foreach($data['jobs'] as $row) {

				    $client = array();
				    $freelancer = array();
				    foreach ($data['users'] as $user) {

				     	if ($user['id']==$row['user_id']) {
				     		$client = $user;
				     	}
				     	if ($user['id']==$row['freelancer_id']) {
				     		$freelancer = $user;
				     	}
				     } 

				    	?>
				    	<tr>
				    		<td><?php echo $x++;?></td>
				    		<td><?php echo $row['job_id'];?></td>
				    		<td><?php 

				    		foreach ($data['services'] as $services) {
				    			if($services['id']==$row['service_id']){
				    				echo $services['name'];
				    			}
				    		}
				    		?></td>
				    		<td>
				    		<?php 
				    		if (isset($client['name'])) {
				    			echo $client['name'];
				    		}

				    		?>
				    		</td>
				    		<td>
				    		<?php 
				    		if (isset($freelancer['name'])) {
				    			echo $freelancer['name'];
				    		}

				    		?>
				    		</td>
				    		<td><?php echo $row['price']+$row['shipping_f'];?></td>
				    		<td>
				    			<?php echo jobStatus($row['status']); ?>
				    		</td>
				    		<td>
				    			<?php  if($row['review']!=""){ echo senti(decrypt_text($row['review'])); }  ?>
				    		</td>
				    		<td><?php echo date('Y-m-d H:i',strtotime($row['created_at']));?></td>
				    		<td>

				    			<?php 
				    		if ($row['nda']!="") { ?>
				    			<a href="<?=$this->siteUrl()?>/admin/nda?id=<?=e($row['id'])?>" class="btn btn-success btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('nda');?>"><span class="fa fa-handshake-o"></span></a>
				    		<?php } ?>
				    			
				    		  <a href="<?=$this->siteUrl()?>/admin/view_job?id=<?=e($row['id'])?>" class="btn btn-success btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('view');?>"><span class="fa fa-folder-open"></span></a>

				    		  <a href="<?=$this->siteUrl()?>/admin/remove_job?id=<?=e($row['id'])?>" class="btn btn-danger btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('delete');?>"><span class="fa fa-trash"></span></a>

				    		  

				    		</td>
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
