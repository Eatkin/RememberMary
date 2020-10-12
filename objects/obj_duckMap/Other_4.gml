/// @description

if (instance_exists(obj_babyDuck))	{
	var duckValue=ds_map_find_value(duckMap,obj_babyDuck.id);
	
	if (is_undefined(duckValue))	{
		ds_map_add(duckMap,obj_babyDuck.id,true);		//The duck exists
		ds_list_add(duckIds,obj_babyDuck.id);			//Add the ducks ID to the list
	}
	else if (duckValue==false)
		instance_destroy(obj_babyDuck);
}