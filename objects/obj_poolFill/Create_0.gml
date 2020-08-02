/// @description

// Inherit the parent event
event_inherited();

visible=false;
image_speed=0;
image_index=0;

linkedSolid=inst_242F5831;

if (checkEventComplete(Event.FilledPool))	{
	instance_destroy(linkedSolid);
	instance_destroy(obj_cat);
	visible=true;
	image_index=image_number-1;
}