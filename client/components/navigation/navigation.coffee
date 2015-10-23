Template.navigationList.events
  "click .how-it-works": (e,t) ->
    len = $(".home-1").innerHeight()
    $('html, body').animate
      scrollTop: len+1
    , 700
  ,
  "click .whats-inside": (e,t) ->
    len = $(".home-1").innerHeight()+$(".home-2").innerHeight()+40
    $('html, body').animate
      scrollTop: len+1
    , 700
  ,
  "click .who-we-are": (e,t) ->
    len = $(".home-1").innerHeight()+$(".home-2").innerHeight()+$(".home-3").innerHeight()+40
    $('html, body').animate
      scrollTop: len+1
    , 700
