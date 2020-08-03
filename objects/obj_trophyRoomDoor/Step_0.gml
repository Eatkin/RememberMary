/// @description

if (active)	{
	if (!instance_exists(obj_ditherTransition))	{
		var trans=instance_create_layer(0,0,"Text",obj_ditherTransition);
		trans.roomToGoto=destination;
	}
	active=false;
}