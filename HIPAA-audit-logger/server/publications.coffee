Meteor.publish "hipaaLog", ->
  HipaaLog.find()

Meteor.publish "residents", ->
  Residents.find()