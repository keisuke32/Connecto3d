<?php
defined('FIR') OR exit();
/**
 * The template for displaying Home page menu
 */
?>


<style type="text/css">
	
#myVideo {
	z-index: -1;
  position: fixed;
  right: 0;
  bottom: 0;
  min-width: 100%;
  min-height: 100%;
  filter: brightness(50%);
}

.tr-banner{
	height: 120% !important;
}

.section_title h6{
    text-transform: uppercase;
    font-weight: 400;
    letter-spacing: 1px;
    margin-top: 0;
    margin-bottom: 0;
}
.section_title h3{
    margin-top: 10px;
    font-weight: 500;
    font-size: 32px;
    font-family: 'Roboto', sans-serif;
}

.section_title {
    text-align: center;
}

.title_desc {
    max-width: 800px;
    margin-left: auto;
    margin-right: auto;
}
.mb25 {
    margin-bottom: 25px;
}

.icon_box_two {
    text-align: center;
    padding: 35px 10px;
    margin-top: 30px;
    webkit-transition: all 0.3s ease-in-out;
    -moz-transition: all 0.3s ease-in-out;
    -o-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
    cursor: pointer;
}

.fa-4x{
	color: #00C4CF;
}

h5 {
    font-size: 18px;
}

p{
	font-size: 14px;
}
</style>

<link rel="stylesheet" type="text/css" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/animate.min.css">

<style>
#myVideo {
    z-index: -1;
    position: fixed;
    right: 0;
    bottom: 0;
    min-width: 100%;
    min-height: 100%;
    filter: brightness(50%);
    background-image: url(https://connecto3d.com/themes/boxplace/back.jpg);
}
</style>
<video autoplay  loop id="myVideo">
  <!-- <source src="https://www.w3schools.com/howto/rain.mp4" type="video/mp4"> >
  	<source src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/video.mp4" type="video/mp4"-->
<img src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/back.jpg">
</video>



	 
	<!-- ==============================================
	 Header Section
	 =============================================== -->


     <section class="tr-banner">
      <div class="container">
	   <div class="row">
		<div class="col-lg-12">
		 <div class="banner-headline">
		  <h3><?=$this->lang('carosal_heading')?></h3>
		  <h4><?=$this->lang('carosal_subheading')?></h4>
		 </div>
		</div><!--/ .col-lg-12 -->
	   </div><!--/ .row -->
	   <div class="row">
	    <div class="col-lg-12">
		
		
         <form method="post" action="<?=$this->siteUrl()?>/register">
		  <div class="search-form">
		   <div class="search-contents">
			<label class="label"><?=$this->lang('services')?></label>
			 <div class="select">
			  <select name="category">
	   
			  <?php foreach($data['services'] as $r2) { ?>			  
				<option value="<?=e($r2["name"])?>"><?=e($r2["name"])?></option>
		      <?php } ?>
			  </select>
			  <div class="select__arrow"></div>
			</div><!--/ .select -->	
		   </div><!--/ .search-contents -->
		   <div class="search-button">
              <?=$this->token()?>
		    <button type="submit" name="submit" class="kafe-btn kafe-btn-mint"><?=$this->lang('go')?></button>
		   </div><!--/ .search-button -->
          </div><!--/ .search-form -->
		 </form>
		 
		</div><!--/ .col-lg-12 -->
	   </div><!--/ .row -->
	   <div class="row">
		<div class="col-lg-12">
		 <ul class="banner-stats hidden-xs">
		  <li><strong class="counter">12+</strong><span>Manufacturing partners</span></li>
		  <li><strong class="counter">184+</strong><span>engineers</span></li>
		  <li><strong class="counter">1382+</strong><span>3D Printers</li>
		  <li><strong class="counter">480+</strong><span>CNC Machines</span></li>
		 </ul>
		</div><!--/ .col-lg-12 -->
	   </div><!--/ .row -->

	  </div><!--/ .container -->
     </section>	
	 
	 
	 <!-- ==============================================
	 Latest Jobs Section
	 =============================================== -->


<style type="text/css">

.pb80 {
    padding-bottom: 80px;
}
.pt80 {
    padding-top: 80px;
}

.bg-light {
    background-color: #FFFFFF;
}


</style>



	 <section class="about_us bg-light pt80 pb80">
    <div class="container">
        <!-- section title -->
        <div class="row">
            <div class="col-xs-12">
                <div class="section_title mb25">
                    <h6 class="fadeIn  wow animated" data-wow-delay=".1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeIn;">Welcome to Seth</h6>
                    <h3 class="fadeIn  wow animated" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeIn;">We Are Smart Creative Agency</h3>
                </div>
            </div>
        </div>
        <!-- end section title  -->
        <!-- title description  -->
        <div class="row">
            <div class="col-xs-12">
                <p class="title_desc mb25 text-center fadeIn  wow animated" data-wow-delay=".4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeIn;">
                    Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem
                </p>
            </div>
        </div>
        <!-- title description  -->
        <!-- icon box style 2-->
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="icon_box_two  fadeInLeft wow animated" data-wow-delay=".1s" style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInLeft;">
                    <i class="fa fa-mobile fa-4x"></i>
                    <h5>Mobile Optimized</h5>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
                </div>
            </div>
            <div class="col-md-3  col-sm-6 col-xs-12">
                <div class="icon_box_two  fadeInDown wow animated" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInDown;">
                    <i class="fa fa-tint fa-4x"></i>
                    <h5>Clean Code</h5>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6  col-xs-12">
                <div class="icon_box_two  fadeInUp wow animated" data-wow-delay=".3s" style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp;">
                    <i class="fa fa-compass fa-4x"></i>
                    <h5>Easy to Customized</h5>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-6  col-xs-12">
                <div class="icon_box_two  fadeInRight wow animated" data-wow-delay=".4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInRight;">
                    <i class="fa fa-comments fa-4x"></i>
                    <h5>Full Support</h5>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
                </div>
            </div>
        </div>
        <!-- icon box style 2-->
    </div>

</section>


