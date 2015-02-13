Template.hipaaLogSubmit.events "submit form": (e) ->
  e.preventDefault()

  HipaaLogger.logEvent("type", "userid", "username", "recordID", "collectionName", "message", "patientid")

  # location.reload()