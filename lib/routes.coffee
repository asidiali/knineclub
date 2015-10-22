FlowRouter.route '/',
  name: 'home',
  action: ->
    Session.set "loading", true
    BlazeLayout.render 'MainLayout',
      content: 'home',
      nav: 'navigationList'

FlowRouter.route '/join',
  name: 'join',
  action: ->
    BlazeLayout.render 'MainLayout',
      content: 'join'
