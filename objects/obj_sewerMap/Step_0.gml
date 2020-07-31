/// @description

if (active)	{
	if (global.sins==0)
		queueDialogue("Mary","What does it all mean? I don't know.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==1)
		queueDialogue("Mary","Maybe this would be helpful if I understood it.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==2)
		queueDialogue("Mary","Stupid wall scribblings.",spr_maryPortrait,DialogueType.Basic);
	else
		queueDialogue("Mary","Wall drawing.",spr_maryPortrait,DialogueType.Basic);
	active=false;
}