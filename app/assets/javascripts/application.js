// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); 
var product = $("#shop_product");

	$(document).ready(function () {
		productAnimation = TweenMax.to($(product, 10, {
			left: "90vw",
	    delay: 0.5,
	    rotation: 3600,
	    scaleX: 1.5,
	    scaleY: 1.5,
	    ease: Bounce.easeOut,
	    top: Math.random() > 0.5 ? "90vh" : "0vh",
	    yoyo: true,
	    repeat: -1,
		
	});
		productAnimation.play();
});