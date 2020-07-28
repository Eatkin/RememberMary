/// @description

if (active)	{
	queueDialogue("Mary","Hi Sophie. Do you have Skylar's purse?",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("Sophie","Yes, and you can't have it. Skylar has everything in life. This purse is all I have.",spr_axolotlPortrait,DialogueType.Basic);
	queueDialogue("Mary","You shouldn't let yourself be clouded by jealousy. You can find something else to make you happy. Have you tried mindfulness meditation?",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("Sophie","This purse is what makes me happy. If you want it back, you will have to trade with me.",spr_axolotlPortrait,DialogueType.Basic);
	queueDialogue("Mary","I'll see what I can do.",spr_maryPortrait,DialogueType.Basic);
	active=false;
}