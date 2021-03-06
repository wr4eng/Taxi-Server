# message collection

mongodb = require('mongodb')

# message schema
# { receiver: "liufy", type: "call-taxi-reply", timestamp: 1235643512432 [, ...] }

module.exports = Message =
  setup: (db) ->
    this.collection = new mongodb.Collection(db, 'messages')

    this.collection.ensureIndex {receiver: 1}, (err, name)->
    this.collection.ensureIndex {type: 1}, (err, name)->

