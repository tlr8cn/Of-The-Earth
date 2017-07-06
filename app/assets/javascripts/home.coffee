# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

	


	if $(window).width() >= 576

	    $(".about-me").hover ->
	        $(".about-me-flowers").attr("src", "/assets/flower.gif");

	    $(".my-work").hover ->
	        $(".my-work-flowers").attr("src", "/assets/flower.gif");

	    $(".book-online").hover ->
	        $(".book-online-flowers").attr("src", "/assets/flower.gif");


	$(".about-me-list-item").click ->

		if $(".about-me-sub-items").attr("dropped") == "false" and $(window).width() < 768

			$(".about-me-sub-items").css("visibility", "visible");
			$(".about-me-sub-items").css("opacity", "1");
			$(".about-me-sub-items").css("position", "relative");
			$(".about-me-sub-items").css("display", "block");

			$(".about-me-sub-items").attr("dropped", "true");

		else if $(".about-me-sub-items").attr("dropped") == "true" and $(window).width() < 768

			$(".about-me-sub-items").css("visibility", "hidden");
			$(".about-me-sub-items").css("opacity", "0");
			$(".about-me-sub-items").css("position", "absolute");
			$(".about-me-sub-items").css("display", "none");

			$(".about-me-sub-items").attr("dropped", "false");


	$(".my-work-list-item").click ->

		if $(".my-work-sub-items").attr("dropped") == "false" and $(window).width() < 768

			$(".my-work-sub-items").css("visibility", "visible");
			$(".my-work-sub-items").css("opacity", "1");
			$(".my-work-sub-items").css("position", "relative");
			$(".my-work-sub-items").css("display", "block");

			$(".my-work-sub-items").attr("dropped", "true");

		else if $(".my-work-sub-items").attr("dropped") == "true" and $(window).width() < 768

			$(".my-work-sub-items").css("visibility", "hidden");
			$(".my-work-sub-items").css("opacity", "0");
			$(".my-work-sub-items").css("position", "absolute");
			$(".my-work-sub-items").css("display", "none");

			$(".my-work-sub-items").attr("dropped", "false");