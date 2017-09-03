# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


if window.location.href.includes('beautiful_moments')
	document.onkeydown = (event) ->
	  if !event
	    event = window.event
	  code = event.keyCode
	  if event.charCode and code == 0
	    code = event.charCode
	  switch code
	    when 37
	      if $('.modal').css('display') == 'flex'
	      	imgsrc = $('.modal-content').attr('src')
	      	beautyIndx = imgsrc.indexOf('beautifulmoments/')
	      	dashIndx = imgsrc.indexOf('-')
	      	imgNumber = parseInt(imgsrc.substring(beautyIndx + 17, dashIndx))
	      	previousIndx = imgNumber - 2
	      	if imgNumber == 0
	      		previousIndx = $('.gallery-image').length - 1
	      	$('.modal-content').attr('src', $('.gallery-image').get(previousIndx).getAttribute('src'))
	    when 39
	      if $('.modal').css('display') == 'flex'
	      	imgsrc = $('.modal-content').attr('src')
	      	beautyIndx = imgsrc.indexOf('beautifulmoments/')
	      	dashIndx = imgsrc.indexOf('-')
	      	imgNumber = parseInt(imgsrc.substring(beautyIndx + 17, dashIndx))
	      	nextIndx = imgNumber
	      	if imgNumber == $('.gallery-image').length
	      		nextIndx = 0
	      	$('.modal-content').attr('src', $('.gallery-image').get(nextIndx).getAttribute('src'))
	      	
	  event.preventDefault()
	  return


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