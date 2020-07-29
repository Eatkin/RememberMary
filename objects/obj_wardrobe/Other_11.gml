/// @description

if (checkEventComplete(Event.KilledSophie))	{
	queueDialogue("Mary", "I can't enter the wardrobe even if I wanted to, it's locked from the other side.", spr_maryPortrait, DialogueType.Basic);
	queueDialogue("Mary", "I guess I did the wrong thing...", spr_maryPortrait, DialogueType.Basic);
}
else
	queueDialogue("Mary", "I am not going to enter the wardrobe just now. My troubles will not go away by hiding in a wardrobe.", spr_maryPortrait, DialogueType.Basic);