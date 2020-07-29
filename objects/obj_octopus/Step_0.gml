/// @description

if (active)	{
	var dialogueType=0;
	if (checkEventComplete(Event.TakenPurse))
		dialogueType=(checkEventComplete(Event.KilledSophie))	?	2	:	1;
		
	var returnedPurse=checkEventComplete(Event.ReturnedPurse);
	
	if (dialogueType==0)	{
		//Regular dialogue
		queueDialogue("Skylar","Mary! My purse has been stolen, can you get it back for me? It holds all my subconcious desires.",spr_octopusPortrait,DialogueType.Basic);
		queueDialogue("Mary","Losing your purse can symbolise losing touch with your sense of self.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Skylar","So maybe I'm feeling insecure because of dealing with an unfamiliar situation?",spr_octopusPortrait,DialogueType.Basic);
		queueDialogue("Skylar","Or are you projecting your own feeling onto me?",spr_octopusPortrait,DialogueType.Basic);
		queueDialogue("Mary","I'll try and get your purse back, Skylar.",spr_maryPortrait,DialogueType.Basic);
	}
	else if (dialogueType==1)	{
		//Taken purse peacefully
		if (!returnedPurse)	{
			queueDialogue("Skylar","Hi again Mary, you've been busy exploring. Did you find anything?",spr_octopusPortrait,DialogueType.Basic);
			queueDialogue("Mary","I traded with Skylar and got your purse back!",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Skylar","Thank you Mary, I truly feel complete again.",spr_octopusPortrait,DialogueType.Basic);
			queueDialogue("Skylar","May peace be with you.",spr_octopusPortrait,DialogueType.Basic);
		}
		else	{
			queueDialogue("Skylar","Mary! Thank you for returning my purse.",spr_octopusPortrait,DialogueType.Basic);
			queueDialogue("Skylar","It feels like I'm growing as a person.",spr_octopusPortrait,DialogueType.Basic);
		}
	}
	else if (dialogueType==2)	{
		//Murdered your friend in cold blood
		if (!returnedPurse)	{
			queueDialogue("Skylar","Hi again Mary, you've been busy exploring. Did you find anything?",spr_octopusPortrait,DialogueType.Basic);
			queueDialogue("Mary","I... 'traded' with Skylar and got your purse back!",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Skylar","Thank you Mary, I truly feel complete again...wait why is there blood on my purse?",spr_octopusPortrait,DialogueType.Basic);
			queueDialogue("Skylar","Did something happen to Sophie? I know she has fits of envy, but I never wanted anything to happen to her!",spr_octopusPortrait,DialogueType.Basic);
			queueDialogue("Skylar","Did you do this? How can I keep this purse now when it's associated with murder?!",spr_octopusPortrait,DialogueType.Basic);
			queueDialogue("Mary","...but I got your purse back.",spr_maryPortrait,DialogueType.Basic);
		}
		else	{
			queueDialogue("Skylar","After what you've done, you can never return to this place. I'm sorry Mary but..what you've done is unforgivable.",spr_octopusPortrait,DialogueType.Basic);
			queueDialogue("Skylar","I'm lonely down here. Sophie and I may have had disagreements, but it was better than being alone.",spr_octopusPortrait,DialogueType.Basic);
		}
	}
	
	if (dialogueType>0)
		setEventComplete(Event.ReturnedPurse);
	active=false;
}