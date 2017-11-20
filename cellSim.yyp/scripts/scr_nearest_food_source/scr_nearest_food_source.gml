var _x = x;
var _y = y; 

var shortest_distance = 1000000000;
var target_source = noone, 
var distance;

with ( obj_tree ) {
	if(food_count > 0) {
        distance = point_distance(x,y,_x,_y);
        if (distance < shortest_distance ) {
            shortest_distance = distance;
            target_source = id;
        }
    }
}
nearest_food_source = target_source;

//Get desperate and steal from a wealthier ship
if(nearest_food_source == noone && ship_type == "default" && food_count < desperation_level){
	shortest_distance = 1000000000;
	with ( obj_ship ) {
		if(food_count > desperation_level) {
			distance = point_distance(x,y,_x,_y);
			if (distance < shortest_distance ) {
			    shortest_distance = distance;
			   target_source = id;
			}
		}	
	}
	nearest_food_source = target_source;
	sprite_index = spr_ship_player;
}