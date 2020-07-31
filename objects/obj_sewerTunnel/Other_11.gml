/// @description

if (global.sins==0)
	queueDialogue("Mary","I better not, that tunnel looks gross.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary","No thanks, I'll get wet.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Mary","No.",spr_maryPortrait,DialogueType.Basic);