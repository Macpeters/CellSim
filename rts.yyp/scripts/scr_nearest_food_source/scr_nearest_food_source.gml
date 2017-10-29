var _x = x;
var _y = y; 

var shortest_distance = 1000000000;
var target_tree = noone, 
var distance;

with ( obj_tree ) {
	if(food_count > 0) {
        distance = point_distance(x,y,_x,_y);
        if (distance < shortest_distance ) {
            shortest_distance = distance;
            target_tree = id;
        }
    }
}
nearest_tree = target_tree;