function json_load(_file) {
	if (file_exists(_file)) {
		var _buffer = buffer_load(_file),
			_string	= buffer_read(_buffer,buffer_string),
			_json	= json_decode(_string);
			show_debug_message("JSON STRING: "+_string);
			buffer_delete(_buffer);
			return _json;
	} else {
		show_debug_message("JSON Load failed");
		return -1;
	}
}
	
