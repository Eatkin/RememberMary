/// @description

// Inherit the parent event
event_inherited();

pulledLever=false;

//Select enum based on my id (DO NOT CHANGE THE OBJECTS IN THE LEVEL)
if (id==inst_37938D4A)	{
	myEnum=Event.PulledLeverOne;
	myBlock=inst_34048CA
}
else	{
	myEnum=Event.PulledLeverTwo;
	myBlock=inst_560793C1
}

if (checkEventComplete(myEnum))	{
	instance_destroy(myBlock);
	pulledLever=true;
	image_xscale=-1;
	x+=sprite_width;
}