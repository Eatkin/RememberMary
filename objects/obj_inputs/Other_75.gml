/// @description

switch(async_load[? "event_type"])	{
		case "gamepad discovered":
			global.pad = async_load[? "pad_index"];
			break;
		case "gamepad lost":
			global.pad=-1;
			gphinputPrev=0;
			gpvinputPrev=0;
			break;
	}