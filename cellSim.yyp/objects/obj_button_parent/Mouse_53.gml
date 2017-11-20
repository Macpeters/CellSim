/// @description Create ship

if (global.crystals >= cost) {
	instance_create_layer(x, y, rm_test, ship);
	global.crystals -= cost;
}

image_index = 0;
image_xscale = 1;
image_yscale = 1;

with(obj_button_parent) {
	instance_deactivate_object(self);
}
