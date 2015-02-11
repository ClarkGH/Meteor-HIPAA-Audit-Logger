@HipaaLogger = logEvent: (eventType, userId, userName, collectionName, recordId, message, residentId) ->

  console.log "logEvent", eventType, userId, userName, collectionName, recordId, message, residentId

  newRecord =
    timestamp: new Date()
    type: eventType
# Add required for userId, recordId, residentId
  newRecord.userId = userId if userId?
  newRecord.userName = userName if userName?
  newRecord.recordId = recordId if recordId?
  newRecord.collectionName = collectionName if collectionName?
  newRecord.message = message if message?
  newRecord.residentId = residentId if residentId?

  console.log HipaaLog.insert(newRecord)