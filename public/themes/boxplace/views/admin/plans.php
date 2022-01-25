
	 	
	 	  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
 
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h2><?=$this->lang('plans')?></h2>
        </section>

        <!-- Main content -->
        <section class="content">	 	
		 <div class="row">	
          
		 <div class="col-lg-12">	 		


		 		<div class="box box-info">
                <div class="box-header text-right">
                	<a class="btn btn-info" href="<?php echo $this->siteUrl();?>/admin/add_plan"><i class="fa fa-plus"></i> <?=$this->lang('new')?></a>
                </div><!-- /.box-header -->
                <div class="box-body">

                 <div class="table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                       <th>#</th>
					   <th><?=$this->lang('name')?></th>
					   <th><?=$this->lang('price')?></th>
					   <th><?=$this->lang('tokens_per_month')?> </th>
					   
					   <th><?=$this->lang('month')?></th>
					   <th><?=$this->lang('description')?></th>
					   <th><?=$this->lang('status')?></th>
					   <th><?=$this->lang('action')?></th>
                      </tr>
                    </thead>
                    <tbody>
				    <?php 

				    $x = 1;

				    foreach($data['plans'] as $row) { ?>
				    	<tr>
				    		<td><?php echo $x++;?></td>
				    		<td><?php echo $row['name'];?></td>
				    		<td><?php echo $row['price'];?></td>
				    		<td><?php echo $row['token'];?> </td>
				    		<td><?php echo $row['month'];?></td>
				    		<td><?php echo $row['description'];?></td>
				    		<td>
				    		<?php if($row['status']==0){ ?>
				    			<b class="text-danger"><?=$this->lang('disabled')?></b>
				    		<?php } ?>
				    		<?php if($row['status']==1){ ?>
				    			<b class="text-success"><?=$this->lang('active')?></b>
				    		<?php } ?>
				    		</td>
				    		<td>
				    			
						      <a href="<?php echo $this->siteUrl().'/admin/edit_plan?id='.$row['id']; ?>" class="btn btn-success btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('edit');?>"><span class="fa fa-edit"></span></a>
						      <a href="<?php echo $this->siteUrl().'/admin/remove_plan?id='.$row['id']; ?>" class="btn btn-danger btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('delete');?>"><span class="fa fa-trash"></span></a>
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
