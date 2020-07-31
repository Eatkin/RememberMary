/// @description

if (global.sins==0)
	queueDialogue("Mary","The developer couldn't be bothered to animate that, so I'll stay up for now.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary","The developer hasn't animated me sleeping.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Mary","Animation missing.",spr_maryPortrait,DialogueType.Basic);