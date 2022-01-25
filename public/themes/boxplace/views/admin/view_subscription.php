
	 	
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

        	<?php foreach ($data['subscription'] as $subscription) { ?>
        		<table class="table table-bordered">
        			<tbody>
        				<tr>
        					<td><?=$this->lang('token')?></td>
        					<td><?php echo $subscription['token'];?></td>
        				</tr>
        				<tr>
        					<td><?=$this->lang('client')?></td>
        					<td><?php 

        					foreach ($data['users'] as $User) {
        						if ($subscription['user_id']==$User['id']) {
        							echo $User['name'];
        						}
        					}

        					?></td>
        				</tr>
        				<tr>
        					<td><?=$this->lang('plan')?></td>
        					<td><?php 

        					foreach ($data['plans'] as $Plan) {
        						if ($subscription['plan_id']==$Plan['id']) {
        							echo $Plan['name'];
        						}
        					}

        					?></td>
        				</tr>
        				<tr>
        					<td><?=$this->lang('amount')?></td>
        					<td><?php echo $subscription['amount'];?></td>
        				</tr>
        				<tr>
        					<td><?=$this->lang('plan_start')?></td>
        					<td><?php echo $subscription['starter'];?></td>
        				</tr>
        				<tr>
        					<td><?=$this->lang('plan_end')?></td>
        					<td><?php echo $subscription['expiry'];?></td>
        				</tr>
        				<tr>
        					<td><?=$this->lang('payment_mode')?></td>
        					<td><?php echo $subscription['mode'];?></td>
        				</tr>
        			</tbody>
        		</table>
        	<?php } ?>


           
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
