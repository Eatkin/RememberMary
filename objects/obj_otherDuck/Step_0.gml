/// @description

if (active)	{
	var firstTime=!checkEventComplete(Event.TalkedToTopaz);
	var takenPlushies=checkEventComplete(Event.TakenPlushies);
	var rescuedDucks=checkEventComplete(Event.RescuedDucks);
	
	var dialogueType=0;
	
	if (!firstTime)	{
		dialogueType=1;
		
		if (takenPlushies)
			dialogueType=2;
		
		if (rescuedDucks)
			dialogueType=3;
	}
		
	if (dialogueType==0)	{
		if (global.sins==0)	{
			queueDialogue("Mary","Hi Topaz. Did you know that you are a duck living within a duck?",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","It's all okay. I just go with the hand I was dealt.",spr_otherDuckPortrait,DialogueType.Basic);
			queueDialogue("Mary","Doesn't it bother you to know your entire life is spent inside a duck?",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","Whether I live inside a duck or not, it doesn't really change anything.",spr_otherDuckPortrait,DialogueType.Basic);
			queueDialogue("Topaz","While you're here, I do need some help with something. My baby ducklings have run off. Could you round them up for me?",spr_otherDuckPortrait,DialogueType.Basic);
			queueDialogue("Mary","Of course, anything to help my friends!",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","Thank you Mary, peace be with you.",spr_otherDuckPortrait,DialogueType.Basic);
		}
		else if (global.sins==1)	{
			queueDialogue("Mary","Hi Topaz.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Mary","Does it bother you to know you live inside a duck?",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","It doesn't really matter to me, no.",spr_otherDuckPortrait,DialogueType.Basic);
			queueDialogue("Topaz","Mary, could you help me with something? My baby ducklings have run off, could you find them for me?",spr_otherDuckPortrait,DialogueType.Basic);
			queueDialogue("Mary","I'll try my best.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","Thank you, Mary.",spr_otherDuckPortrait,DialogueType.Basic);
		}
		else if (global.sins>=2)	{
			queueDialogue("Mary","Topaz.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","Mary, my word, you look like shit. I mean, sorry. Are you okay?",spr_otherDuckPortrait,DialogueType.Basic);
			queueDialogue("Mary","I've had a rough day so far...",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","You're telling me. Could you do me a little favour? My ducklings have run off, I need help finding them again.",spr_otherDuckPortrait,DialogueType.Basic);
			queueDialogue("Mary","Okay.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","Mary, I am here for you. If you need to talk, let me know.",spr_otherDuckPortrait,DialogueType.Basic);
		}
		setEventComplete(Event.TalkedToTopaz);
	}
	else if (dialogueType==1)	{
		if (global.sins==0)	{
			queueDialogue("Mary","Hi again, Topaz!",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","Hi Mary. How are you getting on with the search for ducklings?",spr_otherDuckPortrait,DialogueType.Basic);
			queueDialogue("Mary","I haven't found them all yet.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","I appreciate your help anyway.",spr_otherDuckPortrait,DialogueType.Basic);
		}
		else if (global.sins==1)	{
			queueDialogue("Mary","Hi Topaz.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","Hi Mary. Any luck finding those ducklings yet?",spr_otherDuckPortrait,DialogueType.Basic);
			queueDialogue("Mary","It's just the one duckling, actually. Or maybe there was more.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","Thanks anyway.",spr_otherDuckPortrait,DialogueType.Basic);
		}
		else if (global.sins==2)	{
			queueDialogue("Mary","Hi.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","Mary. You know, don't force yourself to help me.",spr_otherDuckPortrait,DialogueType.Basic);
			queueDialogue("Mary","It's okay, maybe I can do some good in the world after all.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","You look like you're carrying the weight of the world on your shoulders.",spr_otherDuckPortrait,DialogueType.Basic);
		}
	}
	else if (dialogueType==2)	{
		if (checkEventComplete(Event.ToldTopaz))	{
			if (global.sins==1)
				queueDialogue("Topaz","Mary, please leave. I'm trying to be polite here but my babies are now going to die because of your actions.",spr_otherDuckPortrait,DialogueType.Basic);
			else if (global.sins==2)
				queueDialogue("Topaz","Leave me alone. I need to grieve.",spr_otherDuckPortrait,DialogueType.Basic);
			else if (global.sins==3)	{
				queueDialogue("Topaz","You are not the girl I once knew. I don't know what happened, but I hope you find the help you need.",spr_otherDuckPortrait,DialogueType.Basic);
				queueDialogue("Topaz","There is nothing I can do. Now, please leave me alone.",spr_otherDuckPortrait,DialogueType.Basic);
			}
		}
		else	{
			if (global.sins==1)	{
				queueDialogue("Topaz","Oh Mary, have you rescued my baby ducklings?",spr_otherDuckPortrait,DialogueType.Basic);
				queueDialogue("Topaz","Mary, these are not my babies. They are plushies.",spr_otherDuckPortrait,DialogueType.Basic);
				queueDialogue("Topaz","What happened back there?",spr_otherDuckPortrait,DialogueType.Basic);
				queueDialogue("Mary","I'm sorry, Topaz. I took these plushies and now the ducklings are trapped.",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Topaz","So you brought me plushies instead? To try and trick me? I can't believe you, I thought we were friends!",spr_otherDuckPortrait,DialogueType.Basic);
				queueDialogue("Topaz","I think you should leave me alone now...",spr_otherDuckPortrait,DialogueType.Basic);
				queueDialogue("Mary","Topaz, I'm sorry...",spr_maryPortrait,DialogueType.Basic);
			}
			else if (global.sins==2)	{
				queueDialogue("Topaz","Hi again Mary. Did you find my babies?",spr_otherDuckPortrait,DialogueType.Basic);
				queueDialogue("Topaz","Mary, these are plushies.",spr_otherDuckPortrait,DialogueType.Basic);
				queueDialogue("Topaz","Why have you brought me plushies?",spr_otherDuckPortrait,DialogueType.Basic);
				queueDialogue("Mary","I don't know. I don't know what's coming over me.",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Topaz","You brough me plushies instead of my babies, hoping I wouldn't notice.",spr_otherDuckPortrait,DialogueType.Basic);
				queueDialogue("Topaz","I think you need to leave.",spr_otherDuckPortrait,DialogueType.Basic);
			}
			else if (global.sins==3)	{
				queueDialogue("Topaz","Are you okay Mary? Have you had any luck finding my babies?",spr_otherDuckPortrait,DialogueType.Basic);
				queueDialogue("Topaz","...you've given me plushies.",spr_otherDuckPortrait,DialogueType.Basic);
				queueDialogue("Mary","Your babies are trapped. They will die alone. There's nothing anyone can do.",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Topaz","What? How could this happen?",spr_otherDuckPortrait,DialogueType.Basic);
				queueDialogue("Mary","I am filled with sin. It's too late. I can't go back now.",spr_maryPortrait,DialogueType.Basic);
			}
			setEventComplete(Event.ToldTopaz);
		}
	}
	else if (dialogueType==3)	{
		if (!checkEventComplete(Event.TopazAddedVirtues))	{
			global.virtues+=1;
			setEventComplete(Event.TopazAddedVirtues);
		}
		if (global.sins==0)	{
			queueDialogue("Mary","Hi Topaz. All your ducks are safe and sound.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","Mary, you are a true life saver. Without you, I don't know what I would have done.",spr_otherDuckPortrait,DialogueType.Basic);
			queueDialogue("Mary","No problem, Topaz. Any good friend would help you out.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Mary","Bye, Topaz.",spr_maryPortrait,DialogueType.Basic);
		}
		else if (global.sins==1)	{
			queueDialogue("Mary","All your ducks are safe and sound.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","You are a true life saver. What would I do without you?",spr_otherDuckPortrait,DialogueType.Basic);
			queueDialogue("Mary","Who knows?",spr_maryPortrait,DialogueType.Basic);
		}
		else if (global.sins==2)	{
			queueDialogue("Mary","I rescued your ducks.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Topaz","Mary, you are a true life saver.",spr_otherDuckPortrait,DialogueType.Basic);
			queueDialogue("Mary","I don't just save lives...",spr_maryPortrait,DialogueType.Basic);
		}
		/*This is now obselete - can't rescue ducks AND take plushies anymore
		if (takenPlushies)	{
			if (global.sins==0)	{
				queueDialogue("Mary","I found these baby duck plushies too. You can have them.",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Topaz","Oh thank you, Mary! The babies will love them!",spr_otherDuckPortrait,DialogueType.Basic);
			}
			else if (global.sins==1)	{
				queueDialogue("Mary","I brought you duckling plushies too..",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Topaz","Thank you so much, Mary.",spr_otherDuckPortrait,DialogueType.Basic);
			}
			else if (global.sins==2)	{
				queueDialogue("Mary","Here's some toys I found.",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Topaz","Oh wow, these are cute. Thank you.",spr_otherDuckPortrait,DialogueType.Basic);
				queueDialogue("Topaz","I hope you are okay, Mary. Peace be with you.",spr_otherDuckPortrait,DialogueType.Basic);
			}
		}*/
	}
	active=false;
}