<?php
defined('FIR') OR exit();
/**
 * The template for displaying the header section
 */
?>
  
     <!-- ==============================================
     Navigation Section
     =============================================== -->  
     <header class="tr-header">
      <nav class="navbar navbar-default">
       <div class="container">
	    <div class="navbar-header">
		 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
		  <span class="sr-only">Toggle navigation</span>
		  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		 </button>
		 <a href="<?=$this->siteUrl()?>" class="navbar-brand"><img src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/<?=e($this->siteSettings('logo'))?>" alt="Logo" class="img-fluid" width="80" height="90"></a>
		</div><!-- /.navbar-header -->
		<div class="navbar-left pull-center">
		 <div class="collapse navbar-collapse" id="navbar-collapse">
		  <ul class="nav navbar-nav">
		   <li class="<?=($data['url'] == 'home' ? ' active' : '')?>"><a href="<?=$this->siteUrl()?>">Home</a></li>
		   <li class="<?=($data['url'] == 'freebies' ? ' active' : '')?>"><a href="<?=$this->siteUrl()?>/freebies">Freebies</a></li>
		   <li class="<?=($data['url'] == 'contact' ? ' active' : '')?>"><a href="<?=$this->siteUrl()?>/contact">Contact Us</a></li>
		   
			 <li class="dropdown mega-avatar">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
			   <span>
				Languages - <?=mb_strtoupper(mb_substr($data['language'], 0, 2))?>
			   </span>
			  </a>
			  <div class="dropdown-menu w dropdown-menu-scale pull-right">
				<?php foreach($data['languages_list'] as $language): ?>
					<a class="dropdown-item" href="<?=$this->siteUrl()?>/admin/lang/<?=$language?>"><?=$language?></a>
				<?php endforeach ?>
			  </div>
			 </li><!-- /navbar-item -->	
		 
		  </ul>
		 </div>
		</div><!-- /.navbar-left -->
		<div class="navbar-right">                          
		 <ul class="nav navbar-nav">
		  
		   <li><a href="<?=$this->siteUrl()?>/admin/login">Sign In</a></li>
		 
		 </ul><!-- /.sign-in -->   
		</div><!-- /.nav-right -->
       </div><!-- /.container -->
      </nav><!-- /.navbar -->
     </header><!-- Page Header --> 
