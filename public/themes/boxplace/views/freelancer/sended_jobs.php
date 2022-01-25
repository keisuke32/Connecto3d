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
		 </div>	
		 
		<?php if(count($data['jobs'])==0){ ?> 
		  
		  <div class="prop-info text-center">
		     <!-- <img src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.$this->themePath().'/'.$this->theme()?>/assets/img/graphic.png" class="img-responsive" alt="Image" /> -->
		     <img src="<?=$this->siteUrl()?>/assets/Roboton.png" class="img-responsive"  alt="Image" />
			 <h3><?=$this->lang('no_info')?>.</h3>
          </div><!-- /.prop-info -->	
		  
		<?php } ?> 

		<?php if(count($data['jobs'])>0){ ?>

			<?php foreach ($data['jobs'] as $JOBS) { 

				$CLIENT = array();

				foreach ($data['users'] as $user) {
					if($JOBS['user_id']==$user['id']){
						$CLIENT = $user;
					}
				}

				

				?>

			 
			 <div class="proposal-box">
		        <div class="proposal-img">
		            <div class="proposal-img-inner">
		                <a >
		                    <img class="img-responsive img-circle" src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/users/<?=e($CLIENT['imagelocation'])?>" alt="Profile Picture">
		                </a>

		            </div>
		        </div>
		        <!--/ .freelancer-box-img -->
		        <div class="proposal-details">
		            <div class="proposal-description">
		                <a href="<?=$this->siteUrl()?>/<?=$this->freelancer_url()?>/view_job?id=<?php echo base64_encode($JOBS['id']);?>">
		                	<h3># <?php echo $JOBS['job_id'];?></h3>
		                	<p><?php echo $this->lang('service_category');?> -

		                		<?php foreach ($data['services'] as $services) {
		                			if($services['id']==$JOBS['service_id']){
		                				echo $services['name'];

		                			}
		                		}

		                		?></p>
		                    
		                </a>
		                <p><?php echo decrypt_text($JOBS['subject']);?></p>
		        
		                <p><?php echo $this->lang('status');?> : 

		                	<?php echo jobStatus($JOBS['status']); ?>
		            		
		            	</p>
		                
		                

							
		            </div>
		        </div>
		        <!--/ .freelancer-box-details -->
		        <div class="proposal-bid">
		            <div class="proposal-bid-inner">
		            	<h3 class=" <?php if($CLIENT['verified']!=0){ ?>verified <?php } ?>"><?php echo $CLIENT['name'];?></h3>

		            	<p><?php echo date('d F Y H:i',strtotime($JOBS['created_at'])) ;?></p>
		            	<a class="kafe-btn kafe-btn-red" href="<?=$this->siteUrl()?>/<?=$this->freelancer_url()?>/view_job?id=<?php echo base64_encode($JOBS['id']);?>">
		  					<i class="fa fa-folder-open"></i> <?=$this->lang('view')?> </a>
		                


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