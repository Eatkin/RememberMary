/// @description

if (checkEventComplete(Event.KilledSophie))
	queueDialogue("Mary", "This wardrobe can no longer be opened.", spr_maryPortrait, DialogueType.Basic);
else	{
	queueDialogue("Mary", "The wardrobe is a perfect place to hide from all my life's problems.", spr_maryPortrait, DialogueType.Basic);
	wardrobeOpened=true;
	global.softPause=true;
}