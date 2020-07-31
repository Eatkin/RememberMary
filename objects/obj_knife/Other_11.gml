/// @description

if (global.sins==0)
	queueDialogue("Mary","I think I should try a different way of getting the purse back instead of resorting to violence.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary","I shouldn't take it. I've caused enough trouble.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Mary","This is a dangerous weapon.",spr_maryPortrait,DialogueType.Basic);