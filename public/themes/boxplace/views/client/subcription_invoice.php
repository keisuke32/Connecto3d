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
		  <h3><?=$this->lang('invoice')?></h3>
		  <!-- <a href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/invites"><?=$this->lang('go_back')?></a> -->
		 </div>	
		 
		</div><!--/ .col-lg-12 -->
	   </div><!--/ .row -->
	   
	   <div class="row">
		 
	       <?=$this->validation()?>
		
		<div class="col-lg-12">

         <div class="add-box">
           <form method="post" action="<?=$this->siteUrl()?>/<?=$this->client_url()?>/process_add_jobs_duo" enctype="multipart/form-data"   onsubmit="validate(event)">

           	<input type="hidden" name="service_id" id="service_id">
           	<input type="hidden" name="nda" id="nda">
				 



			  <div class="form-group">
			  	<label><?=$this->lang('service_category')?></label>
			  	<div class="dropdown">
				    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
				    <span id="dropdown_name"><?=$this->lang('service_category')?></span>
				    <span class="caret"></span></button>
				    <ul class="dropdown-menu">
				    <?php foreach ($data['services'] as $servicesVAL) { 
			    		if($servicesVAL['freelancer']!=0){ ?>
				      <li>
				      	<a  onclick="reflect(this)"  data-id="<?php echo $servicesVAL['id'];?>"  data-name="<?php echo $servicesVAL['name'];?>"  >
				      	<?php echo $servicesVAL['name'];?>
				      	</a>
				      </li>
				      <li role="presentation" class="divider"></li>
				      <?php } } ?>
				    </ul>
				  </div>
			  </div>



			  


			  <div class="form-group" id="show_zone">	
			    
			  </div> 

			  <div class="row" id="form_zone">	
			    
			  </div> 
			  <br>
			  <br>

			  <div class="form-group">	
			    <label><?=$this->lang('subject')?></label>
			    <input type="text" name="subject" onchange="refine(this)" class="form-control" required>
			  </div> 

			  <div class="form-group">	
			    <label><?=$this->lang('description')?></label>
                 <textarea Xid="summernote" name="description" class="form-control" rows="5" placeholder="<?=$this->lang('description')?>" onchange="refine(this)" required ></textarea>	
              </div>

              <div class="form-group">	
			    <label><?=$this->lang('name')?></label>
			    <input type="text" name="name" value="<?=e($data['user']['name'])?>" onchange="refine(this)" class="form-control" required>
			  </div>

			  <div class="form-group">	
			    <label><?=$this->lang('shipping')?></label>
			    <input type="text" name="shipping" onchange="refine(this)" class="form-control" required>
			  </div>

			  <div class="form-group">	
			    <label><?=$this->lang('post_shipping')?></label>
			    <input type="text" name="post_shipping" onchange="refine(this)" class="form-control" required>
			  </div>

			  <div class="form-group">	
			    <label><?=$this->lang('attachments')?></label>
			    <!-- <input class="form-control" name="userfile[]" type="file" multiple="multiple" /> -->
			  </div>

			  <div id="preview_zone" class="row" ></div>
			  <br>

			  <div id="dropzone" class="text-center">
			  	

			  		<button class="btn btn-info" onclick="$(this).parent().click()" type="button" style="margin-top: 30px;"><i class="fa fa-upload fa-2x"></i> Preview Supported <br/> .obj .stl and images</button>
			  	
			  	
			  </div>
			  <br>
			  <br>
			  <div class="text-center">
			  	<button type="button" data-toggle="modal" data-target="#ndaModal" class="btn btn-primary"><i class="fa fa-handshake-o"></i> <?=$this->lang('nda')?></button>
			  </div>
			  <br>
			  <br>

			  

			  
			  
		   
			  
              <?=$this->token()?>
              <button type="submit" name="invite_freelancer" class="kafe-btn kafe-btn-mint full-width"><?=$this->lang('submit')?></button>
			  
           </form>		 
		 </div><!--/ .add-box -->	
		

		
		</div><!--/ .col-lg-8 -->
	   </div><!--/ .row -->
		
	  </div><!--/ .container -->
     </section>	  
