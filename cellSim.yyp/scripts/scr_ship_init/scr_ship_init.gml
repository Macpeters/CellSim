/// INIT (ship, ship_type)
ship = argument0;
ship_type = argument1;
var default_speed = global.settings[global.game_speed];

//Food
ship.target = instance_create_layer(100, 100, layer, obj_target);
ship.nearest_food_source = noone;


//State
ship.state = "idle";
ship.selected = false;
ship.ship_type = ship_type;

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
		ship.harvest = 0;
		ship.desperation_level = 0;
		ship.max_food_allowance = 0;
		ship.sprite_index = spr_station;
		break;
	case "greedy":
		ship.spd = default_speed;
		ship.acc = .5;
		ship.hp = 5;
		ship.food_count = 50;
		ship.harvest = 3;
		ship.max_food_allowance = 80;
		ship.desperation_level = 30;
		ship.sprite_index = spr_ship_greedy;
		break;
	case "default":
		ship.spd = default_speed;
		ship.acc = .5;
		ship.hp = 5;
		ship.food_count = 25;
		ship.harvest = 2;
		ship.desperation_level = 15
		ship.max_food_allowance = 60;
		break;
   }
}


