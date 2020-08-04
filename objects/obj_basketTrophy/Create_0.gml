/// @description

// Inherit the parent event
event_inherited();

if (checkEventComplete(Event.RescuedDucks))	{
	newTrophy=instance_create_layer(x,y,layer,obj_duckTrophy);
	instance_destroy();
	with (newTrophy)	{
		var link=instance_place(x,y,obj_interact);
		link.linkedInstance=id;
	}
}