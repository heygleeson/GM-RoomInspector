/// @desc ???
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(room_width-5,5,"@heygleeson 2020-11-16");

draw_set_halign(fa_left);
draw_text(5,5,"[Map Viewer] : (I) Run Inspector");
if (active) {
	for(var i = 0; i < array_length(roomArray); i++) {
		draw_rectangle(x+roomArray[i].x,y+16+roomArray[i].y,x+roomArray[i].x2,y+16+roomArray[i].y2,1);
		draw_text(x+roomArray[i].x+2,y+16+roomArray[i].y+2,roomArray[i].name);

	}
	draw_set_color(c_red);
	for(var i = 0; i < array_length(roomArray); i++) {
		for (var d = 0; d < array_length(roomArray[i].doors); d++) {
			var _x = x + roomArray[i].x,
				_y = y + 16 + roomArray[i].y;
			draw_circle(_x+roomArray[i].doors[d].x div DIV,_y+roomArray[i].doors[d].y div DIV,3,1);
		}
	}
}