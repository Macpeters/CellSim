///scr_ship_init(ship, ship_type)
ship = argument0;
ship_type = argument1;

//Food
ship.target = instance_create_layer(100, 100, layer, obj_target);
ship.nearest_tree = noone;


//State
ship.state = "idle";
ship.selected = false;

//STATS (by ship type)
// If it's not a station, randomize based on settings
if(ship_type == "default"){
	var ratio_of_greedy_ships = global.settings[global.num_greedy_ships] / global.settings[global.max_spawns] * 100;
	var random_ship_choice = random_range(0, 100);
	if(random_ship_choice < ratio_of_greedy_ships){
		ship_type = "greedy"
	}
}

{ switch (ship_type) {
	case "station":
		ship.spd = 0;
		ship.acc = 0;
		ship.hp = 20;
		ship.food_count = 0;
		ship.max_food_allowance = 0;
		ship.sprite_index = spr_station;
		break;
	case "greedy":
		ship.spd = 1;
		ship.acc = .5;
		ship.hp = 5;
		ship.food_count = 50;
		ship.max_food_allowance = 100;
		ship.sprite_index = spr_ship_greedy;
		break;
	case "default":
		ship.spd = 1;
		ship.acc = .5;
		ship.hp = 5;
		ship.food_count = 30;
		ship.max_food_allowance = 60;
		break;
   }
}


