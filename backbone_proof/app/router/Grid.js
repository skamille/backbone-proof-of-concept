rtr.router.Grid = Backbone.Router.extend({
	routes: {
		"/" 	: "index",
		"/:page": "index"
	},
	index: function(page){
		var dresses = new rtr.collection.Dresses();
		dresses.fetch({success: function(){
				var $dressGridContainer = $("#dress-grid"),
					$dressGridList = $dressGridContainer.find("ul");
				$dressGridList.detach();
				dresses.each(function(dress){
					dress.view = new rtr.view.DressGrid({model: dress});
					dress.view.render();
					console.log("dress: ", dress.view.el);
					$dressGridList.append(dress.view.el);
				});
				$dressGridContainer.append($dressGridList);
				console.log("dresses", dresses);
			}
		});
	}
});
