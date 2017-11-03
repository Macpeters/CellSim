/// @description Draw tree and food

draw_set_font(fnt_gui);
string_text = string(food_count) + "/" + string(starting_food_count);
draw_text_color(x+30, y+16, string_text, c_white, c_white, c_white, c_white, 1);
draw_self();