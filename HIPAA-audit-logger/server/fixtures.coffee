if HipaaLog.find().count() is 0
  HipaaLog.insert
    eventType: "Create"
    userId: "12345"
    userName: "Star Fox"
    collectionName: "Bleu"
    recordId: "54321"
    message: "Timmy didn't eat his peas"
    patientId: "98765"

  HipaaLog.insert
    eventType: "init"
    userId: "12323"
    userName: "Star Wolf"
    collectionName: "Marron"
    recordId: "54322"
    message: "Can't let you drink that, Starbucks"
    patientId: "98435"

  HipaaLog.insert
    eventType: "delete"
    userId: "34567"
    userName: "Star Burrito"
    collectionName: "Violet"
    recordId: "54323"
    message: "Delicious"
    patientId: "98799"