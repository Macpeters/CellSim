/// @description Set up globals and vars
global.max_spawns = 0;
global.num_trees = 1;
global.num_greedy_ships = 2;
global.starting_cells = 3;
global.time_elapsed = 4;
global.game_speed = 5;
global.max_game_speed = 6;

global.settings = [
	25,		//max spawns (not adjustable)
	11,		//max tree food
	2,		//num_greedy_ships
	0,		//starting_cells
	0,		//time_elapsed
	3,		//game_speed
	10		//max_game_speed
];

room_goto(rm_settings);