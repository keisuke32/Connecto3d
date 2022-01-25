
	 	
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
        <div class="box-header">
        </div><!-- /.box-header -->
        <div class="box-body">
<form action="<?php echo $this->siteUrl();?>/admin/process_store_tokens" method="post">
	<?php echo $this->token(); ?>
	<input type="hidden" name="id" value="<?php echo $row['id'];?>">
	
	   <label><?=$this->lang('subscription')?></label>
	   <select class="form-control s2" name="subscription" required="" >
	   	<option value="">select</option>
	   	<?php foreach ($data['subscription'] as $key => $sVAL) { 
	   		?>
	   		<option value="<?php echo  $sVAL['id'];?>"><?php echo $sVAL['uid'];?> - <?php foreach ($data['client'] as $userVAL) { 


	   		if($userVAL['id']==$sVAL['user_id']){

	   			echo $userVAL['name'];
	   		}
	   		 } ?></option>
	   	<?php } ?>
	   </select>
	   <br/>
	   <label><?=$this->lang('quantity')?></label>
	   <input type="number"  class="form-control"  min="1" name="quantity"  required="">
	   <br/>

	   <label><?=$this->lang('expiry')?></label>
	   <input type="date"  class="form-control"  name="expiry"  required="">
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


