/// @description  Control the state

scr_ship_health();

if (state == "move") {
	scr_ship_move();
} else if (state == "idle") {
	scr_ship_idle();
}

if (state == "mine"){
	scr_ship_move();
	scr_nearest_food_source();
	if(nearest_food_source != noone){
		target.x = nearest_food_source.x;
		target.y = nearest_food_source.y;
	}
} else if (state == "mined") {
	scr_ship_move();
	if(instance_exists(home_station)){
		target.x = home_station.x;
		target.y = home_station.y;
	}
} else if (state == "dead"){
	scr_ship_idle();
	if(image_index > (image_number - 1)){
		global.ships_alive -= 1;
		instance_destroy();
	}
}
