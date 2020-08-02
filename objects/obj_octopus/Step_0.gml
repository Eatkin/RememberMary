/// @description

if (active)	{
	var dialogueType=0;
	if (checkEventComplete(Event.TakenPurse))
		dialogueType=(checkEventComplete(Event.KilledSophie))	?	2	:	1;
		
	var returnedPurse=checkEventComplete(Event.ReturnedPurse);
	
	//Always default to the first dialogue if this is our first time talking
	if (!checkEventComplete(Event.TalkedToSkylar))
		dialogueType=0;
	
	if (dialogueType==0)	{
		//Regular dialogue
		audio_play_sound(transition_low_1,0,false);
		queueDialogue("Skylar","Mary! My purse has been stolen, can you get it back for me? It holds all my subconcious desires.",spr_octopusPortrait,DialogueType.Basic);
		if (global.sins==0)	{
			queueDialogue("Mary","Losing your purse can symbolise losing touch with your sense of self.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Skylar","So maybe I'm feeling insecure because of dealing with an unfamiliar situation?",spr_octopusPortrait,DialogueType.Basic);
			queueDialogue("Skylar","Or are you projecting your own feeling onto me?",spr_octopusPortrait,DialogueType.Basic);
			queueDialogue("Mary","I'll try and get your purse back, Skylar.",spr_maryPortrait,DialogueType.Basic);
		}
		else if (global.sins==1)	{
			queueDialogue("Mary","Losing your purse can be really annoying.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Skylar","It sure is. I think Sophie might have taken it. She gets jealous. But she's still my friend.",spr_octopusPortrait,DialogueType.Basic);
			queueDialogue("Mary","I'll see if I can get it back.",spr_maryPortrait,DialogueType.Basic);
		}
		else if (global.sins==2)	{
			queueDialogue("Mary","Okay.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Skylar","Uh...are you okay? You don't look so great.",spr_octopusPortrait,DialogueType.Basic);
			queueDialogue("Mary","I have the weight of the world on my shoulders.",spr_maryPortrait,DialogueType.Basic);
		}
		else	{
			queueDialogue("Mary","...",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Skylar","Good lord Mary, you look like shit. What's happened?",spr_octopusPortrait,DialogueType.Basic);
			queueDialogue("Skylar","Why are you looking at me like that?",spr_octopusPortrait,DialogueType.Basic);
		}
		setEventComplete(Event.TalkedToSkylar);
	}
	else if (dialogueType==1)	{
		//Taken purse peacefully
		if (!returnedPurse)	{
			if (global.sins==0)	{
				queueDialogue("Skylar","Hi again Mary, you've been busy exploring. Did you find anything?",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Mary","I traded with Sophie and got your purse back!",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Skylar","Thank you Mary, I truly feel complete again.",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Skylar","May peace be with you.",spr_octopusPortrait,DialogueType.Basic);
			}
			else if (global.sins==1)	{
				queueDialogue("Skylar","Hi again Mary, you've been busy exploring. Did you find anything?",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Mary","I found something to trade with Sophie. Here's your purse.",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Skylar","Thank you Mary, I truly feel complete again.",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Skylar","May peace be with you.",spr_octopusPortrait,DialogueType.Basic);
			}
			else if (global.sins==2)	{
				queueDialogue("Skylar","Hi again Mary, you've been busy exploring. Did you find anything?",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Mary","Yeah I got it.",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Skylar","Thank you Mary, I truly feel complete again.",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Skylar","My god, you still look terrible. I hope whatever's bothering you passes.",spr_octopusPortrait,DialogueType.Basic);
			}
			global.virtues+=1;
		}
		else	{
			if (global.sins<=1)	{
				queueDialogue("Skylar","Mary! Thank you for returning my purse.",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Skylar","It feels like I'm growing as a person.",spr_octopusPortrait,DialogueType.Basic);
			}
			else if (global.sins==2)	{
				queueDialogue("Skylar","Seriously whatever's happened, I'm here for you.",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Skylar","Let me know if you want to talk about it.",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Mary","I'll live through it. I hope so anyway.",spr_maryPortrait,DialogueType.Basic);
			}
		}
	}
	else if (dialogueType==2)	{
		//Murdered your friend in cold blood
		if (!returnedPurse)	{
			if (global.sins==1)	{
				queueDialogue("Skylar","Hi again Mary, you've been busy exploring. Did you find anything?",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Mary","I... 'traded' with Sophie and got your purse back!",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Skylar","Thank you Mary, I truly feel complete again...wait why is there blood on my purse?",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Skylar","Did something happen to Sophie? I know she has fits of envy, but I never wanted anything to happen to her!",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Skylar","Did you do this? How can I keep this purse now when it's associated with murder?!",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Mary","...but I got your purse back.",spr_maryPortrait,DialogueType.Basic);
			}
			else if (global.sins==2)	{
				queueDialogue("Skylar","Hi again Mary, you've been busy exploring. Did you find anything?",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Mary","I got your purse but..uh well...",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Skylar","Thanks but why is there blood on my purse? What happened?",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Skylar","Did something happen to Sophie?",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Skylar","Mary, did you murder Sophie?? How could you do that! She never hurt a fly!",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Mary","I can't go on like this.",spr_maryPortrait,DialogueType.Basic);
			}
			else	{
				queueDialogue("Skylar","Hi again Mary, you've been busy exploring. Did you find anything?",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Mary","I killed Sophie. Stabbed her. I stared into her eyes as the life drained from her face.",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Skylar","Are you serious? What? How could you do that??",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Mary","Fuck Sophie. Fuck your purse. Fuck my life. I'm too far gone. It's too late for me.",spr_maryPortrait,DialogueType.Basic);
			}
		}
		else	{
			if (global.sins==1)	{
				queueDialogue("Skylar","After what you've done, you can never return to this place. I'm sorry Mary but..what you've done is unforgivable.",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Skylar","I'm lonely down here. Sophie and I may have had disagreements, but it was better than being alone.",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Skylar","Now, thanks to you, I am truly alone here.",spr_octopusPortrait,DialogueType.Basic);
			}
			else if (global.sins==2)	{
				queueDialogue("Skylar","You know you can never return here. What you've done is unforgivable.",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Skylar","Sophie was my only company.",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Skylar","Now I'm truly alone. Leave here and never come back.",spr_octopusPortrait,DialogueType.Basic);
			}
			else	{
				queueDialogue("Skylar","I can't believe it, you're a monster. Just knowing someone like you is alive is too much for me.",spr_octopusPortrait,DialogueType.Basic);
				queueDialogue("Skylar","To think I once called you my friend.",spr_octopusPortrait,DialogueType.Basic);
			}
		}
	}
	
	if (dialogueType>0)
		setEventComplete(Event.ReturnedPurse);
	active=false;
}