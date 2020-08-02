/// @description

if (global.sins==0)
	queueDialogue("Mary","I'll be back in a moment.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary","Just a minute.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Abigail","Mary? Are you still there?",spr_catPortrait,DialogueType.Basic);