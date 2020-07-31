/// @description

if (active)	{
	if (global.sins==0)
		queueDialogue("Mary","It's a stick. Maybe I should eat it?",spr_maryPortrait,DialogueType.Choice,"Eat the stick","Leave the stick");
	else if (global.sins==1)
		queueDialogue("Mary","Shall I eat this stick?",spr_maryPortrait,DialogueType.Choice,"Yes","No");
	else if (global.sins==2)
		queueDialogue("Mary","Dumb stick. Not funny.",spr_maryPortrait,DialogueType.Basic);
	active=false;
}

if (eatenStick and textQueueEmpty())
	instance_destroy();