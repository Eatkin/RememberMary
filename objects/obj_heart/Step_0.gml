/// @description

if (active)	{
	if (global.sins==0)	{
		queueDialogue("Mary","It's Bella's heart!",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Mary","It doesn't seem to be attached to anything, but it sure still works.",spr_maryPortrait,DialogueType.Basic);
	}
	else if (global.sins==1)	{
		queueDialogue("Mary","Bella's heart.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Mary","I wonder how it works..",spr_maryPortrait,DialogueType.Basic);
	}
	else if (global.sins==2)	{
		queueDialogue("Mary","A heart.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Mary","It pumps blood around.",spr_maryPortrait,DialogueType.Basic);
	}
	else	{
		queueDialogue("Mary","I wish I had a heart.",spr_maryPortrait,DialogueType.Basic);
	}

	active=false;
}