///scr_ship_init(hp, weapon)

target = instance_create_layer(100, 100, layer, obj_target);
nearest_tree = noone;
food_count = 0;
home_station = instance_nearest(x, y, obj_station);
selected = false;
state = "idle";
spd = 1;
acc = .5;
hp = argument0
weapon = argument1;
