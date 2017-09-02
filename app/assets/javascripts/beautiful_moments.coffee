# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->

	modal = document.getElementById('myModal')
	img = document.getElementById('myImg')
	modalImg = document.getElementById('img01')

	if $(window).width() >= 768
		$('.gallery-image').click ->
		  modal.style.display = 'flex'
		  modal.style.align-items = 'center'
		  modal.style.justify-content = 'center'

		  if $(this).height() > $(this).width()
		  	$('.modal-content').css('max-width', '550px') 
		  else
		  	$('.modal-content').css('max-width', '1200px') 

		  modalImg.src = @src
		  return


		$('.close').click ->
			modal.style.display = 'none'
			return