# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->

	flowerfilename = $(".about-me-flowers").attr("src");
	
	if $(window).width() >= 576

	    $(".about-me").hover ->
	        $(".about-me-flowers").attr("src", flowerfilename);

	    $(".my-work").hover ->
	        $(".my-work-flowers").attr("src", flowerfilename);

	    $(".book-online").hover ->
	        $(".book-online-flowers").attr("src", flowerfilename);

	$(".hamburger-menu-wrapper").click ->
		if $(".tabs-container").attr("dropped") == "true"
			$(".tabs-container").attr("dropped", "false")
			$(".tabs-container").css("display", "none")
			$(".logo-container").css("margin-bottom", "30px")
		else if $(".tabs-container").attr("dropped") == "false"
			$(".tabs-container").attr("dropped", "true")
			$(".tabs-container").css("display", "block")
			$(".logo-container").css("margin-bottom", "0")


	$(".about-me-list-item").click ->

		if $(".about-me-sub-items").attr("dropped") == "false" and $(window).width() < 768

			$(".about-me-sub-items").css("visibility", "visible");
			$(".about-me-sub-items").css("opacity", "1");
			$(".about-me-sub-items").css("position", "relative");
			$(".about-me-sub-items").css("display", "block");

			$(".about-me-sub-items").attr("dropped", "true");

			$(".about-me-mobile").html("ABOUT ME \u25B2");

		else if $(".about-me-sub-items").attr("dropped") == "true" and $(window).width() < 768

			$(".about-me-sub-items").css("visibility", "hidden");
			$(".about-me-sub-items").css("opacity", "0");
			$(".about-me-sub-items").css("position", "absolute");
			$(".about-me-sub-items").css("display", "none");

			$(".about-me-sub-items").attr("dropped", "false");

			$(".about-me-mobile").html("ABOUT ME \u25BC");


	$(".my-work-list-item").click ->

		if $(".my-work-sub-items").attr("dropped") == "false" and $(window).width() < 768

			$(".my-work-sub-items").css("visibility", "visible");
			$(".my-work-sub-items").css("opacity", "1");
			$(".my-work-sub-items").css("position", "relative");
			$(".my-work-sub-items").css("display", "block");

			$(".my-work-sub-items").attr("dropped", "true");

			$(".my-work-mobile").html("MY WORK \u25B2");

		else if $(".my-work-sub-items").attr("dropped") == "true" and $(window).width() < 768

			$(".my-work-sub-items").css("visibility", "hidden");
			$(".my-work-sub-items").css("opacity", "0");
			$(".my-work-sub-items").css("position", "absolute");
			$(".my-work-sub-items").css("display", "none");

			$(".my-work-sub-items").attr("dropped", "false");

			$(".my-work-mobile").html("MY WORK \u25BC");


	$(window).resize ->

		if $(window).width() >= 768
			$(".tabs-container").attr("dropped", "true")
			$(".tabs-container").css("display", "block")
			$(".logo-container").css("margin-bottom", "0")
		else
			$(".tabs-container").attr("dropped", "false")
			$(".tabs-container").css("display", "none")
			$(".logo-container").css("margin-bottom", "30px")


		if $(".about-me-sub-items").attr("dropped") == "true" and $(window).width() < 768

			$(".about-me-sub-items").css("visibility", "hidden");
			$(".about-me-sub-items").css("opacity", "0");
			$(".about-me-sub-items").css("position", "absolute");
			$(".about-me-sub-items").css("display", "none");

			$(".about-me-sub-items").attr("dropped", "false");

			$(".about-me-mobile").html("ABOUT ME \u25BC");

		if $(".my-work-sub-items").attr("dropped") == "true" and $(window).width() < 768

			$(".my-work-sub-items").css("visibility", "hidden");
			$(".my-work-sub-items").css("opacity", "0");
			$(".my-work-sub-items").css("position", "absolute");
			$(".my-work-sub-items").css("display", "none");

			$(".my-work-sub-items").attr("dropped", "false");

			$(".my-work-mobile").html("MY WORK \u25BC");