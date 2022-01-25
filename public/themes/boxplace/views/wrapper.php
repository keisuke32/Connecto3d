<?php
defined('FIR') OR exit();
?>

<!DOCTYPE html>
<html lang="en">
  <head>
		<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

		<?php if($data['url'] == 'project'): ?>
	        <title><?=e($data['project_slug']['title'])?></title>
		<?php else: ?>
	        <title><?=e($this->siteSettings('sitename'))?> - <?=e($this->siteSettings('title'))?></title>
		<?php endif; ?>

		<meta name="description" content="<?=e($this->siteSettings('description'))?>">
		<meta name="keywords" content="<?=e($this->siteSettings('keywords'))?>">
		
		<meta property="og:title" content="<?=e($this->siteSettings('title'))?> : <?=e($this->siteSettings('sitename'))?>"/>
		<meta property="og:type" content="website"/>
		<meta property="og:url" content="<?=$this->siteUrl()?>"/>
		<meta property="og:image" content="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/<?=e($this->siteSettings('favicon'))?>"/>
		<meta property="og:site_name" content="<?=e($this->siteSettings('sitename'))?>"/>
		<meta property="og:description" content="<?=e($this->siteSettings('description'))?>"/>		

        <link href="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/<?=e($this->siteSettings('favicon'))?>" rel="icon">
        <link href="//fonts.googleapis.com/css?family=Montserrat:400,700|Abhaya+Libre|Poppins|Rokkitt" rel="stylesheet">

		<!-- all css here -->
		<link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/css/style.css">
		<link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/css/style-old.css">
		<link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/css/materials.css">
		<link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/css/base.css">
		<link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/css/feathericon.min.css">
		<link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/css/login.css">

	    <link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/css/bootstrap.min.css">
	    <link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/css/font-awesome.min.css">
	    <link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/css/flaticon.css">
	    <link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/css/magnific-popup.css">
	    <link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/css/slicknav.min.css">
	    <link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/css/typography.css">
	    <link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/css/default-css.css">
	    <link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/css/styles.css">
	    <link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/css/responsive.css">

	    <!-- modernizr css -->
    	<script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/js/vendor/modernizr-2.8.3.min.js"></script>
		
		<!-- Global site tag (gtag.js) - Google Analytics -->
		<script async src="//www.googletagmanager.com/gtag/js?id=<?=e($this->siteSettings('analytics'))?>"></script>

		<script>
		  window.dataLayer = window.dataLayer || [];
		  function gtag(){dataLayer.push(arguments);}
		  gtag('js', new Date());
		  gtag('config', 'UA-79656468-7');
		</script>	

		<style type="text/css">
			.tr-header{
				background-image: url('https://connecto3d.com/themes/boxplace/assets/slip.jpg') !important;
			}
			.navbar.navbar-default {
			    background-color: transparent !important;
			}
		</style>

  </head>

  <body id="top">
  		<!-- preloader area start -->
	    <div id="preloader">
	        <div class="loader_line"></div>
	    </div>
	    <!-- prealoader area end -->
		<?=$data['header_view']?>
		<?=$data['content_view']?>
		<?=$data['footer_view']?>
        <!-- jquery latest version -->
	    <script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/js/vendor/jquery-3.2.0.min.js"></script>
	    <!-- bootstrap 4 js -->
	    <script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/js/bootstrap.min.js"></script>
	    <!-- others plugins -->
	    <script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/js/jquery.slicknav.min.js"></script>
	    <script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/js/jquery.magnific-popup.min.js"></script>
	    <script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/js/imagesloaded.pkgd.min.js"></script>
	    <script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/js/isotope.pkgd.min.js"></script>
	    <script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/js/plugins.js"></script>
	    <script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/rokstar/assets/js/scripts.js"></script>

	    <script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/plugins/sweetalert/sweetalert.min.js"></script>
	     <?=$this->message()?>
	  
		<link href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/plugins/select2/select2.css" rel="stylesheet" type="text/css">
		<script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/plugins/select2/select2.min.js"></script>
	  
		<link href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/plugins/summernote/summernote.css" rel="stylesheet" type="text/css">
		<script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/plugins/summernote/summernote.min.js"></script>
		
        <script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/js/wave.js"></script>

	</body>
</html>

<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());
	gtag('config', '<?=e($this->siteSettings('analytics'))?>');
</script>	

<style type="text/css">
.tr-header{
	background-image: url('<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/slip.jpg') !important;
}

.navbar.navbar-default {
    background-color: transparent !important;
}
</style>