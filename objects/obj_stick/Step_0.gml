/// @description

if (active)	{
	queueDialogue("Mary","It's a stick. Maybe I should eat it?",spr_maryPortrait,DialogueType.Choice,"Eat the stick","Leave the stick");
	active=false;
}

if (eatenStick and textQueueEmpty())
	instance_destroy();