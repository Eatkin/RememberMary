/// @description

if (owner==noone)
	exit;
	
with (owner)
	event_user(0);
	
if (instance_exists(obj_choiceB))
	instance_destroy(obj_choiceB);
	
instance_destroy();