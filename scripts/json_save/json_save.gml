function json_save(_string,_file) {
	var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed,1);
	buffer_write(_buffer,buffer_string,_string);
	buffer_save(_buffer,_file);
	buffer_delete(_buffer);
	show_debug_message("JSON STRING: "+_string);
}