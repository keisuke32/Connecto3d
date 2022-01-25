<?php
defined('FIR') OR exit();
/**
 * The template for displaying Example Create page
 */
?>




	 
	 <!-- ==============================================
	 Dashboard Section
	 =============================================== -->
     <section class="dashboard">
      <div class="container">
	   <div class="row">
		<div class="col-lg-12">
		
         <div class="headline">
		  <h3><?=$this->lang('jobs')?></h3>
		  <a class="kafe-btn kafe-btn-mint" href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/add_job"><?=$this->lang('add_job')?></a>
		 </div>	
		 
		<?php if(count($data['jobs'])==0){ ?> 
		  
		  <div class="prop-info text-center">
		     <img src="<?=$this->siteUrl()?>/assets/Roboton.png" class="img-responsive"  alt="Image" />
			 <h3><?=$this->lang('lets_start_job')?>.</h3>
          </div><!-- /.prop-info -->	
		  
		<?php } ?> 


		<?php if(count($data['jobs'])>0){ ?>

			<?php foreach ($data['jobs'] as $JOBS) { 

				$Freelancers = array();

				foreach ($data['users'] as $user) {
					if($JOBS['freelancer_id']==$user['id']){
						$Freelancers = $user;
					}
				}

				

				?>

			 
			 <div class="proposal-box">
		        <div class="proposal-img">
		            <div class="proposal-img-inner">
		                <a Xhref="">
		                    <img class="img-responsive img-circle" src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/users/<?=e($Freelancers['imagelocation'])?>" alt="Profile Picture">
		                </a>

		            </div>
		        </div>
		        <!--/ .freelancer-box-img -->
		        <div class="proposal-details">
		            <div class="proposal-description">
		                <a href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/view_job?id=<?php echo base64_encode($JOBS['id']);?>">
		                	<h3># <?php echo $JOBS['job_id'];?></h3>
		                	<p><?=$this->lang('services')?> - <?php 
		                	foreach ($data['services'] as $Services) {
		                		if($Services['id']==$JOBS['service_id']){
		                			echo $Services['name'];
		                		}
		                	}
		                	?></p>
		                    
		                </a>
		                <p><?php echo decrypt_text($JOBS['subject']);?></p>
		                <br/>
		                

		  				<p><?php echo $this->lang('status');?> : 
		  					<?php echo jobStatus($JOBS['status']); ?>
		            		
		            	</p>
		                

							
		            </div>
		        </div>
		        <!--/ .freelancer-box-details -->
		        <div class="proposal-bid">
		            <div class="proposal-bid-inner">
		            	<h3 class=" <?php if($Freelancers['verified']!=0){ ?>verified <?php } ?>"><?php echo $Freelancers['name'];?></h3>

		            	<p><?php echo date('d F Y H:i',strtotime($JOBS['created_at'])) ;?></p>

		            	<a class="kafe-btn kafe-btn-red" href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/view_job?id=<?php echo base64_encode($JOBS['id']);?>">

		  					<i class="fa fa-folder-open"></i> <?=$this->lang('view')?></a>
		  					<br/>
		  					<br/>


		  					<a class="kafe-btn kafe-btn-mint" href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/chat_on?job_id=<?php echo base64_encode($JOBS['id']);?>">

		  					<i class="fa fa-comments"></i> <?=$this->lang('chat_with_the_team')?> </a>


		            </div>
		        </div>
		        <!--/ .proposal-bid -->
		    </div>
		    <!--/ .proposal-box -->

			<?php } ?>

			<?php } ?>


			<?php echo $data['pagination']; ?>;
				
			  
		

		
		</div><!--/ .col-lg-12 -->
	   </div><!--/ .row -->
		
	  </div><!--/ .container -->
     </section>	  




