<?php
defined('FIR') OR exit();
/**
 * The template for displaying the footer section
 */
?>



	  
	 <!-- ==============================================
	 Footer Section
	 =============================================== -->	
	 <footer id="colophon" class="site-footer" role="contentinfo">
	  <div id="footer-menu">
	   <ul>
		<li><a href="<?=$this->siteUrl()?>/refund_policy"><?=$this->lang('refund_policy')?></a></li>
		<li><a href="<?=$this->siteUrl()?>/terms_and_conditions"><?=$this->lang('terms_and_conditions')?></a></li>
		<li><a href="<?=$this->siteUrl()?>/privacy_policy"><?=$this->lang('privacy_policy')?></a></li>
	   </ul>
	   <p class="footer-copyright"><?=sprintf($this->lang('copyright'), date('Y'), e($this->siteSettings('sitename')))?>, <?=$this->lang('all_rights_reserved')?>.</p>
	  </div>
	 </footer>	  
	 
     <a id="scrollup">Scroll</a>



     	     <script type="application/javascript">
				window.tiledeskSettings =
				{
				projectid: "5e27812fc6d98700175a4be0"
				};
				(function(d, s, id) {
				var js, fjs = d.getElementsByTagName(s)[0];
				if (d.getElementById(id)) return;
				js = d.createElement(s); js.id = id; //js.async=!0;
				js.src = "https://widget.tiledesk.com/v3/launch.js";
				fjs.parentNode.insertBefore(js, fjs);
				}(document, 'script', 'tiledesk-jssdk'));
				</script>
				