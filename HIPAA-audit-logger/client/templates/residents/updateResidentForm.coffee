Template.listResidents.helpers resident: ->
  Residents.findOne(this.params._id)