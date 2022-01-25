
	 	
	 	  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
 
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h2><?=$this->lang('token')?></h2>
        </section>

        <!-- Main content -->
        <section class="content">	 	
		 <div class="row">	
          
		 <div class="col-lg-12">	 		


		 		<div class="box box-info">
                <div class="box-header text-right">
                </div><!-- /.box-header -->
                <div class="box-body">

                	<div class="text-right">

                		<a href="<?php echo $this->siteUrl().'/admin/add_tokens';?>" class="btn btn-info " ><span class="fa fa-plus"></span> <?php echo $this->lang('add');?></a>
                		
                	</div>
                	<br>

                	


						      


                 <div class="table-responsive">
                  <table id="example1" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                       <th>#</th>
					   <th><?=$this->lang('number')?></th>
					   <th><?=$this->lang('subscription')?>#</th>
					   <th><?=$this->lang('user')?></th>
					   <th><?=$this->lang('status')?></th>
					   <th><?=$this->lang('payment')?></th>
					   <th><?=$this->lang('expiry')?></th>
					   <th>
					   	<form action="<?php echo $this->siteUrl().'/admin/process_delete_token';?>" onsubmit="validate_form(event)"  method="post" >
                		<?php echo $this->token(); ?>
                		<input type="hidden" name="token_json" id="token_json">
                		<button class="btn btn-danger"><i class="fa fa-trash"></i></button>
                		
                	   </form>
					   </th>

                      </tr>
                    </thead>
                    <tbody>
				    <?php 

				    $x = 1;

				    foreach($data['token'] as $row) { ?>
				    	<tr>
				    		<td><?php echo $x++;?></td>
				    		<td><?php echo $row['uid'];?></td>
				    		<td><?php foreach ($data['subscription'] as $subscription) {
				    			if ($subscription['id']==$row['subscription_id']) {
				    					echo $subscription['uid'];
				    			}
				    		} ;?>
				    		</td>
				    		<td><?php foreach ($data['users'] as $User) {
				    			if ($User['id']==$row['user_id']) {
				    					echo $User['name'];
				    			}
				    		} ;?>
				    		</td>
				    		<td><?php  if($row['status']==1){  echo $this->lang('used'); } ?> </td>
				    		<td><?php foreach ($data['payment'] as $Pay) {
				    			if ($Pay['id']==$row['payment_id']) {
				    				echo $Pay['uid'];
				    			}
				    		} ?> </td>

				    		<td><?php  if($row['status']==0){  echo date('Y-m-d',strtotime($row['expiry'])); } ?> </td>
				    	
				    		<td>

				    			<div class="checkbox">
								  <label><input  onclick="applycheck(this)"  class="tocken_checkbox" type="checkbox" value="<?php echo $row['id']; ?>"></label>
								</div>
				    			
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


 	 
	  <script type="text/javascript">

	  	var checkboxes = [];


	  	function applycheck(ele){

	  		var property = $(ele).prop('checked');
	  		var chk_val = $(ele).val();

	  		if (property==true){
	  			var check_ext = 0;
	  			$.each(checkboxes, function( index, value ) {
					  if (chk_val==value){
					  	check_ext++;
					  }
				});

				if (check_ext==0){
					checkboxes.push(chk_val);
				}

	  		}else{

	  			var temp_arr = [];

	  			

	  			$.each(checkboxes, function( index, value ) {
	  				var check_ext = 0;
					  if (chk_val==value){
					  	check_ext++;
					  }
					  if (check_ext==0){
							temp_arr.push(value);
						}
				});

				checkboxes = temp_arr;

	  		}


	  		$('#token_json').val(JSON.stringify(checkboxes));

	  	}


	  	function validate_form(eve) {
	  		

			if (checkboxes.length==0){
				swal("Error !", "No Tokens Selected !", "error");
				eve.preventDefault();
			}



	  	}
	  	


	  </script>
