
mongoose = require('mongoose')
Model = module.exports

modelMap =
	event: 'Event'
	count: 'Count'

Model.readyStatus = 0
Model.init = (options) ->

	mongoose = options.mongoose if options.mongoose

	mongoose = mongoose.connect(options.dbUri) if options.dbUri

	for name, Uname of modelMap
		if mongoose.models[Uname]
			@model = mongoose.model(Uname)
		else
			@model = mongoose.model(Uname, require("./#{name}"))
		Model[Uname] = @model
	Model.readyStatus = 1