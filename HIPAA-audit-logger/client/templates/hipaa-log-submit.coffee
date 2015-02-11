Template.hipaaLogSubmit.events "submit form": (e) ->
  e.preventDefault()

  hipaaLog =
    eventType: $(e.target).find("[name=eventType]").val()
    userId: $(e.target).find("[name=userId]").val()
    userName: $(e.target).find("[name=userName]").val()
    collectionName: $(e.target).find("[name=collectionName]").val()
    recordId: $(e.target).find("[name=recordId]").val()
    messageId: $(e.target).find("[name=messageId]").val()
    patientId: $(e.target).find("[name=patientId]").val()

  hipaaLog._id = HipaaLog.insert(hipaaLog)