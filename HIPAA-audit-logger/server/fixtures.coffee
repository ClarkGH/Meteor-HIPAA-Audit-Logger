if HipaaLog.find().count() is 0
  HipaaLog.insert
    eventType: "Create"
    userID: "12345"
    userName: "Star Fox"
    collectionName: "Bleu"
    recordId: "54321"
    message: "Timmy didn't eat his peas"
    patientId: "98765"

  HipaaLog.insert
    eventType: "init"
    userID: "12323"
    userName: "Star Wolf"
    collectionName: "Marron"
    recordId: "54322"
    message: "Can't let you drink that, Starbucks"
    patientId: "98435"

  HipaaLog.insert
    eventType: "delete"
    userID: "34567"
    userName: "Star Burrito"
    collectionName: "Violet"
    recordId: "54323"
    message: "Delicious"
    patientId: "98799"

if Meteor.users.find().fetch().length is 0
  console.log "Creating users: "
  users = [
    name: "Normal User"
    email: "normal@example.com"
    roles: []
  ,
    name: "View-Secrets User"
    email: "view@example.com"
    roles: [ "view-secrets" ]
  ,
    name: "Manage-Users User"
    email: "manage@example.com"
    roles: [ "manage-users" ]
  ,
    name: "Admin User"
    email: "admin@example.com"
    roles: [ "admin" ]
   ]
  _.each users, (userData) ->
    id = undefined
    user = undefined
    console.log userData
    id = Accounts.createUser(
      email: userData.email
      password: "apple1"
      profile:
        name: userData.name
    )