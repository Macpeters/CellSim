/// @description Destroy to avoid memory leak

part_type_destroy(global.pt_laser);
part_type_destroy(global.pt_enemy_laser);
part_system_destroy(global.ps);
