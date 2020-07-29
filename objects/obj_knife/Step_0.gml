/// @description

if (active)	{
	queueDialogue("Mary","A knife. I'm not going to be using this for cookery, that's for sure.",spr_maryPortrait,DialogueType.Choice,"Take knife","Leave knife");
	active=false;
}

if (takenKnife and textQueueEmpty())
	instance_destroy();