
ship = argument0
other_ship = argument1;
steal_amount = ship.harvest * 2;

if (instance_exists(other_ship) && ship.state != "mined") {
	if(other_ship.food_count > other_ship.desperation_level) {
		ship.food_count += steal_amount;
		other_ship.food_count -= steal_amount;
		bubble = instance_create_layer(other_ship.x - 32, other_ship.y - 32, layer, obj_speech_bubble);
		bubble.ship = other_ship;
	} else {
		other_ship.hp -= 1;
	}
}
ship.state = "mined"

