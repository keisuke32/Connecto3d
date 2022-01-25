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
		  <h3><?=$this->lang('sended_jobs')?></h3>
		 </div>	
		 
		<?php if(count($data['jobs'])==0){ ?> 
		  
		  <div class="prop-info text-center">
		     <img src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.$this->themePath().'/'.$this->theme()?>/assets/img/graphic.png" class="img-responsive" alt="Image" />
			 <h3><?=$this->lang('no_info')?>.</h3>
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
		                <a href="<?=$this->siteUrl()?>/<?=$this->freelancers_url()?>/portfolio/<?=e($Freelancers["userid"])?>/<?=e($Freelancers["slug"])?>">
		                    <img class="img-responsive img-circle" src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/users/<?=e($Freelancers['imagelocation'])?>" alt="Profile Picture">
		                </a>

		            </div>
		        </div>
		        <!--/ .freelancer-box-img -->
		        <div class="proposal-details">
		            <div class="proposal-description">
		                <a href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/view_job?id=<?php echo base64_encode($JOBS['id']);?>">
		                	<h3># <?php echo $JOBS['job_id'];?></h3>
		                    
		                </a>
		                <p><?php echo $JOBS['subject'];?></p>
		                <br/>
		                

		  				<p><?php echo $this->lang('status');?> : 
		            		<?php
							 if($JOBS['status']==0){ 
								echo $this->lang('no_action_by_freelancer'); 
							}
							if($JOBS['status']==1){ 
								echo $this->lang('price_sended_by_freelancer'); 
								echo " ( ".date('d F Y H:i',strtotime($JOBS['updated_at']))." )";
							}
							if($JOBS['status']==2){ 
								echo '<b class="text-success"><i class="fa fa-check"></i> '.$this->lang('accepted_by_client').'</b>'; 
								echo " ( ".date('d F Y H:i',strtotime($JOBS['updated_at']))." )";
							}
							if($JOBS['status']==3){ 
								echo '<b class="text-danger"><i class="fa fa-times"></i> '.$this->lang('decline_by_client').'</b>'; 
								echo " ( ".date('d F Y H:i',strtotime($JOBS['updated_at']))." )";
							}
							?>
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