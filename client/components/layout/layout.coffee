Template.home.onRendered ->
  setTimeout ->
    Session.set "loading", false
  , 100
