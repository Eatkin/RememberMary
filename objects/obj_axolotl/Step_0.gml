/// @description

if (checkEventComplete(Event.KilledSophie) and textQueueEmpty())	{
	instance_create_layer(x,y,layer,obj_axolotlDie);
	instance_destroy();
	exit;
}

if (active)	{
	if (checkEventComplete(Event.TakenPurse))
		queueDialogue("Sophie","I love my shiny silver coin. It is beautiful and shiny and mine.",spr_axolotlPortrait,DialogueType.Basic);
	else if (checkEventComplete(Event.TakenCoin))	{
		queueDialogue("Mary","Should I give Sophie the coin in exchange for the purse?",spr_maryPortrait,DialogueType.Choice,"Trade with Sophie","No thanks");
		coinDialogue=true;
	}
	else if (checkEventComplete(Event.TakenKnife))	{
		queueDialogue("Mary","Should I stab Sophie with this knife and forcibly take the purse?",spr_maryPortrait,DialogueType.Choice,"No way!","Stab Sophie");
		knifeDialogue=true;
	}
	else	{
		queueDialogue("Mary","Hi Sophie. Do you have Skylar's purse?",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Sophie","Yes, and you can't have it. Skylar has everything in life. This purse is all I have.",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Mary","You shouldn't let yourself be clouded by jealousy. You can find something else to make you happy. Have you tried mindfulness meditation?",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Sophie","Physical possessions make me happy. If you want it back, you will have to trade with me.",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Mary","I'll see what I can do.",spr_maryPortrait,DialogueType.Basic);
	}
	active=false;
}