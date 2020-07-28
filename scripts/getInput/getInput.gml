var inputToCheck=argument0;
var value=0;

with (obj_inputs)
	value=ds_map_find_value(inputMap,inputToCheck);
	
return value;