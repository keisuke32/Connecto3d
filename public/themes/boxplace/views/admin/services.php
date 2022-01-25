
	 	
	 	  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
 
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h2><?=$this->lang('services')?></h2>
        </section>

        <!-- Main content -->
        <section class="content">	 	
		 <div class="row">	
          
		 <div class="col-lg-12">	 		


		 		<div class="box box-info">
		 		
                <div class="box-body">

          <!-- Custom Tabs -->
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab_1" data-toggle="tab"><?=$this->lang('services')?></a></li>
              <li><a href="#tab_material" data-toggle="tab"><?=$this->lang('material')?></a></li>
              <li><a href="#tab_type" data-toggle="tab"><?=$this->lang('type')?></a></li>
              <li><a href="#tab_layer_height" data-toggle="tab"><?=$this->lang('layer_height')?></a></li>
              <li><a href="#tab_fininshings" data-toggle="tab"><?=$this->lang('fininshings')?></a></li>
              <li><a href="#tab_color" data-toggle="tab"><?=$this->lang('color')?></a></li>
              <li><a href="#tab_infil" data-toggle="tab"><?=$this->lang('infil')?></a></li>
              <li><a href="#tab_postage" data-toggle="tab"><?=$this->lang('postage')?></a></li>

              

              

              
              
            </ul>
            <div class="tab-content">

              <div class="tab-pane active" id="tab_1">
              	<h1><?=$this->lang('services')?></h1>
              	<div class=" text-right">
                	<a class="btn btn-info" href="<?php echo $this->siteUrl();?>/admin/add_service"><i class="fa fa-plus"></i> <?=$this->lang('new')?></a>
                </div><!-- /.box-header -->
              	<br>
              	
                


                <div class="table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                       <th>#</th>
					   <th><?=$this->lang('name')?></th>
					   <th><?=$this->lang('team')?></th>
					   <th><?=$this->lang('material')?></th>
					   <th><?=$this->lang('type')?></th>
					   <th><?=$this->lang('layer_height')?></th>
					   <th><?=$this->lang('infil')?></th>
					   <th><?=$this->lang('fininshings')?></th>
					   <th><?=$this->lang('color')?></th>
					   <th><?=$this->lang('postage')?></th>
					   <th><?=$this->lang('status')?></th>
					   <th><?=$this->lang('time')?></th>
					   <th><?=$this->lang('action')?></th>
                      </tr>
                    </thead>
                    <tbody>
				    <?php 

				    $x = 1;

				    foreach($data['services'] as $row) { 

			$material = array();
	 		$type = array();
	 		$layer_height = array();
	 		$infil = array();
	 		$fininshings = array();
	 		$color = array();




 		try {

 		$material =  json_decode($row['material']);
 		$type = json_decode($row['type']);
 		$layer_height = json_decode($row['layer_height']);
 		$infil = json_decode($row['infil']);
 		$fininshings = json_decode($row['fininshings']);
 		$color = json_decode($row['color']);
 		$postage = json_decode($row['postage']);

		}
		catch(Exception $e) {

			
		}

				    	?>
				    	<tr>
				    		<td><?php echo $x++;?></td>
				    		<td><?php echo $row['name'];?></td>
				    		<td><?php 

				    		foreach ($data['freelancers'] as $freelancersVAL) {
				    			if ($freelancersVAL['id']==$row['freelancer']) {
				    				echo $freelancersVAL['name'];
				    			}
				    		}

				    		?></td>
				    		
				    		<td><?php echo ($material ? implode("<br/>", $material) : "");?></td>
                <td><?php echo ($type ? implode("<br/>", $type) : "");?></td>
                <td><?php echo ($layer_height ? implode("<br/>", $layer_height) : "");?></td>
                <td><?php echo ($infil ? implode("<br/>", $infil) : "");?></td>
                <td><?php echo ($fininshings ? implode("<br/>", $fininshings) : "");?></td>
                <td><?php echo ($color ? implode("<br/>", $color) : "");?></td>
                <td><?php echo ($postage ? implode("<br/>", $postage) : "");?></td>
				    		
				    		<td>
				    		<?php if($row['status']==0){ ?>
				    			<b class="text-danger"><?=$this->lang('disabled')?></b>
				    		<?php } ?>
				    		<?php if($row['status']==1){ ?>
				    			<b class="text-success"><?=$this->lang('active')?></b>
				    		<?php } ?>
				    		</td>
				    		<td><?php echo $row['created_at'];?></td>
				    		<td>
						      <a href="<?php echo $this->siteUrl().'/admin/edit_service?id='.$row['id']; ?>" class="btn btn-success btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('edit');?>"><span class="fa fa-edit"></span></a>
						      &nbsp;

						      <a href="<?php echo $this->siteUrl().'/admin/delete_service?id='.$row['id']; ?>" class="btn btn-danger btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('delete');?>"><span class="fa fa-trash"></span></a>
				    		</td>
				    	</tr>

					<?php }  ?>
                    </tbody>
                    
                  </table>
                  </div><!-- /.table-responsive -->


              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_material">
              	<h1><?=$this->lang('material')?></h1>
              	<div class=" text-right">
                	<a class="btn btn-info" href="<?php echo $this->siteUrl();?>/admin/add_subs?scope=service_material"><i class="fa fa-plus"></i> <?=$this->lang('new')?></a>
                </div><!-- /.box-header -->
              	<br>
                <div class="table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                       <th>#</th>
          					   <th><?=$this->lang('name')?></th>
                       <th style="width: 70%;"><?=$this->lang('content')?></th>
          					   <th><?=$this->lang('time')?></th>
          					   <th><?=$this->lang('action')?></th>
                      </tr>
                    </thead>
                    <tbody>
				    <?php 

				    $x = 1;

				    foreach($data['service_material'] as $row) { ?>
				    	<tr>
				    		<td><?php echo $x++;?></td>
				    		<td><?php echo $row['name'];?></td>
                <td><?php echo $row['content'];?></td>
				    		<td><?php echo $row['created_at'];?></td>
				    		<td>

                  <a href="<?php echo $this->siteUrl().'/admin/edit_service_sub?id='.$row['id']; ?>&type=service_material" class="btn btn-success btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('edit');?>"><span class="fa fa-edit"></span></a>
                  &nbsp;

						      <a href="<?php echo $this->siteUrl().'/admin/delete_service_sub?id='.$row['id']; ?>&type=service_material" class="btn btn-danger btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('delete');?>"><span class="fa fa-trash"></span></a>
				    		</td>
				    	</tr>

					<?php }  ?>
                    </tbody>
                    
                  </table>
                  </div><!-- /.table-responsive -->
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_type">
              	<h1><?=$this->lang('type')?></h1>
              	<div class=" text-right">
                	<a class="btn btn-info" href="<?php echo $this->siteUrl();?>/admin/add_subs?scope=service_type"><i class="fa fa-plus"></i> <?=$this->lang('new')?></a>
                </div><!-- /.box-header -->
              	<br>
                <div class="table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                       <th>#</th>
					   <th><?=$this->lang('name')?></th>
					   <th><?=$this->lang('time')?></th>
					   <th><?=$this->lang('action')?></th>
                      </tr>
                    </thead>
                    <tbody>
				    <?php 

				    $x = 1;

				    foreach($data['service_type'] as $row) { ?>
				    	<tr>
				    		<td><?php echo $x++;?></td>
				    		<td><?php echo $row['name'];?></td>
				    		<td><?php echo $row['created_at'];?></td>
				    		<td>
                  <a href="<?php echo $this->siteUrl().'/admin/edit_service_sub?id='.$row['id']; ?>&type=service_type" class="btn btn-success btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('edit');?>"><span class="fa fa-edit"></span></a>
                  &nbsp;
						      <a href="<?php echo $this->siteUrl().'/admin/delete_service_sub?id='.$row['id']; ?>&type=service_type" class="btn btn-danger btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('delete');?>"><span class="fa fa-trash"></span></a>
				    		</td>
				    	</tr>

					<?php }  ?>
                    </tbody>
                    
                  </table>
                  </div><!-- /.table-responsive -->
              </div>
              <!-- /.tab-pane -->
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_layer_height">
                <h2><?=$this->lang('layer_height')?></h2>
                <div class="text-right">
                	<a class="btn btn-info" href="<?php echo $this->siteUrl();?>/admin/add_subs?scope=service_layer_height"><i class="fa fa-plus"></i> <?=$this->lang('new')?></a>
                </div><!-- /.box-header -->
                <br/>
                <div class="table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                       <th>#</th>
					   <th><?=$this->lang('name')?></th>
					   <th><?=$this->lang('time')?></th>
					   <th><?=$this->lang('action')?></th>
                      </tr>
                    </thead>
                    <tbody>
				    <?php 

				    $x = 1;

				    foreach($data['service_layer_height'] as $row) { ?>
				    	<tr>
				    		<td><?php echo $x++;?></td>
				    		<td><?php echo $row['name'];?></td>
				    		<td><?php echo $row['created_at'];?></td>
				    		<td>
                  <a href="<?php echo $this->siteUrl().'/admin/edit_service_sub?id='.$row['id']; ?>&type=service_layer_height" class="btn btn-success btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('edit');?>"><span class="fa fa-edit"></span></a>
                  &nbsp;
						      <a href="<?php echo $this->siteUrl().'/admin/delete_service_sub?id='.$row['id']; ?>&type=service_layer_height" class="btn btn-danger btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('delete');?>"><span class="fa fa-trash"></span></a>
				    		</td>
				    	</tr>

					<?php }  ?>
                    </tbody>
                    
                  </table>
                  </div><!-- /.table-responsive -->
              </div>
              <!-- /.tab-pane -->
                            <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_fininshings">
                <h2><?=$this->lang('fininshings')?></h2>
                <div class="box-header text-right">
                	<a class="btn btn-info" href="<?php echo $this->siteUrl();?>/admin/add_subs?scope=service_fininshings"><i class="fa fa-plus"></i> <?=$this->lang('new')?></a>
                </div><!-- /.box-header -->
                <br/>
                <div class="table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                       <th>#</th>
					   <th><?=$this->lang('name')?></th>
					   <th><?=$this->lang('time')?></th>
					   <th><?=$this->lang('action')?></th>
                      </tr>
                    </thead>
                    <tbody>
				    <?php 

				    $x = 1;

				    foreach($data['service_fininshings'] as $row) { ?>
				    	<tr>
				    		<td><?php echo $x++;?></td>
				    		<td><?php echo $row['name'];?></td>
				    		<td><?php echo $row['created_at'];?></td>
				    		<td>
                  <a href="<?php echo $this->siteUrl().'/admin/edit_service_sub?id='.$row['id']; ?>&type=service_fininshings" class="btn btn-success btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('edit');?>"><span class="fa fa-edit"></span></a>
                  &nbsp;
						      <a href="<?php echo $this->siteUrl().'/admin/delete_service_sub?id='.$row['id']; ?>&type=service_fininshings" class="btn btn-danger btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('delete');?>"><span class="fa fa-trash"></span></a>
				    		</td>
				    	</tr>

					<?php }  ?>
                    </tbody>
                    
                  </table>
                  </div><!-- /.table-responsive -->

              </div>
              <!-- /.tab-pane -->
                            <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_color">
              	<h2><?=$this->lang('color')?></h2>
                <div class=" text-right">
                	<a class="btn btn-info" href="<?php echo $this->siteUrl();?>/admin/add_subs?scope=service_color"><i class="fa fa-plus"></i> <?=$this->lang('new')?></a>
                </div>
                <br/>
                <div class="table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                       <th>#</th>
					   <th><?=$this->lang('name')?></th>
					   <th><?=$this->lang('time')?></th>
					   <th><?=$this->lang('action')?></th>
                      </tr>
                    </thead>
                    <tbody>
				    <?php 

				    $x = 1;

				    foreach($data['service_color'] as $row) { ?>
				    	<tr>
				    		<td><?php echo $x++;?></td>
				    		<td><?php echo $row['name'];?></td>
				    		<td><?php echo $row['created_at'];?></td>
				    		<td>
                  <a href="<?php echo $this->siteUrl().'/admin/edit_service_sub?id='.$row['id']; ?>&type=service_color" class="btn btn-success btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('edit');?>"><span class="fa fa-edit"></span></a>
                  &nbsp;
						      <a href="<?php echo $this->siteUrl().'/admin/delete_service_sub?id='.$row['id']; ?>&type=service_color" class="btn btn-danger btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('delete');?>"><span class="fa fa-trash"></span></a>
				    		</td>
				    	</tr>

					<?php }  ?>
                    </tbody>
                    
                  </table>
                  </div><!-- /.table-responsive -->

              </div>
              <!-- /.tab-pane -->
                            <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_infil">
                <h2><?=$this->lang('infil')?></h2>
                <div class="text-right">
                	<a class="btn btn-info" href="<?php echo $this->siteUrl();?>/admin/add_subs?scope=service_infil"><i class="fa fa-plus"></i> <?=$this->lang('new')?></a>
                </div>
                <br/>
                <div class="table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                       <th>#</th>
					   <th><?=$this->lang('name')?></th>
					   <th><?=$this->lang('time')?></th>
					   <th><?=$this->lang('action')?></th>
                      </tr>
                    </thead>
                    <tbody>
				    <?php 

				    $x = 1;

				    foreach($data['service_infil'] as $row) { ?>
				    	<tr>
				    		<td><?php echo $x++;?></td>
				    		<td><?php echo $row['name'];?></td>
				    		<td><?php echo $row['created_at'];?></td>
				    		<td>
                  <a href="<?php echo $this->siteUrl().'/admin/edit_service_sub?id='.$row['id']; ?>&type=service_infil" class="btn btn-success btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('edit');?>"><span class="fa fa-edit"></span></a>
                  &nbsp;
						      <a href="<?php echo $this->siteUrl().'/admin/delete_service_sub?id='.$row['id']; ?>&type=service_infil" class="btn btn-danger btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('delete');?>"><span class="fa fa-trash"></span></a>
				    		</td>
				    	</tr>

					<?php }  ?>
                    </tbody>
                    
                  </table>
                  </div>


              </div>
              <!-- /.tab-pane -->
                            <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_postage">
              	<h2><?=$this->lang('postage')?></h2>
                <div class="text-right">
                	<a class="btn btn-info" href="<?php echo $this->siteUrl();?>/admin/add_subs?scope=service_postage"><i class="fa fa-plus"></i> <?=$this->lang('new')?></a>
                </div>
                <br/>
                <div class="table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                       <th>#</th>
					   <th><?=$this->lang('name')?></th>
					   <th><?=$this->lang('time')?></th>
					   <th><?=$this->lang('action')?></th>
                      </tr>
                    </thead>
                    <tbody>
				    <?php 

				    $x = 1;

				    foreach($data['service_postage'] as $row) { ?>
				    	<tr>
				    		<td><?php echo $x++;?></td>
				    		<td><?php echo $row['name'];?></td>
				    		<td><?php echo $row['created_at'];?></td>
				    		<td>
                  <a href="<?php echo $this->siteUrl().'/admin/edit_service_sub?id='.$row['id']; ?>&type=service_postage" class="btn btn-success btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('edit');?>"><span class="fa fa-edit"></span></a>
                  &nbsp;
						      <a href="<?php echo $this->siteUrl().'/admin/delete_service_sub?id='.$row['id']; ?>&type=service_postage" class="btn btn-danger btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('delete');?>"><span class="fa fa-trash"></span></a>
				    		</td>
				    	</tr>

					<?php }  ?>
                    </tbody>
                    
                  </table>
                  </div>
              </div>
              <!-- /.tab-pane -->
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_cccccccccccc">
                Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                It has survived not only five centuries, but also the leap into electronic typesetting,
                remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset
                sheets containing Lorem Ipsum passages, and more recently with desktop publishing software
                like Aldus PageMaker including versions of Lorem Ipsum.
              </div>
              <!-- /.tab-pane -->
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_cccccccccccc">
                Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                It has survived not only five centuries, but also the leap into electronic typesetting,
                remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset
                sheets containing Lorem Ipsum passages, and more recently with desktop publishing software
                like Aldus PageMaker including versions of Lorem Ipsum.
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- nav-tabs-custom -->
        

                 
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
