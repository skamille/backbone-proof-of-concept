rtr.model.Dress = Backbone.Model.extend({
	urlRoot: rtr.env.baseUrl + '/dresses',
	parse: function(data){
		return data;
	}
});

