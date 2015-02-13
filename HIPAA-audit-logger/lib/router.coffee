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
    console.log "Hi"
    if Roles.userIsInRole(Meteor.userId(), [ "admin" ])
      console.log Meteor.userId()
      console.log "This is ", Roles.userIsInRole(Meteor.userId(), [ "admin" ])
      this.next()
    else
      this.render('unauthorized')

# Router.route '/competition/:_id', {
#     name: 'competition'
#     waitOn: ->
#       [
#         Meteor.subscribe('competitions', {_id: @params._id}),
#         Meteor.subscribe('results', {competitionId: @params._id, userBest: true})
#       ]
#     onBeforeAction: ->
#       AccountsEntry.signInRequired(@)
#       profileRequired()
#     data: ->
#       competition: Competitions.findOne({_id: @params._id})

#   }


# profileRequired = ->
#   if Meteor.user() and not Meteor.user().profile?.lbs
#     Router.go('profile')
#     FlashMessages.sendWarning("Please fill out your profile before continuing.")