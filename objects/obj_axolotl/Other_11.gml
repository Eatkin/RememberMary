/// @description

if (coinDialogue)	{
	if (global.sins==0)	{
		queueDialogue("Mary","I think I'll hang on to this coin for a bit longer.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Sophie","Any luck finding anything nice to trade with me?",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Mary","Give me a bit more time and I'll find something.",spr_maryPortrait,DialogueType.Basic);
	}
	if (global.sins==1)	{
		queueDialogue("Mary","I like the coin. Maybe I'll give it to Sophie later.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Sophie","Found anything nice?",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Mary","I'm still looking.",spr_maryPortrait,DialogueType.Basic);
	}
	if (global.sins==2)	{
		queueDialogue("Mary","Maybe I should just stab her and take the purse instead.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Sophie","Mary? Why are you looking at me like that?",spr_axolotlPortrait,DialogueType.Basic);
	}
	//It then queues the knife dialogue
	if (checkEventComplete(Event.TakenKnife))	{
		if (global.sins==0)
			queueDialogue("Mary","Should I stab Sophie with this knife and forcibly take the purse?",spr_maryPortrait,DialogueType.Choice,"No way!","Stab Sophie");
		else if (global.sins==1)
			queueDialogue("Mary","Should I stab Sophie?",spr_maryPortrait,DialogueType.Choice,"No","Stab her");
		else if (global.sins==2)
			queueDialogue("Mary","Get the stabbin gover with??",spr_maryPortrait,DialogueType.Choice,"No","Kill the axolotl");
		knifeDialogue=true;
		coinDialogue=false;
	}
}
else if (knifeDialogue)	{
	if (global.sins==0)	{
		queueDialogue("Sophie","...",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Sophie","You stabbed me!",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Sophie","I can't believe you stabbed me over a purse.",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Sophie","I thought we were friends. I can't believe my final moments are to witness such an act of betrayal!",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Sophie","You're a monster!",spr_axolotlPortrait,DialogueType.Basic);
	}
	else if (global.sins==1)	{
		queueDialogue("Sophie","...",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Sophie","You stabbed me!",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Sophie","I can't believe you stabbed me over a purse!",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Sophie","Mary! I don't know why you're doing this, but it's not too late to change!",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Sophie","You're not a monster at heart! I know you're not!",spr_axolotlPortrait,DialogueType.Basic);
	}
	else if (global.sins==2)	{
		queueDialogue("Sophie","...",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Sophie","You stabbed me!",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Sophie","I knew you were looking at me weirdly! The look of a cold-blooded killer!",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Sophie","I hope God has mercy on your black, tainted soul.",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Sophie","Do you even care about this stupid purse at all?",spr_axolotlPortrait,DialogueType.Basic);
	}
	setEventComplete(Event.TakenPurse);
	setEventComplete(Event.KilledSophie);
	global.sins+=1;
}