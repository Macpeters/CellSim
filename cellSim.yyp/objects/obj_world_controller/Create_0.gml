/// @description Create ships and trees
global.ships_alive = 0;
var ratio_of_trees = global.settings[global.num_trees] / global.settings[global.max_spawns] * 100;

for (var i = 0; i < 6; i += 1) {
	for (var j = 0; j < 4; j +=1) {
		
		var xpos = 40 + (100 * i)
		var ypos = 40 + (90 * j)
		
		if(random_range(0, 100) > ratio_of_trees) {
			//Station
			var station = instance_create_layer(xpos,ypos,layer, obj_station);
			scr_ship_init(station, "station");
			//Ship
			var ship = instance_create_layer(xpos,ypos,layer, obj_ship);
			scr_ship_init(ship, "default");
			global.ships_alive += 1;
			
		}else {
			//Tree
			instance_create_layer(xpos,ypos,layer, obj_tree);
		}
	}
}
global.ships_created = global.ships_alive;

global.settings[global.starting_cells] = instance_number(obj_ship);
global.settings[global.time_elapsed] = 0;
//set the alarm for the clock to update
alarm[0] = scr_game_speed;
