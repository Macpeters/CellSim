/// @description  Control the state

event_inherited();

if (state == "move") {
	scr_ship_move();
} else if (state == "idle") {
	scr_ship_idle();
} else if (state == "mine") {
	scr_ship_move();
	scr_nearest_food_source();
	if(nearest_tree != noone){
		target.x = nearest_tree.x;
		target.y = nearest_tree.y;
	}
	/*
	if(instance_exists(obj_tree)){
		target.x = obj_tree.x;
		target.y = obj_tree.y;
	}*/
} else if (state == "mined") {
	scr_ship_move();
	if(instance_exists(home_station)){
		target.x = home_station.x;
		target.y = home_station.y;
	}
}


/*

// Find enemy
if (instance_exists(obj_enemy_ship)) {
	foe = instance_nearest(x, y, obj_enemy_ship);
} else {
	foe = -1;
}


// Face the direction of movement
if (foe != -1 && point_distance(x, y, foe.x, foe.y) < 128) {
	image_angle = point_direction(x, y, foe.x, foe.y);
	if(alarm[0] = -1 && weapon != -1) {
		var laser = instance_create_layer(x, y, rm_test, weapon)
		laser.direction = image_angle;
		laser.image_angle = image_angle;
		alarm[0] = 30;
	}
} else {
	image_angle = direction;
}
*/


