/// @description

draw_set_font(fnt_lg_gui);
string_text = "Cells remaining: " + string(global.ships_alive) + " / " + string(global.ships_created);
draw_text_color(20, 20, string_text, c_white, c_white, c_white, c_white, 1);

draw_text_color(500, 20, string(global.settings[global.time_elapsed]), c_white, c_white, c_white, c_white, 1);