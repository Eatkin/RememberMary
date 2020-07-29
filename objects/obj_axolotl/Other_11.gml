/// @description

if (coinDialogue)	{
	queueDialogue("Mary","I think I'll hang on to this coin for a bit longer.",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("Sophie","Any luck finding anything nice to trade with me?",spr_axolotlPortrait,DialogueType.Basic);
	queueDialogue("Mary","Give me a bit more time and I'll find something.",spr_maryPortrait,DialogueType.Basic);
	//It then queues the knife dialogue
	if (checkEventComplete(Event.TakenKnife))	{
		queueDialogue("Mary","Should I stab Sophie with this knife and forcibly take the purse?",spr_maryPortrait,DialogueType.Choice,"No way!","Stab Sophie");
		knifeDialogue=true;
		coinDialogue=false;
	}
}
else if (knifeDialogue)	{
	queueDialogue("Sophie","...",spr_axolotlPortrait,DialogueType.Basic);
	queueDialogue("Sophie","You stabbed me!",spr_axolotlPortrait,DialogueType.Basic);
	queueDialogue("Sophie","I can't believe you stabbed me over a purse.",spr_axolotlPortrait,DialogueType.Basic);
	queueDialogue("Sophie","I thought we were friends. I can't believe my final moments are to witness such an act of betrayal!",spr_axolotlPortrait,DialogueType.Basic);
	queueDialogue("Sophie","You're a monster!",spr_axolotlPortrait,DialogueType.Basic);
	setEventComplete(Event.TakenPurse);
	setEventComplete(Event.KilledSophie);
	
}