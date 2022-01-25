<?php
defined('FIR') OR exit();
?>

<meta name="google-signin-client_id" content="836257257629-j9hvcn936nat6nh82bq58d70ro4ades1.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<div class="g-signin2" data-onsuccess="onSignIn" style="display: none;"></div>
<script type="text/javascript">
    function onSignIn(googleUser) {
        var profile = googleUser.getBasicProfile();
        console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
        console.log('Name: ' + profile.getName());
        console.log('Image URL: ' + profile.getImageUrl());
        console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
    }
</script>
<script>
    function signOut() {
        var auth2 = gapi.auth2.getAuthInstance();
            auth2.signOut().then(function () {
                console.log('User signed out.');
        });
    }
</script>
<script type="text/javascript">
    var rude_exp = ['fuck','suck','shit','piss','dick','asshole','bastard','damn','cunt','bollocks','bugger','bloody','hell','choad','rubbish','shag','wanker','twat','!','@'];
    var phone_exp = /(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?/img;
</script>
<style type="text/css">
    .navbar-default .navbar-nav li a {
        color: white !important;
    }
    .dropdown-item span{
        color: #32367D !important;
    }
    .tr-header{
        /*background-image: url('<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/slip.jpg') !important;*/
        background-image: linear-gradient(to right, #2F6393 , #2DA6B5);
    }
    .navbar.navbar-default {
        background-color: transparent !important;
    }
    }
    #dropzone{
        display: block !important;
    }
    .navbar-brand img {
        width: 250px !important;
        height: auto !important;
    }
</style>

<!-- header area start -->
<header id="first_page">
    <div class="header-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-3 col-sm-12">
                    <div class="logo">
                        <a href="<?=$this->siteUrl()?>"><img src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/logo.png" alt="logo"></a>
                    </div>
                </div>
                <div class="col-md-9 d-none d-md-block">
                    <div class="main-menu">
                        <nav class="nav-menu">
                            <ul id="nav_menu">
                                <li><a data-hover="materials" href="<?=$this->siteUrl()?>/materials"><span>Materials</span></a></li>
                                <li><a data-hover="services" href="#about"><span>Services</span></a></li>
                                <li><a data-hover="about us" href="#portfolio"><span>About us</span></a></li>
                                <li><a data-hover="sign in" href="<?=$this->siteUrl()?>/login"><span>Sign in</span></a></li>
                                <li><a data-hover="sign up" href="<?=$this->siteUrl()?>/register"><span>Sign up</span></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-sm-12 d-block d-md-none">
                    <div class="responsive-menu-wrap"></div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header area end -->
<style type="text/css">
    .plan_name{
        color: #00C4CF;
    }
    .plan_price{
        color: orange;
        font-weight: bold;
    }
    .text-silver{
        color: silver;
    }

    .flex_responsive{
        display: flex;
    }
    .item_box{
        width: 20%;
        padding: 10px;
    }
    @media only screen and (max-width: 600px) {
      .flex_responsive{
            display: block;
        }
     .item_box{
            width: 100%;
            padding: 10px;
        }
    }
</style>
<style type="text/css">
    .chat_window{
        min-height: 200px;
        max-height: 400px;
        width: 100%;
        overflow-y: scroll;
        border: 2px solid #F9F9F9;
    }
    .flex{
        display: flex;
        padding: 10px;
    }
    .chat_box{
        width: 70%;
        padding: 10px;
    }
    .chat_right{
        margin-left: 30%;
        background-color: #b3eff2;
        border-radius: 10px;

    }
    .chat_left{
        background-color: #F9F9F9;
        border-radius: 10px;
    }
</style>