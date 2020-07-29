/// @description

if (active)	{
	queueDialogue("Mary","This is a really pretty silver coin!",spr_maryPortrait,DialogueType.Choice,"Take the coin","Leave the coin");
	active=false;
}

if (takenCoin and textQueueEmpty())
	instance_destroy();