///scr_toggle_select(press_x, press_y, release_x, release_y)

// Press arguments
var px = argument0;
var py = argument1;

// Release arguements
var rx = argument2;
var ry = argument3;

//Cases (there are 4 different ways to drag the mouse to select)
within_x_selection = (x > px && x < rx) || (x < px && x > rx)
within_y_selection = (y > py && y < ry) || (y < py && y > ry);


selected = (within_x_selection && within_x_selection) ? true : false;
