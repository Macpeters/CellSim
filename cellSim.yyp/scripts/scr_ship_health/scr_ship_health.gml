//Die
if (hp <= 0 || food_count <= 0) {
	hp = 0;
	food_count = 0;
	state = "dead";;
	sprite_index = spr_ship_dead;
	depth = 10;
} else if(food_count < max_food_allowance){
	//Locate nearest food source
	scr_nearest_food_source();
} else if(food_count == max_food_allowance){
	food_count -= 6;
	offspring = instance_create_layer(x,y,layer, obj_ship);
	scr_ship_init(offspring, ship_type);
	global.ships_alive += 1;
}
