# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("#nominateNav").click (e) ->
  e.preventDefault()
  $("#nominateUserInput").val("")
  $("#nominateReason").val("")
  $("#nominateBtn").click()

$(document).keydown (e) ->
  if e.keyCode == 78
    e.preventDefault()
    $("#nominateNav").click()
