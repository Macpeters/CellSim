///scr_ship_move

// Set the friction to 0
friction = 0;

// move towards target if exists
if (instance_exists(target)) {
	motion_add(point_direction(x, y, target.x, target.y), acc);
	
	// delete target when reached
	if(position_meeting(x, y, target)){
		state = "idle";
	}
}

// Don't go faster than max speed
if (speed > spd) speed = spd;

