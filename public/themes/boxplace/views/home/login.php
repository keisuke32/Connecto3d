<?php
defined('FIR') OR exit();
/**
 * The template for displaying Home page menu
 */
?>

<meta name="google-signin-client_id" content="836257257629-j9hvcn936nat6nh82bq58d70ro4ades1.apps.googleusercontent.com">
     <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v5.0&appId=221929885491562&autoLogAppEvents=1"></script>


<!-- <script async defer src="https://connect.facebook.net/en_US/sdk.js"></script> -->
  
 	 
 	 
     <!-- ==============================================
	 Header
	 =============================================== -->	 
	 <header class="how-header bg-search" style="background: linear-gradient( rgba(34,34,34,0.6), rgba(34,34,34,0.6) ), url('<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/<?=e($this->theme_details('bg_image_two'))?>') no-repeat center center fixed;">
      <div class="container">
       <div class="row">
	   
        <div class="col-lg-8 col-lg-offset-2">
         <div class="post-heading">
		  <h1><?=$this->lang('login')?>.</h1>
         </div><!-- /.post-heading -->
        </div><!-- /.col-lg-8 -->
		
       </div><!-- /.row -->
	  </div><!-- /.container -->
     </header><!-- /header -->		

     <!-- ==============================================
	 Header Avatar
	 =============================================== -->	 
	 
     <div class="how-avatar">
	  <img alt="..." src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/<?=e($this->siteSettings('favicon'))?>" class="avatar avatar-200 photo" width="200" height="200">
	  <p><?=e($this->siteSettings('sitename'))?></p>
	 </div><!-- /.header-avatar -->	 
	 
     <!-- ==============================================
     Banner Login Section
     =============================================== -->
	 <section class="banner-login">
	  <div class="container">
	  		  	
	   <div class="row banner-row">
		 
	    <main class="main main-signup col-lg-12">
	     <div class="col-lg-6 col-lg-offset-3 text-center">
	   
	    <?=$this->validation();?>
				
	     	
		  <div class="form-sign">

		  	<style type="text/css">
		  		

		  	</style>




		  	<div class="text-center" >
		  		<center>
		  			<div id="my-signin2">
		  				<div style="min-height: 50px;width: 400px; background-color: silver;"></div>
		  			</div>

		  		</center>
		  		<br>

		  		


		  		  <div class="fb-login-button" data-width="400px" scope="public_profile,email"
				  onlogin="checkLoginState();" data-size="large" data-button-type="login_with" data-auto-logout-link="true" data-use-continue-as="true">
				  
				  </div>

				  

		  		<!-- <div class="g-signin2" data-onsuccess="onSignIn" id="google_sign_button"  >Google</div> -->
		  		<br>

		  	<!-- <fb:login-button  id="facebook_login_btn"
				  scope="public_profile,email"
				  onlogin="checkLoginState();">
				</fb:login-button> -->	
		  		

		  	</div>

		  	


		   <form action="<?=$this->siteUrl()?>/login" method="post" id="login_form" >
		   	<input type="hidden" name="type" id="type">
		    <div class="form-head">
			</div><!-- /.form-head -->
            <div class="form-body" id="form_body">            	
            	
			 <div class="form-row">
			  <div class="form-controls">
			   <input name="email" id="email"  placeholder="<?=$this->lang('email')?>" class="field" type="text">
			  </div><!-- /.form-controls -->
			 </div><!-- /.form-row -->

			 <div class="form-row">
			  <div class="form-controls">
			   <input name="password"  id="password" placeholder="<?=$this->lang('password')?>" class="field" type="password">
			  </div><!-- /.form-controls -->
			 </div><!-- /.form-row -->

			 
			 <div class="form-row">
			  <div class="material-switch pull-left">
			   <input id="someSwitchOptionSuccess" name="remember" type="checkbox"/>
			   <label for="someSwitchOptionSuccess" class="label-success-mint"></label>
			   <span><?=$this->lang('remember_me')?></span>
			  </div>
			 </div><!-- /.form-row -->
			 
		    </div><!-- /.form-body -->

			<div class="form-foot">
			 <div class="form-actions">					
              <?=$this->token()?>
			  <input name="login" id="submit_btn" value="<?=$this->lang('login')?>" class="kafe-btn kafe-btn-mint full-width" type="submit" style="text-transform: uppercase;"><br></br>
			  </form>

			  <div class="m-15"></div>
			  <a href="<?=$this->siteUrl()?>/register" class="kafe-btn kafe-btn-danger full-width" style="text-transform: uppercase;"><?=$this->lang('register')?></a>
			 </div><!-- /.form-actions -->
             <div class="form-head">
			  <a href="<?=$this->siteUrl()?>/forgot" class="more-link"><?=$this->lang('forgot_password')?>?</a>
			 </div>
			</div><!-- /.form-foot -->
		   
		   
		  </div><!-- /.form-sign -->
	     </div><!-- /.col-lg-6 -->
        </main>
		
	   </div><!-- /.row -->
	  </div><!-- /.container -->
     </section><!-- /section --> 





