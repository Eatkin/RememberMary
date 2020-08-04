/// @description

if (owner==noone)
	exit;
	
with (owner)
	event_user(1);
	
if (instance_exists(obj_choiceA))
	instance_destroy(obj_choiceA);
	
instance_destroy();