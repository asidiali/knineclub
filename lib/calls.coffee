Meteor.methods
  "addNewMember": (name, email, password) ->
    Accounts.createUser name,
      email,
      password,
      "profile":
        "role": "member"
      ,
      (err, id) ->
        console.log id
