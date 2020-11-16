/// @desc ???

file	= "roomData.json";
active	= false;

DIV = 4;
if (file_exists(file)) 
{
	active		= true;
	roomArray	= [];
	
	var _buffer		= buffer_load(file),
		_string		= buffer_read(_buffer,buffer_string),
		_roomData	= snap_from_json(_string),
		_roomNames	= variable_struct_get_names(_roomData);
	
	for (var i = 0; i < array_length(_roomNames); i++) 
	{
		var _struct = variable_struct_get(_roomData,_roomNames[i]);
		roomArray[i] = {
			name	: _roomNames[i],
			x		: _struct.x div DIV,
			y		: _struct.y div DIV,
			x2		: (_struct.x + _struct.width) div DIV,
			y2		: (_struct.y + _struct.height) div DIV,
			doors	: _struct.doors
		}
	}
}