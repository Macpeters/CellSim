/// @description  Initialize the particle system

global.ps = part_system_create();

// Create the particle type
scr_part_laser_init();
scr_part_enemy_laser_init();
