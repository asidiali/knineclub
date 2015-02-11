Template.dogsList.helpers({
  myDogs: function() {
    return Dogs.find({owner:Meteor.user().username});
  }
});