<script type="text/javascript">
	
	function fb_btn_click(){



	}
</script>


<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '221929885491562',
      cookie     : true,
      xfbml      : true,
      version    : 'v5.0'
    });
      
    FB.AppEvents.logPageView();   
      
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>


<script type="text/javascript">
	


function checkLoginState() {
  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });
}

  function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
    console.log('statusChangeCallback');
    console.log(response);                   // The current login status of the person.
    if (response.status === 'connected') {   // Logged into your webpage and Facebook.
      testAPI();  
    } else {                                 // Not logged into your webpage or we are unable to tell.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this webpage.';
    }
  }


    function testAPI() {    

    	var id = 0;


    FB.api('/me?fields=id,name,email,picture', function(response) {
    	console.log(response);
    	$.post("<?=$this->siteUrl()?>/home/ajax_login_with_facebook",
	  {
	    name: response.name,
	    email: response.email,
	    id: response.id,
	    image: response.picture.data.url,
	    token_id:$('[name=token_id]').val()
	  },
	  function(data, status){

	  	var OBJ = JSON.parse(data);
		  	if(OBJ.status==1){
		  		$('#form_body').hide();
		  		$('#email').val(OBJ.email);
		  		$('#type').val('facebook_singin');
		  		$('#passowrd').hide();
		  		$('#password').val(OBJ.password);
		  		$('#submit_btn').click();
		  	}
	  });
    });
    
  }

</script>


































	<script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>




<script type="text/javascript">

	function renderButton() {
      gapi.signin2.render('my-signin2', {
        'scope': 'profile email',
        'width': 400,
        'height': 40,
        'longtitle': true,
        'theme': 'dark',
        'onsuccess': onSignIn,
        'onfailure': onFailure
      });

  }



      
    function onSuccess(googleUser) {
      console.log('Logged in as: ' + googleUser.getBasicProfile().getName());
    }
    function onFailure(error) {
      console.log(error);
    }

		
function onSignIn(googleUser) {
  var profile = googleUser.getBasicProfile();
  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
  console.log('Name: ' + profile.getName());
  console.log('Image URL: ' + profile.getImageUrl());
  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.

	  $.post("<?=$this->siteUrl()?>/home/ajax_login_with_google",
	  {
	    name: profile.getName(),
	    image: profile.getImageUrl(),
	    email: profile.getEmail(),
	    id: profile.getId(),
	    token_id:$('[name=token_id]').val()
	  },
	  function(data, status){
	  	
	  	var OBJ = JSON.parse(data);
		  	if(OBJ.status==1){
		  		$('#form_body').hide();
		  		$('#email').val(OBJ.email);
		  		$('#type').val('google_singin');
		  		$('#passowrd').hide();
		  		$('#password').val(OBJ.password);
		  		$('#submit_btn').click();
		  	}
	  });
}


	</script>





	          <?php if (isset($_SESSION['waveUser'])) { ?>

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
				
     <?php } ?>
