rtr.view.DressGrid = Backbone.View.extend({
	template: "#dress-grid-box",
	tagName: "li",
	render: function(){
		$(this.el).html(_.template($(this.template).text(), this.model.attributes));
		return this;
	}
});
