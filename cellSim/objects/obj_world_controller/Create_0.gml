/// @description Create ships and trees
var ratio_of_trees = global.settings[global.num_trees] / global.settings[global.max_spawns] * 100;

for (var i = 0; i < 4; i += 1) {
	for (var j = 0; j < 4; j +=1) {
		
		var xpos = 40 + (170 * i)
		var ypos = 40 + (80 * j)
		
		if(random_range(0, 100) > ratio_of_trees) {
			//Station
			var station = instance_create_layer(xpos,ypos,layer, obj_station);
			scr_ship_init(station, "station");
			//Ship
			var ship = instance_create_layer(xpos,ypos,layer, obj_ship);
			scr_ship_init(ship, "default");
		}else {
			//Tree
			instance_create_layer(xpos,ypos,layer, obj_tree);
		}
	}
}
