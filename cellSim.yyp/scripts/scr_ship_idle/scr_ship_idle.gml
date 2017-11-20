/// @description IDLE

// Set some friction
friction = 0.5 * global.settings[global.game_speed] * speed;

//Switch to hungry 
if(food_count < max_food_allowance){

	if(instance_exists(target) && nearest_food_source != noone){
		state = "mine";
		target.x = nearest_food_source.x;
		target.y = nearest_food_source.y;
	}
}


