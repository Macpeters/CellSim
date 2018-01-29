///@description - globals setup in rm_init
global.current_font = fnt_gui;

row1 = 20;
row2 = 60;
row3 = 100;

column1 = 20;
column2 = 60;
column3 = 140;
column4 = 200;

button_left = column2 - 9;
button_right = column3 + 30;

// button_target = argument0; //the global setting to control
// raise_target = argument1; //boolean: if false, it lowers the value;
// step = argument2; //how much to change the value
// max_value = argument3; 
// button = argument4;  //the button instance
var max_spawns = 24;
//population vs food
var trees_step = 1;
var b1 = scr_create_object(obj_settings_button, button_left, row1);
scr_set_button_props(global.num_trees, false, trees_step, max_spawns, b1);
var b2 = scr_create_object(obj_settings_button, button_right, row1);
scr_set_button_props(global.num_trees, true, trees_step, max_spawns, b2);

//ship types
var ships_step = 1;
var b3 = scr_create_object(obj_settings_button, button_left, row2);
scr_set_button_props(global.num_greedy_ships, false, ships_step, max_spawns, b3);
var b4 = scr_create_object(obj_settings_button, button_right, row2);
scr_set_button_props(global.num_greedy_ships, true, ships_step, max_spawns, b4);

//game time
var time_step = 1;
var max_speed = global.settings[global.max_game_speed];
var b5 = scr_create_object(obj_settings_button, button_left, row3);
scr_set_button_props(global.game_speed, false, time_step, max_speed, b5);
var b6 = scr_create_object(obj_settings_button, button_right, row3);
scr_set_button_props(global.game_speed, true, time_step, max_speed, b6);