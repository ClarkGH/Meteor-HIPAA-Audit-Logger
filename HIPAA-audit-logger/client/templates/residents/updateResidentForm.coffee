Template.updateResidentForm.helpers resident: ->
  Residents.findOne(this.params._id).name