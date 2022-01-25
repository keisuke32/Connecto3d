<?php
defined('FIR') OR exit();
/**
 * The template for displaying Home page menu
 */
?>


<style type="text/css">
	.t_strength_meter{
		border-radius: 50px !important;
	}
</style>


<script type="text/javascript">
	
	var password_confirm = 0;



</script>

<link rel="stylesheet" type="text/css" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/plugins/password_strength/password_strength.css">

<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/plugins/password_strength/password_strength.js"></script>


<script type="text/javascript">
	
function copycon(valx){

	$('#org_password').val(valx);


}

</script>


	<meta name="google-signin-client_id" content="836257257629-j9hvcn936nat6nh82bq58d70ro4ades1.apps.googleusercontent.com">





     <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v5.0&appId=221929885491562&autoLogAppEvents=1"></script>





  
 	 
     <!-- ==============================================
	 Header
	 =============================================== -->	 
	 <header class="how-header bg-search" style="background: linear-gradient( rgba(34,34,34,0.6), rgba(34,34,34,0.6) ), url('<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/<?=e($this->theme_details('bg_image_two'))?>') no-repeat center center fixed;">
      <div class="container">
       <div class="row">
	   
        <div class="col-lg-8 col-lg-offset-2">
         <div class="post-heading">
		  <h1><?=$this->lang('register')?>.</h1>
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

		  		<br>
		  		

		  	</div>

		   <form action="<?=$this->siteUrl()?>/register" method="post" onsubmit="validate(event)"  >
		   	<input type="hidden" id="response"  name="response">
		   	<input type="hidden" name="user_type" value="2">
		   	<input type="hidden"  name="password"  id="org_password"  placeholder="<?=$this->lang('password')?>" class="field" type="password">


		    <div class="form-head">
			</div><!-- /.form-head -->
            <div class="form-body">            	
            	
			 <div class="form-row">
			  <div class="form-controls">
			   <input name="name" required placeholder="<?=$this->lang('name')?>" class="field" type="text">
			  </div><!-- /.form-controls -->
			 </div><!-- /.form-row -->    	
            	
			 <div class="form-row">
			  <div class="form-controls">
			   <input name="email" required placeholder="<?=$this->lang('email')?>" class="field" type="text">
			  </div><!-- /.form-controls -->
			 </div><!-- /.form-row -->

			 <div class="form-row">
			  <div class="form-controls">
			  	<div id="myThirdPassword"></div>
			  </div><!-- /.form-controls -->
			 </div><!-- /.form-row -->

			 <div class="form-row">
			  <div class="form-controls">
			   <input type="password" id="c_password" required=""  name="confirmPassword" class="field" placeholder="<?=$this->lang('confirm_password')?>">
			  </div><!-- /.form-controls -->
             </div><!-- /.form-row -->


             <div class="form-row">
			  <div class="form-controls">
			  	<textarea id="shipping_address" class="form-control" rows="3" name="shipping_address" placeholder="<?=$this->lang('shipping_address')?>"></textarea>
			   
			  </div><!-- /.form-controls -->
             </div><!-- /.form-row -->
            
			  <div class="m-30"></div>
             <br/>
			 
		    </div><!-- /.form-body -->


			<div class="form-foot">
			 <div class="form-actions">					
              <?=$this->token()?>
			  <input name="register" value="<?=$this->lang('submit_to_register')?>" class="kafe-btn kafe-btn-mint full-width" type="submit" style="text-transform: uppercase;"><br></br>
			  <div class="m-15"></div>
			  <a href="<?=$this->siteUrl()?>/login" class="kafe-btn kafe-btn-danger full-width" style="text-transform: uppercase;"><?=$this->lang('login')?></a>
			 </div><!-- /.form-actions -->
			</div><!-- /.form-foot -->
		   </form>
		   
		  </div><!-- /.form-sign -->
	     </div><!-- /.col-lg-6 -->
        </main>
		
	   </div><!-- /.row -->
	  </div><!-- /.container -->
     </section><!-- /section --> 	


      <form action="<?=$this->siteUrl()?>/login" method="post" id="login_form" >
			   <input name="email" type="hidden" id="email"  >
			   <input name="password" type="hidden" id="password" >				
              <?=$this->token()?>
			  <input type="hidden"  name="login" id="submit_btn" value="<?=$this->lang('login')?>">
	  </form>


<script src="https://www.google.com/recaptcha/api.js?render=6LdgA9IUAAAAABLJUJp3oXOUvSpwgXIAmTcrCI-_"></script>

     <script>
grecaptcha.ready(function() {
    grecaptcha.execute('6LdgA9IUAAAAABLJUJp3oXOUvSpwgXIAmTcrCI-_', {action: 'homepage'}).then(function(token) {
       $('#response').val(token);
    });
});
</script>

<script type="text/javascript">
	$("#myThirdPassword").strength_meter({
            strengthMeterClass: 't_strength_meter'
        });



	function validate(eve){


		var validation_pass = 0;

		if (password_confirm==0){
			swal("Password Error !", "Password strength is not enough !", "error");
			eve.preventDefault();
			return false;
		}

		if ($('#org_password').val()!=$('#c_password').val()) {
			swal("Password Error !", "Confirm Password Not Matched !", "error");
			eve.preventDefault();
			return false;

		}


	}



</script>





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
	    token_id:$('[name=token_id]').val(),
	    shipping_address:$('#shipping_address').val()
	  },
	  function(data, status){

	  	var OBJ = JSON.parse(data);
		  	if(OBJ.status==1){
		  		$('#form_body').hide();
		  		$('#email').val(OBJ.email);
		  		$('#passowrd').hide();
		  		$('#password').val(OBJ.password);
		  		$('#login_form').submit();
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
	    token_id:$('[name=token_id]').val(),
	    shipping_address:$('#shipping_address').val()
	  },
	  function(data, status){
	  	
	  	var OBJ = JSON.parse(data);
		  	if(OBJ.status==1){
		  		$('#form_body').hide();
		  		$('#email').val(OBJ.email);
		  		$('#passowrd').hide();
		  		$('#password').val(OBJ.password);
		  		$('#login_form').submit();
		  	}
	  });
}


	</script>


<script src="https://maps.googleapis.com/maps/api/js?key=<?php echo GOOGLE_MAP_API;?>&libraries=places&callback=initAutocomplete"
        async defer></script>


<script type="text/javascript">
	var placeSearch, autocomplete;

var componentForm = {
  street_number: 'short_name',
  route: 'long_name',
  locality: 'long_name',
  administrative_area_level_1: 'short_name',
  country: 'long_name',
  postal_code: 'short_name'
};

function initAutocomplete() {
  // Create the autocomplete object, restricting the search predictions to
  // geographical location types.
  autocomplete = new google.maps.places.Autocomplete(
      document.getElementById('shipping_address'), {types: ['geocode']});

  // Avoid paying for data that you don't need by restricting the set of
  // place fields that are returned to just the address components.
  autocomplete.setFields(['address_component']);

  // When the user selects an address from the drop-down, populate the
  // address fields in the form.
  autocomplete.addListener('place_changed', fillInAddress);
}
</script>