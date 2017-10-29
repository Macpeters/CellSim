/// @description Control the state

event_inherited();

if (state == "move") {
	scr_ship_move();
} else if (state == "idle") {
	scr_ship_idle();
} else if (state == "mine") {
	scr_ship_move();
	if(instance_exists(obj_tree)){
		target.x = obj_tree.x;
		target.y = obj_tree.y;
	}
} else if (state == "mined") {
	scr_ship_move();
	if(instance_exists(home_station)){
		target.x = home_station.x;
		target.y = home_station.y;
	}
}
