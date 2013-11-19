

Model = require('./schemas')

class Spider

	log: ->
		Model.Event.create.apply(Model.Event, arguments)

	count: ->
		Model.Count.update.apply(Model.Count, arguments)

	@configure: (options) ->
		Model.init(options)

module.exports = Spider