/// @description Change between rooms

// 0 = rm_test
// 1 = rm_settings
/*

switch(room)
{
	case 0: room_goto(rm_settings);
	case 1: room_goto(rm_test);
}
*/

if(room == rm_settings) {
	room_goto(rm_test);
}else {
	room_goto(rm_settings);
}