/// @description

if (instance_exists(obj_duck))	{
	var duckValue=ds_map_find_value(duckMap,obj_duck.id);
	
	if (is_undefined(duckValue))	{
		ds_map_add(duckMap,obj_duck.id,true);		//The duck exists
		ds_list_add(duckIds,obj_duck.id);			//Add the ducks ID to the list
	}
	else if (duckValue==false)
		instance_destroy();
}