@HipaaLogger = logEvent: (eventType, userId, userName, collectionName, recordId, message, patientId) ->

  console.log "logEvent", eventType, userId, userName, collectionName, recordId, message, patientId

  newRecord =
    timestamp: new Date()
    type: eventType

  newRecord.userId = userId  if userId
  newRecord.userName = userName  if userName
  newRecord.recordId = recordId  if recordId
  newRecord.collectionName = collectionName  if collectionName
  newRecord.message = message  if message
  newRecord.patientId = patientId  if patientId
  console.log HipaaLog.insert(newRecord)