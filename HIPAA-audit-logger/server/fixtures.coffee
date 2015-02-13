if HipaaLog.find().count() is 0
  HipaaLog.insert
    timestamp: "This O'Clock"
    type: "Create"
    userId: "12345"
    userName: "Star Fox"
    recordId: "54321"
    collectionName: "Bleu"
    message: "Timmy didn't eat his peas"
    residentId: "98765"

  HipaaLog.insert
    timestamp: "More time"
    type: "init"
    userId: "12323"
    userName: "Star Wolf"
    recordId: "54322"
    collectionName: "Marron"
    message: "Can't let you drink that, Starbucks"
    residentId: "98435"

  HipaaLog.insert
    timestamp: "Even more time"
    type: "delete"
    userId: "34567"
    userName: "Star Burrito"
    recordId: "54323"
    collectionName: "Violet"
    message: "Delicious"
    patientId: "98799"

if Residents.find().count() is 0
  Residents.insert
    name: "Mario"
    roomNumber: "142"

  Residents.insert
    name: "Luigi"
    roomNumber: "123"

  Residents.insert
    name: "Koopa"
    roomNumber: "132"