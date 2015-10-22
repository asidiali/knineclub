Template.home.onRendered ->
  setTimeout ->
    Session.set "loading", false
  , 100

Template.home.events
  "click .learn-button": (e,t) ->
    len = $(".home-1").innerHeight()
    $('html, body').animate
      scrollTop: len+1
    , 700
