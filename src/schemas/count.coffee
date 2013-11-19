{Schema} = require('mongoose')

module.exports = CountSchema = new Schema
	user: { type: Schema.Types.ObjectId }
	email: { type: String }
	created: { type: Date, default: Date.now }
	updated: { type: Date }
	action: { type: String }
	count: { type: Number }