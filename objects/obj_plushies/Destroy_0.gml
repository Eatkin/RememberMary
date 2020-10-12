/// @description

//Destroy the arrows so we can no longer go anywhere else
if (checkEventComplete(Event.TakenPlushies))	{
	with (obj_arrow)
		if (x>80)
			instance_destroy();
			
	
}

//Create a pressure plate
var plate=instance_create_layer(576,160,layer,obj_pressurePlate);
var interact=instance_place(x,y,obj_interact);
interact.linkedInstance=plate;