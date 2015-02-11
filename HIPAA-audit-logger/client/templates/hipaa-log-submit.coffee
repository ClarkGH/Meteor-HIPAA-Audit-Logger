Template.hipaaLogSubmit.events "submit form": (e) ->
  e.preventDefault()

  HipaaLogger.logEvent("fizz", "buzz")

  # location.reload()