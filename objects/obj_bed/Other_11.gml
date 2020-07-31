/// @description

if (global.sins==0)
	queueDialogue("Mary","I've had enough sleep for now, time to get on with my day.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary","Sleeping won't reverse my actions.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Mary","I don't even know if I'd be able to sleep.",spr_maryPortrait,DialogueType.Basic);
else
	queueDialogue("Mary","Can't.",spr_maryPortrait,DialogueType.Basic);