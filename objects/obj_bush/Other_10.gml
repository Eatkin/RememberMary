/// @description

if (global.sins==0)
	queueDialogue("Mary", "Time to travel through the bush.", spr_maryPortrait, DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary", "Time to enter the bush.", spr_maryPortrait, DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Mary", "Into the bush.", spr_maryPortrait, DialogueType.Basic);
else
	queueDialogue("Mary", "Okay.", spr_maryPortrait, DialogueType.Basic);
wardrobeOpened=true;
global.softPause=true;