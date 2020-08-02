/// @description

// Inherit the parent event
event_inherited();

if (!checkEventComplete(Event.KilledSophie))	{
	instance_create_layer(x,y,layer,obj_purseTrophy);
	instance_destroy();
}