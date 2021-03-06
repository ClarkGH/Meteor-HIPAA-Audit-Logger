Router.configure
  notFoundTemplate: 'notFound'
  waitOn: ->
    Meteor.subscribe "users"
    Meteor.subscribe "hipaaLog"

Router.route '/',
  name: 'signIn'

Router.route '/admin',
  name: 'admin'

Router.route '/log',
  name: 'hipaaLog'
  onRun: ->
    if Roles.userIsInRole(Meteor.userId(), [ "admin" ])
      this.next()
    else
      this.render('unauthorized')

Router.route '/residents',
  name: 'listResidents'

Router.route '/residents/:_id',
  name: 'updateResidentForm',
  data: ->
    Residents.findOne(@params._id)