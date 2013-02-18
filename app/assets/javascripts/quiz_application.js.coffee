window.QuizApplication =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    Backbone.history.start pushState: true

$(document).ready ->
  QuizApplication.init()

  $('#error_explanation .alert').alert()

  $('#team_name').popover
    placement: "right",
    trigger: "focus",
    title: "What's this for?",
    content: "This is how we'll refer to your quiz team. Give yourselves a cool name like 'The Quizzaniacs'"

  $(window).load ->
    $('#loader').hide()
    $('#quiz').show()

  $('#quiz form').submit ->
    seconds = Math.round(new Date().getTime() / 1000)
    $('#quiz input[name="time_end"]').val(seconds)
