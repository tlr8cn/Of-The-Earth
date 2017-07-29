# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

	$('.wedding-selection').hide();
	$('.beautiful-selection').hide();

	$('#shoot-type').change ->
		if $(".wedding-option").is(':selected')
			$('.wedding-selection').show();
			$('.beautiful-selection').hide();
		if $(".beautiful-option").is(':selected')
			$('.wedding-selection').hide();
			$('.beautiful-selection').show();	
