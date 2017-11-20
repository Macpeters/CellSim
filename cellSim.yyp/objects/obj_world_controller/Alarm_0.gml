/// @description Update the clock
if(instance_number(obj_ship) > 0){
	global.settings[global.time_elapsed] += 1;
	alarm[0] = scr_game_speed;
}
