/// @description

if (global.sins==0)
	queueDialogue("Mary","I'll feed Bella later I think. I've got some other things I want to do first.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary","Got some other things to do first.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Mary","I'll probably somehow screw up feeding a duck as well.",spr_maryPortrait,DialogueType.Basic);