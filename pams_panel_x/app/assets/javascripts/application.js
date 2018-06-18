// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery

//= require rails-ujs
//= require_tree .

$(document).ready(function(){

	$('.menu-icon').on('click', function(){
		$('nav ul').toggleClass('showing');
	});

}); 

$(document).ready(function(){
   $('#notice_wrapper').hide();
	$('#notice_wrapper').fadeIn();
  setTimeout(function(){
    $('#notice_wrapper').fadeOut('slow', function(){
    	$(this).remove();
    })
  }, 4500);

}); 





// $(window).load(function() {
//         // will first fade out the loading animation
//     $("#status").fadeOut();
//         // will fade out the whole DIV that covers the website.
//     $("#preloader").delay(1000).fadeOut("slow");
// })

jQuery(document).ready(function($) {  

// site preloader -- also uncomment the div in the header and the css style for #preloader
$(window).load(function(){
	$('#preloader').fadeOut('slow',function(){$(this).remove();});
});

});




$(document).ready(function() {

if(document.querySelector('body.students.index') == undefined){
	return;
}
		   $('.delete-student').click(function(e){
		   	e.preventDefault();
		   	let deletionURL = e.target.getAttribute('href');

		   	$.ajax({
		   		method: 'DELETE',
		   		url: deletionURL,
		   		success: function (data){
		   			$(e.target).parents('.student').remove();
		   			
		   		}
		   	});
		   })



}); 


// _____ May not need this if the page is small  ________

$(window).on('scroll', function(){
	if($(window).scrollTop()) {
		$('nav').addClass('black');
	}
	else {
		$('nav').removeClass('black')
	}
})