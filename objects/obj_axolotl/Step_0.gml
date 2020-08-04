/// @description

if (checkEventComplete(Event.KilledSophie) and textQueueEmpty())	{
	instance_create_layer(x,y,layer,obj_axolotlDie);
	audio_play_sound(transition_low_2,0,false);
	instance_destroy();
	exit;
}

if (active)	{
	var firstTime=!checkEventComplete(Event.TalkedToSophie);
	if (!firstTime and checkEventComplete(Event.TakenPurse))	{
		if (global.sins==0)
			queueDialogue("Sophie","I love my shiny silver coin. It is beautiful and shiny and mine.",spr_axolotlPortrait,DialogueType.Basic);
		else if (global.sins==1)
			queueDialogue("Sophie","I love my shiny silver coin. I hope you're okay, Mary.",spr_axolotlPortrait,DialogueType.Basic);
		else if (global.sins==2)
			queueDialogue("Sophie","The coin doesn't matter. The purse doesn't matter. I just want to know you're okay, Mary.",spr_axolotlPortrait,DialogueType.Basic);
	}
	else if (!firstTime and checkEventComplete(Event.TakenCoin))	{
		if (global.sins==0)
			queueDialogue("Mary","Should I give Sophie the coin in exchange for the purse?",spr_maryPortrait,DialogueType.Choice,"Trade with Sophie","No thanks");
		if (global.sins==1)
			queueDialogue("Mary","Give Sophie the coin for the purse?",spr_maryPortrait,DialogueType.Choice,"Trade","Don't trade");
		if (global.sins==2)
			queueDialogue("Mary","Give Sophie the coin?",spr_maryPortrait,DialogueType.Choice,"Yes","No");
		coinDialogue=true;
	}
	else if (!firstTime and checkEventComplete(Event.TakenKnife))	{
		if (global.sins==0)
			queueDialogue("Mary","Should I stab Sophie with this knife and forcibly take the purse?",spr_maryPortrait,DialogueType.Choice,"No way!","Stab Sophie");
		else if (global.sins==1)
			queueDialogue("Mary","Should I stab Sophie?",spr_maryPortrait,DialogueType.Choice,"No","Stab her");
		else if (global.sins==2)
			queueDialogue("Mary","Get the stabbing over with??",spr_maryPortrait,DialogueType.Choice,"No","Kill the axolotl");
		knifeDialogue=true;
	}
	else	{
		if (global.sins==0)	{
			queueDialogue("Mary","Hi Sophie. Do you have Skylar's purse?",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Sophie","Yes, and you can't have it. Skylar has everything in life. This purse is all I have.",spr_axolotlPortrait,DialogueType.Basic);
			queueDialogue("Mary","You shouldn't let yourself be clouded by jealousy. You can find something else to make you happy. Have you tried mindfulness meditation?",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Sophie","Physical possessions make me happy. If you want it back, you will have to trade with me.",spr_axolotlPortrait,DialogueType.Basic);
			queueDialogue("Mary","I'll see what I can do.",spr_maryPortrait,DialogueType.Basic);
		}
		if (global.sins==1)	{
			queueDialogue("Mary","Do you have Skylar's purse?",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Sophie","Yes, but you can't have it. This purse is all I have.",spr_axolotlPortrait,DialogueType.Basic);
			queueDialogue("Mary","Are you jealous of her?",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Sophie","Yeah I'm jealous. She has loads of nice things. I have nothing. Maybe you can find me something nice and I'll trade.",spr_axolotlPortrait,DialogueType.Basic);
			queueDialogue("Mary","I'll crawl through some sewer pipes to see what's around.",spr_maryPortrait,DialogueType.Basic);
		}
		if (global.sins==2)	{
			queueDialogue("Mary","You got the purse?",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Sophie","Yes, and you can't have it-",spr_axolotlPortrait,DialogueType.Basic);
			queueDialogue("Mary","Look, we can do this the easy way or the hard way. I've had one hell of a day today and I'm not prepared to fuck about.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Sophie","What? Mary what happened? My word, you look terrible.",spr_axolotlPortrait,DialogueType.Basic);
			queueDialogue("Mary","Just shut up, alright? I'm going to go climb through some shitty pipes. How did my life get so out of control?",spr_maryPortrait,DialogueType.Basic);
		}
		setEventComplete(Event.TalkedToSophie);
	}
	active=false;
}