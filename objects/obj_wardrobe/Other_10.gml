/// @description

if (checkEventComplete(Event.KilledSophie))	{
	if (global.sins==1)
		queueDialogue("Mary", "This wardrobe can no longer be opened. They don't want me back.", spr_maryPortrait, DialogueType.Basic);
	else if (global.sins==2)
		queueDialogue("Mary", "The door won't open. They don't want me.", spr_maryPortrait, DialogueType.Basic);
}
else	{
	if (global.sins==0)
		queueDialogue("Mary", "The wardrobe is a perfect place to hide from all my life's problems.", spr_maryPortrait, DialogueType.Basic);
	else if (global.sins==1)
		queueDialogue("Mary", "Maybe I can hide from my life's problems in here.", spr_maryPortrait, DialogueType.Basic);
	else if (global.sins==2)
		queueDialogue("Mary", "Hopefully I can escape from my sins by hiding.", spr_maryPortrait, DialogueType.Basic);
	wardrobeOpened=true;
	global.softPause=true;
}