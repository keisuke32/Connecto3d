
	 	
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

 	<?php foreach ($data['plans'] as $row) { ?>

 		<div class="box box-info">
        <div class="box-header">
        </div><!-- /.box-header -->
        <div class="box-body">
<form action="<?php echo $this->siteUrl();?>/admin/update_plan" method="post">
	<?php echo $this->token(); ?>
	<input type="hidden" name="id" value="<?php echo $row['id'];?>">
	
	   <label><?=$this->lang('name')?></label>
	   <input type="text" name="name" class="form-control" value="<?php echo $row['name']; ?>" required>
	   <br/>
	   <label><?=$this->lang('price')?></label>
	   <input type="number" step="any" name="price" class="form-control" value="<?php echo $row['price']; ?>" required>
	   <br/>
	   <label><?=$this->lang('tokens_per_month')?></label>
	   <input type="number" step="any" value="<?php echo $row['token']; ?>" name="token" min="1"  name="token" class="form-control" required>
	   <!-- <br/>
	   <label><?=$this->lang('per_token_amount')?></label> -->
	   <input type="hidden" step="any" name="per_token_amount" value="<?php echo $row['per_token_amount']; ?>"  name="token" class="form-control" required>
	   <br/>
	   <label><?=$this->lang('month')?></label>
	   <input type="number"  name="month" value="<?php echo $row['month']; ?>" class="form-control" min="1"  required>
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
