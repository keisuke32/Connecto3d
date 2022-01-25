
	 	
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

 	<?php foreach ($data['services'] as $row) { 

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

 		<div class="box box-info">
        <div class="box-header">
        </div><!-- /.box-header -->
        <div class="box-body">
<form action="<?php echo $this->siteUrl();?>/admin/update_service" method="post">
	<?php echo $this->token(); ?>
	<input type="hidden" name="id" value="<?php echo $row['id'];?>">
	
	   <label><?=$this->lang('name')?></label>
	   <input type="text" name="name" class="form-control" value="<?php echo $row['name']; ?>" required>
	   <br/>

	   <select class="form-control" name="freelancer" required>
	   	<option value="">select</option>
	   	<?php foreach ($data['freelancers'] as $freelancersVAL) { ?>
	   	<option <?php if($row['freelancer']==$freelancersVAL['id']){ echo 'selected'; } ?> value="<?php echo $freelancersVAL['id'];?>"><?php echo $freelancersVAL['name'];?></option>
	   <?php } ?>

	   </select>
	   <br/>
	   <label><?=$this->lang('description')?></label>
	   <textarea id="summernote" required name="description" class="form-control" rows="5"><?php echo $row['description']; ?></textarea>
	   <br/>
	   	   <label><?=$this->lang('status')?></label>
	   <select class="form-control" name="status">
	   	<option <?php if($row['status']==0){ echo 'selected'; } ?> value="0"><?=$this->lang('disabled')?></option>
	   	<option <?php if($row['status']==1){ echo 'selected'; } ?> value="1"><?=$this->lang('active')?></option>
	   </select>
	   <br/>
	   	   <table class="table table-bordered">
	   	<thead>
	   		<tr>
	   			<th><?=$this->lang('material')?></th>
	   			<th><?=$this->lang('type')?></th>
	   			<th><?=$this->lang('layer_height')?></th>
	   			<th><?=$this->lang('infil')?></th>
	   			<th><?=$this->lang('fininshings')?></th>
	   			<th><?=$this->lang('color')?></th>
	   			<th><?=$this->lang('postage')?></th>
	   		</tr>
	   	</thead>
	   	<tbody>
	   		<tr>
	   			<td>
	   				<?php  foreach ($data['service_material'] as $key => $value) { ?>
	   					<div class="checkbox">
						  <label><input <?php

						  foreach ($material as $key => $valueSUB) {
						  	if ($valueSUB==$value['name']) {
						  		echo "checked ";
						  	}
						  }

						  ?> type="checkbox" name="material[]"  value="<?php echo $value['name'];?>"> <?php echo $value['name'];?></label>
						</div>
	   				<?php } ?>
	   			</td>
	   			<td>
	   				<?php  foreach ($data['service_type'] as $key => $value) { ?>
	   					<div class="checkbox">
						  <label><input  <?php

						  foreach ($type as $key => $valueSUB) {
						  	if ($valueSUB==$value['name']) {
						  		echo "checked ";
						  	}
						  }

						  ?> type="checkbox" name="type[]"  value="<?php echo $value['name'];?>"> <?php echo $value['name'];?></label>
						</div>
	   				<?php } ?>
	   			</td>
	   			<td>
	   				<?php  foreach ($data['service_layer_height'] as $key => $value) { ?>
	   					<div class="checkbox">
						  <label><input <?php

						  foreach ($layer_height as $key => $valueSUB) {
						  	if ($valueSUB==$value['name']) {
						  		echo "checked ";
						  	}
						  }

						  ?> type="checkbox" name="layer_height[]"  value="<?php echo $value['name'];?>"> <?php echo $value['name'];?></label>
						</div>
	   				<?php } ?>
	   			</td>
	   			<td>
	   				<?php  foreach ($data['service_infil'] as $key => $value) { ?>
	   					<div class="checkbox">
						  <label><input  <?php

						  foreach ($infil as $key => $valueSUB) {
						  	if ($valueSUB==$value['name']) {
						  		echo "checked ";
						  	}
						  }

						  ?> type="checkbox" name="infil[]"  value="<?php echo $value['name'];?>"> <?php echo $value['name'];?></label>
						</div>
	   				<?php } ?>
	   			</td>
	   			<td>
	   				<?php  foreach ($data['service_fininshings'] as $key => $value) { ?>
	   					<div class="checkbox">
						  <label><input <?php

						  foreach ($fininshings as $key => $valueSUB) {
						  	if ($valueSUB==$value['name']) {
						  		echo "checked ";
						  	}
						  }

						  ?> type="checkbox" name="fininshings[]"  value="<?php echo $value['name'];?>"> <?php echo $value['name'];?></label>
						</div>
	   				<?php } ?>
	   			</td>
	   			<td>
	   				<?php  foreach ($data['service_color'] as $key => $value) { ?>
	   					<div class="checkbox">
						  <label><input  <?php

						  foreach ($color as $key => $valueSUB) {
						  	if ($valueSUB==$value['name']) {
						  		echo "checked ";
						  	}
						  }

						  ?> type="checkbox" name="color[]"  value="<?php echo $value['name'];?>"> <?php echo $value['name'];?></label>
						</div>
	   				<?php } ?>
	   			</td>
	   			<td>
	   				<?php  foreach ($data['service_postage'] as $key => $value) { ?>
	   					<div class="checkbox">
						  <label><input  <?php

						  foreach ($postage as $key => $valueSUB) {
						  	if ($valueSUB==$value['name']) {
						  		echo "checked ";
						  	}
						  }

						  ?> type="checkbox" name="postage[]"  value="<?php echo $value['name'];?>"> <?php echo $value['name'];?></label>
						</div>
	   				<?php } ?>
	   			</td>
	   		</tr>
	   	</tbody>
	   </table>





	   <div class="text-right">
	   	<button class="btn btn-primary"><?=$this->lang('save')?></button>
	   </div>

</form>


           
        </div><!-- /.box-body -->
      </div><!-- /.box -->

  <?php } ?>
			  
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
