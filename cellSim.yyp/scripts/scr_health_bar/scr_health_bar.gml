// Colors
var rect_color = c_blue;
if(food_count < desperation_level){
	rect_color = c_red;	
} else if(food_count < desperation_level + 10){
	rect_color = c_yellow;
} else if(food_count < max_food_allowance){
	rect_color = c_green;
}
draw_set_colour(rect_color);

// rectangle coordinates
var rWidth = food_count / max_food_allowance * 100;
if(rWidth > 25) { rWidth = 25; }
var rHeight = 2;
var rx = x - 12;
var ry = y - 15;

draw_rectangle(rx, ry, rx + rWidth, ry + rHeight, false);

//draw text values

draw_set_font(fnt_gui);
string_text = string(food_count);
draw_text_color(x, y+16, string_text, c_white, c_white, c_white, c_white, 1);
