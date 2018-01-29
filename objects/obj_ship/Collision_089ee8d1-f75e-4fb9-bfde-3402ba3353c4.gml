/// @description Bump apart

// steal from wealthier ship
if(other == nearest_food_source){
	scr_steal_food(self, other)
	alarm[1] = 20;
} 

//Now move apart, walk over corpses
if(state != "dead" && other.state != "dead"){
	
	// don't get stuck in a bounce between a house and tree
	motion_add(point_direction(other.x, other.y, x + 1, y), 1);

	// Keep from getting stuck
	if (x == other.x && y == other.y) {
		if(id > other.id){
			x += 1;
		}else {
			x -= 1;
		}
	}
}
