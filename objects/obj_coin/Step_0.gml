/// @description

if (active)	{
	if (global.sins==0)
		queueDialogue("Mary","This is a really pretty silver coin!",spr_maryPortrait,DialogueType.Choice,"Take the coin","Leave the coin");
	else if (global.sins==1)
		queueDialogue("Mary","A nice silver coin.",spr_maryPortrait,DialogueType.Choice,"Take the coin","Leave the coin");
	else if (global.sins==2)
		queueDialogue("Mary","Coin.",spr_maryPortrait,DialogueType.Choice,"Take","Leave");
	active=false;
}

if (takenCoin and textQueueEmpty())
	instance_destroy();