/// scr_move_view

//Settings screen doesn't move.
if(room != rm_settings){
	// Get keyboard input
	var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	var up = keyboard_check(vk_up) || keyboard_check(ord("W"));
	var down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	var cam_speed = 4;

	var min_xy = 0;

	// room 640 X 360
	var max_x = cam_width;
	var max_y = cam_height;

	// Move the view according to the keyboard input
	new_x = camera_get_view_x(view_camera[0]);
	new_y = camera_get_view_y(view_camera[0]);
	
	if (right){
		new_x += cam_speed;
		if(new_x >= max_x) {
			new_x = max_x;
		}
	}
	if (left){
		new_x -= cam_speed;
		if(new_x <= min_xy){
			new_x = min_xy;
		}
	}
	if (up){
		new_y -= cam_speed;
		if(new_y <= min_xy){
			new_y = min_xy;
		}
	}
	if (down){
		new_y += cam_speed;
		if(new_y >= max_y) {
			new_y = max_y;
		}
	}
	camera_set_view_pos(view_camera[0], new_x, new_y);
}




