/// @description

if (active)	{
	if (global.sins==0)
		queueDialogue("Mary","This huge rock is seriously in my way!",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==1)
		queueDialogue("Mary","There's a huge rock blocking the path.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==2)
		queueDialogue("Mary","Can't get past this rock.",spr_maryPortrait,DialogueType.Basic);
	else
		queueDialogue("Mary","Rock in the way.",spr_maryPortrait,DialogueType.Basic);
	active=false;
}