/// @description

if (active)	{
	if (global.sins==0)
		queueDialogue("Mary","Should I enter this tunnel?",spr_maryPortrait,DialogueType.Choice,"Enter","Do not enter");
	else if (global.sins==1)
		queueDialogue("Mary","Should I go in the tunnel?",spr_maryPortrait,DialogueType.Choice,"Enter","Do not enter");
	else if (global.sins==2)
		queueDialogue("Mary","Enter tunnel?",spr_maryPortrait,DialogueType.Choice,"Yes","No");
	else
		queueDialogue("Mary","No point.",spr_maryPortrait,DialogueType.Basic);
	active=false;
}