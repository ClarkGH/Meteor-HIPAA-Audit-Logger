Meteor.startup ->
  console.log "There are no events currently in the audit log." if HipaaLog.find().count() is 0
