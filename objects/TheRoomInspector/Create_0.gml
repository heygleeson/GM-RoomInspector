/// @desc Inspector Setup
/*
	Hello, I am TheRoomInspector.
	My job is to visit every room and collect data you might need about them that you couldn't get otherwise.
	Very useful when you are using the Room Editor to make your rooms.
	
	It will take me one frame for every room there is in the project.
	When I'm done, I will output a JSON file for you to save and add to the project.
	Then I will take you back to the room I was created in and disappear.
	
	(I use @JujuAdams' SNAP, which can be found here: https://github.com/JujuAdams/SNAP )
	
	@heygleeson 2020-11-16
*/

persistent	= true;
roomReturn	= room;
roomData	= {};
active		= false;

/*// (Used in Example 2)
roomX		= 0;
roomY		= 0;
roomXMax	= 1500;
roomHMax	= 0;
*/

function inspect_room() constructor {
	index	= room;
	width	= room_width;
	height	= room_height;
	persist = room_persistent;
	
	/*// [Example 1] - Get all 'oDoor' Instance Positions
	doors	= [];
	with (oDoor) {
		other.doors[array_length(other.doors)] = {
			x : x,
			y : y,
		}
	}
	*/
	
	/*// [Example 2] - Set 'World Map' position.
	// (This was my use case. I wanted to create a 'world map' from my created levels)
	// (Here I just give them a default position which I edit later.)
	
	x = other.roomX;
	y = other.roomY;
	
	with (other) {
		roomX += other.width + 64;
		if (other.height > roomHMax) {roomHMax = other.height;}
		if (roomX > roomXMax) {
			roomX = 0;
			roomY += roomHMax + 64;
			roomHMax = 0;
		}
	}
	*/
}