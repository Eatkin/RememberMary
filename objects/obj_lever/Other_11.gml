/// @description

if (global.sins==0)
	queueDialogue("Mary","There is no reason not to pull this really.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary","I don't think I'll bother.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Mary","Not now.",spr_maryPortrait,DialogueType.Basic);
else
	queueDialogue("Mary","That would be a waste of everyone's time.",spr_maryPortrait,DialogueType.Basic);