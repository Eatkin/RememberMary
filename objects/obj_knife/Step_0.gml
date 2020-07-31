/// @description

if (active)	{
	if (global.sins==0)
		queueDialogue("Mary","A knife. I'm not going to be using this for cookery, that's for sure.",spr_maryPortrait,DialogueType.Choice,"Take knife","Leave knife");
	else if (global.sins==1)
		queueDialogue("Mary","A knife. This might be useful for more sinister purposes.",spr_maryPortrait,DialogueType.Choice,"Take knife","Leave knife");
	else if (global.sins==2)
		queueDialogue("Mary","A knife. I should stab someone.",spr_maryPortrait,DialogueType.Choice,"Take knife","Take knife");
	active=false;
}

if (takenKnife and textQueueEmpty())
	instance_destroy();