<?php
defined('FIR') OR exit();
/**
 * The template for displaying the footer section
 */
?>
<link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/css/bootstrap.min.css">
     <!-- ==============================================
	 Header Section
	 =============================================== -->
	 <header class="dashboard-header">
      <div class="container">
	   <div class="row">

	    <div class="col-lg-7">
		 <div class="media">

		  <div class="avatar-box">
           <div id="bigFace" data-step="4" data-intro="Upload a profile picture.">
            <img src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/users/<?=e($data['user']['imagelocation'])?>" id="profileBigFace" class="img-responsive img-circle"/>
           </div>
		  </div>

		  <div class="media-body">
                <h2><?=$this->lang('howdy')?>, <?=e($data['user']['name'])?>!</h2>
                <!-- <span class="d-block text-white"> <?=e($this->currency)?><?=e($data['user']['credit_account'])?> <small><?=$this->lang('funds_account')?></small></span> -->
		  </div>
		 </div>
		</div>

	    <div class="col-lg-5">
		  <div class="breadcrumb-box">
              <ol class="breadcrumb breadcrumb-white breadcrumb-no-gutter ">
			  <?php if($data['url'] === "dashboard"): ?>
                <li class="breadcrumb-item"><a class="breadcrumb-link" href="<?=$this->siteUrl()?>"><?=$this->lang('home')?></a></li>
                <li class="breadcrumb-item active" aria-current="page"><?=e($data['url'])?></li>
			  <?php elseif($data['url'] === "editprofile"
			               || $data['url'] === "image"
						   || $data['url'] === "password"
						   || $data['url'] === "request"
						   || $data['url'] === "email"
						   || $data['url'] === "proposals"
						   || $data['url'] === "invites"
						   || $data['url'] === "invite"
						   || $data['url'] === "files"
						   || $data['url'] === "addfiles"
						   || $data['url'] === "escrow"
						   || $data['url'] === "payments"
						   || $data['url'] === "ratings"
						   || $data['url'] === "addrating"
						   || $data['url'] === "editrating"
						   || $data['url'] === "funds"
						   || $data['url'] === "addfunds"
						   || $data['url'] === "disputes"
						   || $data['url'] === "dispute"): ?>
                <li class="breadcrumb-item"><a class="breadcrumb-link" href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/dashboard"><?=$this->lang('dashboard')?></a></li>
                <li class="breadcrumb-item active" aria-current="page"><?=e($data['url'])?></li>
			  <?php endif; ?>
              </ol>
		 </div>
		</div>

	   </div>

	  </div><!-- /.container -->
     </header><!-- /header -->

     <!-- ==============================================
     Navigation Section
     =============================================== -->
     <header class="tr-header">
      <nav class="navbar navbar-default small">
      	<div class="container" style="justify-content: initial;">
            <div class="row align-items-center">
                <div class="col-md-12 d-none d-md-block">
                    <div class="main-menu">
                        <nav class="nav-menu">
                            <ul id="nav_menu">
                                <li><a data-hover="jobs" href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/jobs" style="padding: 17px;"><span><?=$this->lang('jobs')?></span></a></li>
                                <li><a data-hover="payments" href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/job_payments" style="padding: 17px;"><span><?=$this->lang('job_payments')?></span></a></li>
                                <li><a data-hover="subscription" href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/subscription" style="padding: 17px;"><span><?=$this->lang('subscription')?></span></a></li>
                                <li><a data-hover="token" href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/token" style="padding: 17px;"><span><?=$this->lang('token')?></span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-sm-12 d-block d-md-none">
                    <div class="responsive-menu-wrap"></div>
                </div>
            </div>
        </div>
      </nav><!-- /.navbar -->
     </header><!-- Page Header -->


     <style type="text/css">
     	.cardx{
     		box-shadow: 0 2px 12px rgba(0,0,0,.12);
     		background-color: white;
     		padding: 10px;
     	}
     </style>
