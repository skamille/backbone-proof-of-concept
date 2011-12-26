rtr.collection.Dresses = Backbone.Collection.extend({
	url: rtr.env.baseUrl + "/dresses",
	model: rtr.model.Dress
});
