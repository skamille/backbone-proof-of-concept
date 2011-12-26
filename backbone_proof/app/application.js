var rtr = rtr || {
	env: {},
	model: {},
	collection: {},
	router: {},
	view: {}
};

rtr.env.baseUrl = "http://localhost:3000";

_.templateSettings = {
  interpolate : /\{\{(.+?)\}\}/g
};

$(function(){
	new rtr.router.Grid();
	Backbone.history.start();
});
