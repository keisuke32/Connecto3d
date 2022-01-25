
	 	
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
        <div class="box-header">
        </div><!-- /.box-header -->
        <div class="box-body">
<form action="<?php echo $this->siteUrl();?>/admin/insert_plan" method="post">
	<?php echo $this->token(); ?>
	<input type="hidden" name="id" value="<?php echo $row['id'];?>">
	
	   <label><?=$this->lang('name')?></label>
	   <input type="text" name="name" class="form-control"  required="">
	   <br/>
	   <label><?=$this->lang('price')?> (<?=$this->lang('plan')?>)</label>
	   <input type="number" step="any" name="price" class="form-control" required>
	   <br/>
	   
	   <label><?=$this->lang('month')?></label>
	   <input type="number"  name="month" class="form-control" min="1"  required>
	   <br/>
	   <label> <?=$this->lang('tokens_per_month')?></label>
	   <input type="number" step="any" name="token" min="1"  name="token" class="form-control" required>
	   <!-- <br/>
	   <label><?=$this->lang('per_token_amount')?></label> -->
	   <input type="hidden" step="any" name="per_token_amount" value="0"  name="token" class="form-control" required>
	   <br/>
	   <label><?=$this->lang('description')?></label>
	   <textarea id="summernote" name="description" class="form-control" required rows="5"></textarea>
	   <br/>
	   <label><?=$this->lang('status')?></label>
	   <select class="form-control" name="status">
	   	<option  value="0"><?=$this->lang('disabled')?></option>
	   	<option  value="1"><?=$this->lang('active')?></option>
	   </select>
	   <br/>

	   <div class="text-right">
	   	<button class="btn btn-primary"><?=$this->lang('save')?></button>
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
