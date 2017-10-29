/// @description Set up globals and vars

global.max_tree_food = 0;
global.max_food_allowance = 1;

global.settings = [
	500,	//max tree food
	200		//max food allowance
];

global.current_font = fnt_gui;

row1 = 10;
row2 = 40;
row3 = 100;

column1 = 10;
column2 = 100;
column3 = 180;
column4 = 275;

// button_target = argument0; //the global setting to control
// raise_target = argument1; //boolean: if false, it lowers the value;
// step = argument2; //how much to change the value
// max_value = argument3; 
// button = argument4;  //the button instance

//max tree food
mtf_step = 100;
mtf_max = 5000;
b1 = instance_create_layer(column2, row1, layer, obj_settings_button);
scr_set_button_props(global.max_tree_food, false, mtf_step, mtf_max, b1);
b2 = instance_create_layer(column3, row1, layer, obj_settings_button);
scr_set_button_props(global.max_tree_food, true, mtf_step, mtf_max, b2);

//max food allowance
mfa_step = 10;
mfa_max = 500;
b3 = instance_create_layer(column2, row2, layer, obj_settings_button);
scr_set_button_props(global.max_food_allowance, false, mfa_step, mfa_max, b3);
b4 = instance_create_layer(column3, row2, layer, obj_settings_button);
scr_set_button_props(global.max_food_allowance, true, mfa_step, mfa_max, b4);