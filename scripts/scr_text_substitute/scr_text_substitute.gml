function scr_text_substitute(_string)
{
	for(var _i = 0; _i < argument_count - 1; _i++)
	{
		_string = string_replace(
			_string,
			"{" + string(_i) + "}",
			string(argument[_i+1])
		);
	}
	
	return _string;
}