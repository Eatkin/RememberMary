/// @description

// Inherit the parent event
event_inherited();

if (checkEventComplete(Event.SavedAbigail))	{
	instance_create_layer(1152,971,"Interactives",obj_catSaved);
	instance_create_layer(1150,976,"Interactives",obj_interact);
	instance_destroy();
}