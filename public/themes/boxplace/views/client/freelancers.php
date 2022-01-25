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
		        <h3><?=$this->lang('freelancers')?></h3>
		    </div>

		    <?php foreach ($data['Freelancers'] as $Freelancers) { ?>

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
		                <a href="#">
		                    <h3 class=" <?php if($Freelancers['verified']!=0){ ?>verified <?php } ?>"><?php echo $Freelancers['name'];?></h3>
		                </a>
		                <p><?=e($Freelancers["about"])?></p>
		                <br/>
		                <a class="kafe-btn kafe-btn-red" href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/send_job/<?=e($Freelancers["userid"])?>/<?=e($Freelancers["slug"])?>">

		  <i class="fa fa-envelope-o"></i> <?=$this->lang('send_job_details')?> </a>
		                

							
		            </div>
		        </div>
		        <!--/ .freelancer-box-details -->
		        <div class="proposal-bid">
		            <div class="proposal-bid-inner">

		            	<div class="about-box-tags">
						     <h3><?=$this->lang('categories')?></h3>
							<?php
							if($Freelancers["categories"]!=""){
							 $arr=explode(',',$Freelancers["categories"]);
					            foreach ($arr as $key => $value) {
					              echo '<span>'. e($value) .' </span> &nbsp;'; 
					            }
					            }else{ echo "&nbsp;"; }
						    ?>	
							</div><!--/ .about-box-tags -->


		            	<div class="about-box-tags">
						     <h3><?=$this->lang('skills')?></h3>
							<?php
							if($Freelancers["skills"]!=""){
							 $arr=explode(',',$Freelancers["skills"]);
							
				            foreach ($arr as $key => $value) {
				              echo '<span>'. e($value) .' </span> &nbsp;'; 
				            }
				        }else{ echo "&nbsp;"; }
						    ?>	
							</div>
		                


		            </div>
		        </div>
		        <!--/ .proposal-bid -->
		    </div>
		    <!--/ .proposal-box -->

		<?php } ?>


		<div class="paginationCommon blogPagination text-center">
		    

		    <?php echo $data['pagination'];?>
		</div>

		</div>


	




	   </div><!--/ .row -->
		
	  </div><!--/ .container -->
     </section>	  