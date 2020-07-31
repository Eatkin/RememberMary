/// @description

if (active)	{
	if (global.sins==0)
		queueDialogue("Mary","It's a rock, albeit a bit difficult to tell. Should I eat this rock?",spr_maryPortrait,DialogueType.Choice,"Eat the rock","No that's stupid");
	else if (global.sins==1)
		queueDialogue("Mary","Should I eat this badly drawn rock?",spr_maryPortrait,DialogueType.Choice,"Eat it","Don't eat it");
	else if (global.sins==2)
		queueDialogue("Mary","A rock.",spr_maryPortrait,DialogueType.Basic);
		
	active=false;
}

if (eatenRock and textQueueEmpty())
	instance_destroy();