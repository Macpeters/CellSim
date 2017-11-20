/// @description Text, Selection, Set Angle

if (selected) {
	draw_set_alpha(.25);
	draw_circle_color(x, y, 16, c_lime, c_lime, true);
	draw_set_alpha(0.1);
	draw_circle_color(x, y, 16, c_lime, c_lime, false);
	draw_set_alpha(1);
}

image_angle = direction;
draw_self();

scr_health_bar();