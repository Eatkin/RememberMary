/// @description

// Inherit the parent event
event_inherited();

if (!checkEventComplete(Event.SavedAbigail))	{
	instance_create_layer(x,y,layer,obj_bagTrophy);
	instance_destroy();
}