/// @description Draw self and selection box

if (px != -1 and py != -1) {
	draw_set_alpha(0.25);
	draw_rectangle_color(px, py, mouse_x, mouse_y, c_lime, c_lime, c_lime, c_lime, true);
	draw_set_alpha(.1)
	draw_rectangle_color(px, py, mouse_x, mouse_y, c_lime, c_lime, c_lime, c_lime, false);
	draw_set_alpha(1);
}

draw_self();
