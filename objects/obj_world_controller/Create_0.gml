/// @description Create ships and trees
global.ships_alive = 0;
var ratio_of_trees = global.settings[global.num_trees] / global.settings[global.max_spawns] * 100;

for (var i = 0; i < 6; i += 1) {
	for (var j = 0; j < 4; j +=1) {
		
		var xpos = 40 + (100 * i)
		var ypos = 40 + (90 * j)
		
		if(random_range(0, 100) > ratio_of_trees) {
			//Station
			var station = scr_create_object(obj_station, xpos, ypos);
			scr_ship_init(station, "station");
			//Ship
			var ship = scr_create_object(obj_ship, xpos, ypos);
			scr_ship_init(ship, "default");
			global.ships_alive += 1;
			
		}else {
			//Tree
			scr_create_object(obj_tree, xpos, ypos);
		}
	}
}
global.ships_created = global.ships_alive;

global.settings[global.starting_cells] = instance_number(obj_ship);
global.settings[global.time_elapsed] = 0;
//set the alarm for the clock to update
alarm[0] = scr_game_speed;
