/// @description  Control the state

//Die
if (hp <= 0 || food_count <= 0) {
	instance_destroy();
}

//Locate nearest food source
if(food_count <= max_food_allowance){
	scr_nearest_food_source();
}


if (state == "move") {
	scr_ship_move();
} else if (state == "idle") {
	if(instance_exists(target) && nearest_tree != noone){
		state = "mine";
		target.x = nearest_tree.x;
		target.y = nearest_tree.y;
	} else {
		scr_ship_idle();
	}	
}

if (state == "mine"){
	scr_ship_move();
	scr_nearest_food_source();
	if(nearest_tree != noone){
		target.x = nearest_tree.x;
		target.y = nearest_tree.y;
	}
} else if (state == "mined") {
	scr_ship_move();
	if(instance_exists(home_station)){
		target.x = home_station.x;
		target.y = home_station.y;
	}
}
