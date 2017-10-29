/// @description 

if(raise_target) {
	global.settings[button_target] += step;
	if(global.settings[button_target] == max_value){
		global.settings[button_target] = max_value;
	}
}else {
	global.settings[button_target] -= step;
	if(global.settings[button_target] < 0){
		global.settings[button_target] = 0;
	}
}
