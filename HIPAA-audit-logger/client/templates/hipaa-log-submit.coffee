Template.hipaaLogSubmit.events "submit form": (e) ->
  e.preventDefault()

  HipaaLogger.logEvent("eventtype", "userid", "username", "collectionName", "recordID", "message", "patientid")

  # location.reload()