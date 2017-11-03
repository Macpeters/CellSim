/// @description Set up globals and vars
global.max_spawns = 0;
global.num_trees = 1;
global.num_greedy_ships = 2;

global.settings = [
	25,		//max spawns (not adjustable)
	11,		//max tree food
	2		//num_greedy_ships
];

global.current_font = fnt_gui;

row1 = 40;
row2 = 90;
row3 = 140;

column1 = 50;
column2 = 110;
column3 = 190;
column4 = 285;

button_left = column2 - 9;
button_right = column3 + 30;

// button_target = argument0; //the global setting to control
// raise_target = argument1; //boolean: if false, it lowers the value;
// step = argument2; //how much to change the value
// max_value = argument3; 
// button = argument4;  //the button instance
var max_spawns = 25;
//max tree food
var trees_step = 1;
var b1 = instance_create_layer(button_left, row1, layer, obj_settings_button);
scr_set_button_props(global.num_trees, false, trees_step, max_spawns, b1);
var b2 = instance_create_layer(button_right, row1, layer, obj_settings_button);
scr_set_button_props(global.num_trees, true, trees_step, max_spawns, b2);

//max food allowance
var ships_step = 1;
var b3 = instance_create_layer(button_left, row2, layer, obj_settings_button);
scr_set_button_props(global.num_greedy_ships, false, ships_step, max_spawns, b3);
var b4 = instance_create_layer(button_right, row2, layer, obj_settings_button);
scr_set_button_props(global.num_greedy_ships, true, ships_step, max_spawns, b4);