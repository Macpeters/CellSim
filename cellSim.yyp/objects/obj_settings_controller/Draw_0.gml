/// @description Draw all teh text

draw_set_font(fnt_gui);
var text_colour = c_white;

//bar defaults
var rect_bg = c_dkgray;
var rect_fg = c_green;
var rect_width = 100;
var rect_half_height = 15/2;

//population vs food
var tree_ratio = round(global.settings[global.num_trees] / global.settings[global.max_spawns] * 100);
draw_sprite_ext( spr_station, 0, column1, row1, 0.75, 0.75, 0, text_colour, 1 );
draw_set_colour(rect_bg);
draw_rectangle(column2, row1 - rect_half_height, column2 + rect_width, row1 + rect_half_height, false);
draw_set_colour(rect_fg);
draw_rectangle(column2, row1 - rect_half_height, column2 + tree_ratio, row1 + rect_half_height, false);
draw_sprite_ext( spr_tree, 1, column4, row1, 0.75, 0.75, 0, text_colour, 1 );

//ship types
var greedy_ship_ratio = round(global.settings[global.num_greedy_ships] / global.settings[global.max_spawns] * 100);
draw_sprite_ext( spr_ship_default, 1, column1, row2, 1, 1, 0, c_white, 1 );
draw_set_colour(rect_bg);
draw_rectangle(column2, row2 - rect_half_height, column2 + rect_width, row2 + rect_half_height, false);
draw_set_colour(rect_fg);
draw_rectangle(column2, row2 - rect_half_height, column2 + greedy_ship_ratio, row2 + rect_half_height, false);
draw_sprite_ext( spr_ship_greedy, 1, column4, row2, 1, 1, 0, c_white, 1 );

//game speed
var time_step = 1;
var speed_ratio = round((global.settings[global.game_speed]/ global.settings[global.max_game_speed]) * 100)
draw_sprite_ext( spr_clock, 0, column1, row3, 1, 1, 0, c_white, 1 );
draw_set_colour(rect_bg);
draw_rectangle(column2, row3 - rect_half_height, column2 + rect_width, row3 + rect_half_height, false);
draw_set_colour(rect_fg);
draw_rectangle(column2, row3 - rect_half_height, column2 + speed_ratio, row3 + rect_half_height, false);
draw_sprite_ext( spr_clock, 1, column4, row3, 1, 1, 0, c_white, 1 );