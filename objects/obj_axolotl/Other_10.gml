/// @description

if (coinDialogue)	{
	if (global.sins==0)	{
		queueDialogue("Mary","Hi Sophie. I have brought you a beautiful silver coin to trade for the purse.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Sophie","Wow Mary, I didn't think you would be able to find anything nice around here. This is a sewer after all.",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Mary","May I have Skylar's purse back now?",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Sophie","Yes of course. Thanks, Mary. You're a true friend.",spr_axolotlPortrait,DialogueType.Basic);
	}
	else if (global.sins==1)	{
		queueDialogue("Mary","I found a nice coin. Want to swap for Skylar's purse?",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Sophie","Wow Mary, you trawled the sewers to find something nice for me?",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Mary","Can I have the purse?",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Sophie","Of course. Thanks, Mary.",spr_axolotlPortrait,DialogueType.Basic);
	}
	else if (global.sins==2)	{
		queueDialogue("Mary","I found a coin.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Sophie","What? Oh for the purse...well okay, here you are. You know if you need someone to talk to...",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Mary","Thanks Sophie. Sorry, I've made some mistakes today. My emotions are out of control. I'm so on edge.",spr_maryPortrait,DialogueType.Basic);
	}
	setEventComplete(Event.TakenPurse);
}
else if (knifeDialogue)	{
	if (global.sins==0)	{
		queueDialogue("Mary","Sophie is my friend, I don't want to stab her just because of petty theft.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Sophie","Any luck finding anything nice to trade with me?",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Mary","Give me a bit more time and I'll find something.",spr_maryPortrait,DialogueType.Basic);
	}
	if (global.sins==1)	{
		queueDialogue("Mary","I don't really want to stab her.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Sophie","Have you found anything nice yet?",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Mary","I'm still looking...you're asking a lot considering you live in a sewer.",spr_maryPortrait,DialogueType.Basic);
	}
	if (global.sins==2)	{
		queueDialogue("Mary","Maybe. Maybe it's not too late. Maybe I can change.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Sophie","Mary? Are you okay? Why do you have that knife?",spr_axolotlPortrait,DialogueType.Basic);
		queueDialogue("Mary","I...carry it for protection.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Sophie","Please be careful. Whatever happened, it's not worth doing anything stupid over.",spr_axolotlPortrait,DialogueType.Basic);
	}
}