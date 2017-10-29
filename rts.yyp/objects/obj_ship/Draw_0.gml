/// @description Draw the text

if (selected) {
	draw_set_alpha(.25);
	draw_circle_color(x, y, 16, c_lime, c_lime, true);
	draw_set_alpha(0.1);
	draw_circle_color(x, y, 16, c_lime, c_lime, false);
	draw_set_alpha(1);
}

draw_self();

draw_set_font(fnt_gui);
string_text = string(food_count) + "/" + string(global.settings[global.max_food_allowance]) +  " - " + string(state);
draw_text_color(x, y+16, string_text, c_white, c_white, c_white, c_white, 1);