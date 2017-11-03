/// @description Collision with ship

motion_add(point_direction(other.x, other.y, x, y), 1);

// Keep from getting stuck
if (x == other.x && y == other.y) {
	if(id > other.id){
		x += 1;
	}else {
		x -= 1;
	}
}
