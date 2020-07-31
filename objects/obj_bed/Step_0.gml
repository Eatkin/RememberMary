/// @description

if (active)	{
	if (global.sins==0)
		queueDialogue("Mary","Should I go to bed?",spr_maryPortrait,DialogueType.Choice,"Sleep time!","Not now!");
	else if (global.sins==1)
		queueDialogue("Mary","Maybe I will go to sleep and pretend nothing ever happened?",spr_maryPortrait,DialogueType.Choice,"Yes","No");
	else if (global.sins==2)
		queueDialogue("Mary","Shall I go wallow in my own misery?",spr_maryPortrait,DialogueType.Choice,"Yes","No");
	else
		queueDialogue("Mary","Nothing can undo my sins.",spr_maryPortrait,DialogueType.Basic);
	active=false;
}