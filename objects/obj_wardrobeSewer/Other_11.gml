/// @description

if (global.sins==0)
	queueDialogue("Mary", "I'll stay here with my friends for a while longer.", spr_maryPortrait, DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary", "I'll stay here a bit longer.", spr_maryPortrait, DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Mary", "Not ready.", spr_maryPortrait, DialogueType.Basic);
else
	queueDialogue("Mary", "Why even do anything?", spr_maryPortrait, DialogueType.Basic);