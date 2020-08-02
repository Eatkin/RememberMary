/// @description

if (active)	{
	if (global.sins==0)	{
		queueDialogue("Abigail","Oh, Mary. You truly are a hero. I'll be more careful not to fall down any huge holes in future.",spr_catPortrait,DialogueType.Basic);
		queueDialogue("Mary","I'm just glad you're okay, Abigail.",spr_maryPortrait,DialogueType.Basic);
	}
	else if (global.sins==1)	{
		queueDialogue("Abigail","Thank you, Mary. You've been an amazing help.",spr_catPortrait,DialogueType.Basic);
		queueDialogue("Mary","I could've done better...",spr_maryPortrait,DialogueType.Basic);
	}
	else if (global.sins==2)	{
		queueDialogue("Abigail","Thank you, Mary. Whatever you're going through, I hope you find your way. It's never too late to change.",spr_catPortrait,DialogueType.Basic);
	}
	active=false;
}