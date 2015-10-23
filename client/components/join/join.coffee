Template.join.onCreated ->
  Session.set "stepOne", true
  Session.set "stepTwo", false
  Session.set "stepThree", false

Template.join.helpers
  "stepOne": ->

    if Meteor.user()
      return false

    return Session.get "stepOne"
  ,
  "stepTwo": ->
    if not Meteor.user().profile.boxType
      return true
    return Session.get "stepTwo"
  ,
  "stepThree": ->
    return Session.get "stepThree"


Template.join.events
  "click .next-1": (e,t) ->

    form = $(".add-member-form")
    name = form.children(".name-input").val()
    email = form.children(".email-input").val()
    password = form.children(".password-input").val().toString()

    console.log name
    console.log email
    console.log password

    Accounts.createUser
      username: "",
      email: email,
      password: password,
      "profile":
        "name": name,
        "role": "member"

    Session.set "stepOne", false
    Session.set "stepTwo", true
    Session.set "stepThree", false
