
	 	
	 	  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
 
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h2>Chat</h2>
        </section>

        <!-- Main content -->
        <section class="content">	 	
		 <div class="row">	
          
		 <div class="col-lg-12">	 		


		 		<div class="box box-info">
                <div class="box-header text-right">
 
                </div><!-- /.box-header -->
                <div class="box-body">


                	<h3>Client Direct Chat</h3>

                <div class="table-responsive">
                	<table class="table table-bordered datatable">
                		<thead>
                			<tr>
                				<th>#</th>
                				<th>Client</th>
                				<th>Action</th>
                			</tr>
                		</thead>
                		<tbody>
                			<?php 
                			$x = 1;
                			foreach ($data['direct_chat'] as $Dchat) { ?>
                			<tr>
                				<td><?php echo $x++;?></td>
                				<td>
                					<?php
                					foreach ($data['users'] as $UserVAL) {
                						if ($UserVAL['id']==$Dchat) {
                							echo $UserVAL['name'];
                						}
                					}

                					?>
                				</td>
                				<td>
                					 <a href="<?=$this->siteUrl()?>/admin/chat_on?client=<?php echo $Dchat;?>" class="btn btn-success btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('view');?>"><span class="fa fa-comments"></span></a>

				    		  <a href="<?=$this->siteUrl()?>/admin/remove_chat?client=<?php echo $Dchat;?>" class="btn btn-danger btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('delete');?>"><span class="fa fa-trash"></span></a>
                				</td>
                			</tr>
                			<?php } ?>
                		</tbody>
                	</table>
                </div>



                <h3>Job Related Chat</h3>

                <div class="table-responsive">
                	<table class="table table-bordered datatable">
                		<thead>
                			<tr>
                				<th>#</th>
                				<th>Job #</th>
                				<th>Client</th>
                				<th>Action</th>
                			</tr>
                		</thead>
                		<tbody>
                			<?php 
                			$x = 1;
                			foreach ($data['job_chat'] as $Dchat) { 
                				foreach ($data['jobs'] as $JobVAL) {
                						if ($JobVAL['id']==$Dchat) {
                				?>
                			<tr>
                				<td><?php echo $x++;?></td>
                				<td>
                					<?php
                					
                							echo $JobVAL['job_id'];
                					

                					?>
                				</td>
                				<td>

                					<?php

                					foreach ($data['users'] as $usersVAL) {
                						if ($JobVAL['user_id']==$usersVAL['id']) {
                							echo $usersVAL['name'];
                						}
                					}

                					?>
                					

                				</td>
                				<td>
                					 <a href="<?=$this->siteUrl()?>/admin/chat_on?job_id=<?php echo $Dchat;?>" class="btn btn-success btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('view');?>"><span class="fa fa-comments"></span></a>

				    		  <a href="<?=$this->siteUrl()?>/admin/remove_chat?job_id=<?php echo $Dchat;?>" class="btn btn-danger btn-xs" data-toggle="tooltip" title="<?php echo $this->lang('delete');?>"><span class="fa fa-trash"></span></a>
                				</td>
                			</tr>
                			<?php 	}
                					} 
                				} ?>
                		</tbody>
                	</table>
                </div>

                 <div class="table-responsive">
                  </div><!-- /.table-responsive -->
                </div><!-- /.box-body -->
              </div><!-- /.box -->
			  
          </div>
        
			 
	    </div><!-- /.row -->		  		  
	   </section><!-- /.content -->
      </div><!-- /.content-wrapper -->


 	 
