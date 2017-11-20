
ship = argument0
tree = argument1;

if (instance_exists(tree)) {
	if(tree.food_count > 0) {
		ship.food_count += ship.harvest;
		tree.food_count -= ship.harvest;
	} else {
		tree.image_index = 0;
	}
}
ship.state = "mined"

