/// @description

// Inherit the parent event
event_inherited();

if (!checkEventComplete(Event.RescuedDucks))	{
	instance_create_layer(x,y,layer,obj_duckTrophy);
	instance_destroy();
}