/// @description

if (global.sins==0)
	queueDialogue("Mary", "Time to go back home!", spr_maryPortrait, DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary", "Time to go back home.", spr_maryPortrait, DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Mary", "Home.", spr_maryPortrait, DialogueType.Basic);
else
	queueDialogue("Mary", "Maybe I can stay in this wardrobe forever until I die.", spr_maryPortrait, DialogueType.Basic);
wardrobeOpened=true;
global.softPause=true;