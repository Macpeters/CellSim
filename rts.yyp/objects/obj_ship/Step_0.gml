/// @description Control basic state

if (hp <= 0) {
	instance_destroy();
}

if(food_count <= global.settings[global.max_food_allowance]){
	//nearest_tree = instance_nearest(x, y, obj_tree);
	scr_nearest_food_source();
	if(state == "idle"){
		if(instance_exists(target) && nearest_tree != noone){
			state = "mine";
			target.x = nearest_tree.x;
			target.y = nearest_tree.y;
		}
	}
}


if (state == "move") {
	scr_ship_move();
} else if (state == "idle") {
	scr_ship_idle();
}

