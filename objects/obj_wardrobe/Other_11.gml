/// @description

if (checkEventComplete(Event.KilledSophie))	{
	if (global.sins==1)	{
		queueDialogue("Mary", "I can't enter the wardrobe even if I wanted to, it's locked from the other side.", spr_maryPortrait, DialogueType.Basic);
		queueDialogue("Mary", "I guess I did the wrong thing...", spr_maryPortrait, DialogueType.Basic);
	}
	else if (global.sins==2)
		queueDialogue("Mary", "I can't. It's locked from the other side.", spr_maryPortrait, DialogueType.Basic);
}
else	{
	if (global.sins==0)
		queueDialogue("Mary", "I am not going to enter the wardrobe just now. My troubles will not go away by hiding in a wardrobe.", spr_maryPortrait, DialogueType.Basic);
	else if (global.sins==1)
		queueDialogue("Mary", "Not now, hiding in a wardrobe won't make my problems disappear.", spr_maryPortrait, DialogueType.Basic);
	else if (global.sins==2)
		queueDialogue("Mary", "No.", spr_maryPortrait, DialogueType.Basic);
}