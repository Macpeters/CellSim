/// @description Draw all teh text

draw_set_font(fnt_gui);

draw_text(column1, row1, "Tree Food: ");
draw_text(column4, row1, string(global.settings[global.max_tree_food]));

draw_text(column1, row2, "Food Carry: ");
draw_text(column4, row2, string(global.settings[global.max_food_allowance]));