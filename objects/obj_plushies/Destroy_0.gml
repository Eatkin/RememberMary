/// @description

//Destroy the arrows so we can no longer go anywhere else
with (obj_arrow)
	if (x>80)
		instance_destroy();
		
//Activate the walls
instance_activate_object(inst_39640F0A);
instance_activate_object(inst_3C282846);
instance_activate_object(inst_476B730E);