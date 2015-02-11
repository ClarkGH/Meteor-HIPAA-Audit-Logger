Template.hipaaLogSubmit.events "submit form": (e) ->
  e.preventDefault()

  HipaaLogger.logEvent("Test", "joe", "jill", "bill", "phil", "will", "lill")

  location.reload()