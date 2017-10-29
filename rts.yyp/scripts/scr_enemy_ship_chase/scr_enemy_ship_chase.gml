/// scr_ship_chase

// Set Friction to 0
friction = 0;

// Move towards target if exists
if (instance_exists(foe)) {
	// Attack foe when reached
	if(distance_to_point(foe.x, foe.y) <= 64) {
		state = "attack";
	} else {
		motion_add(point_direction(x, y, foe.x, foe.y), acc);
	}
}

// Don't go too fast
if (speed > spd) speed = spd;