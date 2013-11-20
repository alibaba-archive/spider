{Schema} = require('mongoose')

module.exports = EventSchema = new Schema
	user: { type: Schema.Types.ObjectId }
	email: { type: String }
	type: { type: String }
	created: { type: Date, default: Date.now }
	description: { type: String }
	action: { type: String }
	cost: { type: Number }
	status: { type: String }