/// @description If home, idle

if(state == "mined" && other == home_station) {
	state = "idle";
}