

Model = require('./schemas')

class Spider

	constructor: ->
		@Event = Model.Event
		@Count = Model.Count

	log: ->
		Model.Event.create.apply(Model.Event, arguments)

	count: ->
		Model.Count.update.apply(Model.Count, arguments)

	@configure: (options) ->
		Model.init(options)

module.exports = Spider