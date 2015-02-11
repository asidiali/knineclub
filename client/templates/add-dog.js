Template.addDog.events({
  "submit .add-dog": function (event) {
    var dogName = event.target.dogName.value;
    var dogAge = event.target.dogAge.value;
    var dogOwner = Meteor.user().username;

    Dogs.insert({
      name: dogName,
      age: dogAge,
      owner: dogOwner
    });

    event.target.dogName.value = "";

    return false;

  }
});
