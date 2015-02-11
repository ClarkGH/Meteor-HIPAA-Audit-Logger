@HipaaLog = new Mongo.Collection("hipaaLog")

HipaaLog.allow
  insert: ->
    true
  update: ->
    false
  remove: ->
    false