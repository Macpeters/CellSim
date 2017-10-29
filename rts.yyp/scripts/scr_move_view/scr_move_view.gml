/// scr_move_view

// Get keyboard input
var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var down = keyboard_check(vk_down) || keyboard_check(ord("S"));


// Move the view according to the keyboard input
new_x = camera_get_view_x(view_camera[0]);
new_y = camera_get_view_y(view_camera[0]);
if (right){
	new_x += 4;
}
if (left){
	new_x -= 4;
}
if (up){
	new_y -= 4;
}
if (down){
	new_y += 4;
}

camera_set_view_pos(view_camera[0], new_x, new_y);



