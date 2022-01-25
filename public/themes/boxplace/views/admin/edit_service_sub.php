
	 	
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
        <div class="box-header">
        </div><!-- /.box-header -->
        <div class="box-body">
<form action="<?php echo $this->siteUrl();?>/admin/update_service_sub" method="post">
	<?php echo $this->token(); ?>
	<input type="hidden" name="id" value="<?php echo $data['sub_services'][0]['id'];?>">
	<input type="hidden" name="table" value="<?php echo $data['sub_service_name'];?>">
	
	   <label><?=$this->lang('name')?></label>
	   <input type="text" name="name" class="form-control" value="<?php echo $data['sub_services'][0]['name']; ?>" required>
	   <br/>

	   <?php
	   		if($data['sub_service_name'] == "service_material")
	   		{
	   ?>
	   <label><?=$this->lang('content')?></label>
	   <textarea name="content" class="form-control" rows="20"><?php echo $data['sub_services'][0]['content']; ?></textarea>
	   <br/>
	   <?php
		}
		?>

	   <div class="text-right">
	   	<button class="btn btn-primary"><?=$this->lang('update')?></button>
	   </div>

</form>


           
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
