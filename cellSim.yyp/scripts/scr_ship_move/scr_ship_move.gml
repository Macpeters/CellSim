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

//Keep from vanishing outside the room
var half_width = sprite_width/2;
var half_height = sprite_height/2;
if(x <= 0 + half_width){
	x = 0 + half_width;
	state = "idle";
} else if(x >= room_width - half_width){
	x = room_width - half_width;;
	state = "idle";
}
if(y <= 0 + half_height){
	y = 0 + half_height; 
	state = "idle";
} else if (y >= room_height - half_height){
	y = room_height - half_height;
	state = "idle"
}

// Don't go faster than max speed
if (speed > spd) speed = spd;

