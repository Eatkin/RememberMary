/// @description

if (coinDialogue)	{
	queueDialogue("Mary","Hi Sophie. I have brought you a beautiful silver coin to trade for the purse.",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("Sophie","Wow Mary, I didn't think you would be able to find anything nice around here. This is a sewer after all.",spr_axolotlPortrait,DialogueType.Basic);
	queueDialogue("Mary","May I have Skylar's purse back now?",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("Sophie","Yes of course. Thanks, Mary. You're a true friend.",spr_axolotlPortrait,DialogueType.Basic);
	setEventComplete(Event.TakenPurse);
}
else if (knifeDialogue)	{
	queueDialogue("Mary","Sophie is my friend, I don't want to stab her just because of petty theft.",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("Sophie","Any luck finding anything nice to trade with me?",spr_axolotlPortrait,DialogueType.Basic);
	queueDialogue("Mary","Give me a bit more time and I'll find something.",spr_maryPortrait,DialogueType.Basic);
}