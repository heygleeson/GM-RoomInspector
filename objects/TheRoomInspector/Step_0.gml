/// @desc Run Inspector
if (active) 
{
	// 2.3.0
	variable_struct_set(roomData, room_get_name(room), new inspect_room()); 
	// 2.3.1+
	//roomData[$ room_get_name(room)] = new inspect_room(); 
	
	if (room_exists(room_next(room))) {room_goto_next();} 
	else 
	{
		// Save Data to JSON.
		var _file = get_save_filename("JSON|*.json","roomData");
		if (_file != undefined) 
		{
			var _json = snap_to_json(roomData,true,false);
			json_save(_json,_file);
		}
		// Task Complete!
		room_goto(roomReturn);
		instance_destroy();
	}
} 
else 
{
	roomReturn	= room;
	room_goto(room_first);
	active		= true;	
}