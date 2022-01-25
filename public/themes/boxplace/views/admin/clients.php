
	 	
	 	  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
 
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h2><?=$this->lang('clients')?></h2>
        </section>

        <!-- Main content -->
        <section class="content">	 	
		 <div class="row">	
          
		 <div class="col-lg-12">	 		


		 		<div class="box box-info">
                <div class="box-header text-right">
                	<a class="btn btn-info" href="<?php echo $this->siteUrl();?>/admin/add_service"><i class="fa fa-plus"></i> <?=$this->lang('new')?></a>
                </div><!-- /.box-header -->
                <div class="box-body">


                 <div class="table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                       <th>#</th>
					   <th><?=$this->lang('image')?></th>
					   <th><?=$this->lang('name')?></th>
					   <th><?=$this->lang('email')?></th>
					   <th><?=$this->lang('joined')?></th>
					   <th><?=$this->lang('plan')?></th>
					   <th><?=$this->lang('plan_start')?></th>
					   <th><?=$this->lang('plan_end')?></th>
					   <th><?=$this->lang('action')?></th>
                      </tr>
                    </thead>
                    <tbody>
				    <?php 

				    $x = 1;

				    foreach($data['clients'] as $row) { 

							$date_added = strftime("%b %d, %Y, %H : %M %p ", strtotime($row["joined"])); 
							?>
							<tr id="tr<?php echo $row['id']?>">
							<td><?php echo $x++;?></td>
							<td><img src="<?php echo $this->siteUrl();?>/<?php echo PUBLIC_PATH.'/'.UPLOADS_PATH .'/admin/users/'. e($row["imagelocation"]);?>" width="50" height="30" /></td>
							<td><?php echo $row["name"];?></td>
							<td><?php echo $row["email"];?></td>
							<td><?php echo $date_added;?></td>
							<td><?php 

							if ($row["plan_data"]!=0) {
								

							$plan_id = $row["plan_data"]['plan_id'];


							foreach ($data['plans'] as $PlanVAL) {
								if($PlanVAL['id']==$plan_id){
								echo $PlanVAL['name'];
								}
							}

							}
							?>
								
							</td>
							<td><?php 

							if ($row["plan_data"]!=0) {
								echo $row["plan_data"]['starter'];
							}
							?>
								
							</td>
							<td><?php 

							if ($row["plan_data"]!=0) {

								echo $row["plan_data"]['expiry'];
								

							$plan_id = $row["plan_data"]['id'];


							}
							?>
								
							</td>
							<?php 

					    echo '<td>
					      <a href="'. $this->siteUrl() .'/admin/users/edit/details/' . e($row["userid"]) . '" class="btn btn-success btn-xs" data-toggle="tooltip" title="'. $this->lang('edit') .'"><span class="fa fa-edit"></span></a>
					      <a id="delete_user" data-id="' . e($row["id"]) . '" class="btn btn-danger btn-xs" data-toggle="tooltip" title="'. $this->lang('delete') .'"><span class="fa fa-trash"></span></a>
						  
                          </td>';
                       ?>
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
