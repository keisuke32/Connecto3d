
	 	
	 	  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
 
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h2><?=$this->lang('auth_settings')?></h2>
        </section>

        <!-- Main content -->
        <section class="content">	 	
		 <div class="row">	
          
		 <div class="col-lg-12">	 		


		 		<div class="box box-info">
                <div class="box-header text-right">
 
                </div><!-- /.box-header -->
                <div class="box-body">


                	<form   action="<?php echo $this->siteUrl();?>/admin/process_update_auth" method="post"  onsubmit="auth_vaidate(event)"  >
                		<?php echo $this->token(); ?>

                		<input type="hidden" name="id" value="<?php echo $data['admin']['id']; ?>" >

                		<div class="form-group">
                			<label><?=$this->lang('name')?></label>
                			<input class="form-control" type="text" name="name" value="<?php echo $data['admin']['name']; ?>" required >
                		</div>
                		<div class="form-group">
                			<label><?=$this->lang('email')?></label>
                			<input class="form-control" type="text" name="email" value="<?php echo $data['admin']['email']; ?>" required >
                		</div>
                		<div class="form-group">
                			<label><?=$this->lang('password')?></label>
                			<input class="form-control" type="password" autocomplete="off" name="password" id="password" required>
                		</div>
                		<div class="form-group">
                			<label><?=$this->lang('confirm_password')?></label>
                			<input class="form-control" type="password" autocomplete="off"  id="cpassword" required>
                		</div>
                		<div class="form-group text-right">
                			<button class="btn btn-info">Update</button>
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




	  function auth_vaidate(eve){

	  	if ($('#password').val()!=$('#cpassword').val()){
	  		swal('<?=$this->lang('oops')?>...', 'confirm password not matched!', 'error');
	  		eve.preventDefault();
  	 return false;
	  	}



	  }
	  </script>	  
