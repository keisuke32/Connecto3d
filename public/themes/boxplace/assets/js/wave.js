$(document).ready(function() {
	
	"use strict";
	
	/*============================================
	Scroll To Top
	==============================================*/	

	//When distance from top = 250px fade button in/out
	$(window).scroll(function(){
		if ($(this).scrollTop() > 250) {
			$('#scrollup').fadeIn(300);
		} else {
			$('#scrollup').fadeOut(300);
		}
	});

	//On click scroll to top of page t = 1000ms
	$('#scrollup').on('click',function(){
		$("html, body").animate({ scrollTop: 0 }, 1000);
		return false;
	});

	/*============================================
	Navbar Dropdown
	==============================================*/	
    
	$('ul.nav li.dropdown').hover(function() {
	  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
	}, function() {
	  $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
	});  
	
	/*============================================
	Alert Fade
	==============================================*/	  
	
    $(".alert-danger").fadeIn(1000).delay(5000).fadeOut(1000);
    $(".alert-success").fadeIn(1000).delay(5000).fadeOut(1000);
	
	
	/*============================================
	Select 2
	==============================================*/	
	$('.select2, .select3').select2();
	
	
	/*============================================
	Summernote
	==============================================*/
	$('#summernote, #summernote-1').summernote({
        height: 200,
		toolbar: [
		  ['style', ['bold', 'italic', 'underline', 'clear']],
		  ['misc', ['print']]
		],
    });	
	

});


