$(window).scroll ->
  $(".bgs").css "top": "-"+$(window).scrollTop()/2+"px"
  #$(".home-3-bg").css "top": "-"+$(window).scrollTop()/7+"px"
  $(".home-1").css "opacity": 1-$(window).scrollTop()/400
  $(".home-3").css "opacity": ($(window).scrollTop()-1200)*0.005

  if $(window).scrollTop() > 50
    $(".home-1").css "pointer-events": "none"
  else
    $(".home-1").css "pointer-events": "auto"

  # Home-2
  if $(window).scrollTop() > $(".home-1").innerHeight() and $(window).scrollTop() < $(".home-1").innerHeight()*2
    $(".how-it-works").addClass "active"
    $(".navigation-list-wrapper").addClass "with-bg"
    #$(".home-1-bg").hide()
    #$(".home-3-bg").show()
    $(".home-3").show().css "display": "flex"
  else if $(window).scrollTop() <= $(".home-1").innerHeight()
    $(".how-it-works").removeClass "active"
    $(".navigation-list-wrapper").removeClass "with-bg"
    #$(".home-1-bg").show()
    #$(".home-3-bg").hide()
    $(".home-3").hide()
  else
    $(".how-it-works").removeClass "active"

  #Home-3
  if $(window).scrollTop() > $(".home-1").innerHeight()*2 and $(window).scrollTop() < $(".home-1").innerHeight()*3
    $(".whats-inside").addClass "active"
  else if $(window).scrollTop() <= $(".home-1").innerHeight()*2
    $(".whats-inside").removeClass "active"
  else
    $(".whats-inside").removeClass "active"

  #Home-4
  if $(window).scrollTop() > $(".home-1").innerHeight()*3 and $(window).scrollTop() < $(".home-1").innerHeight()*4
    $(".who-we-are").addClass "active"
  else if $(window).scrollTop() <= $(".home-1").innerHeight()*3
    $(".who-we-are").removeClass "active"
  else
    $(".who-we-are").removeClass "active"
