button_target = argument0; //the global setting to control
raise_target = argument1; //boolean: if false, it lowers the value;
step = argument2; //how much to change the value
max_value = argument3; 
button = argument4;  //the button instance


button.button_target = button_target;
button.raise_target = raise_target;
button.step = step;
button.max_value = max_value;


if(!raise_target){
	button.image_xscale  = -1;
}