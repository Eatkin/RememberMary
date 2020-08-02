/// @description

if (active)	{
	var turnedCrank=checkEventComplete(Event.FilledPool);
	var drownedAbigail=checkEventComplete(Event.DrownedAbigail);
	var savedAbigail=checkEventComplete(Event.SavedAbigail);
	if (!turnedCrank)	{
		if (!savedAbigail)	{
			if (global.sins==0)	{
				queueDialogue("Abigail","Mary! Don't turn that crank, I can't swim. There's another way around, it's not too far.",spr_catPortrait,DialogueType.Basic);
				queueDialogue("Mary","Sorry, I didn't mean to scare you. I'm just investigating the area.",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Mary","Should I turn the crank anyway even though I will drown my friend?",spr_maryPortrait,DialogueType.Choice,"No way!", "Turn it!");
			}
			else if (global.sins==1)	{
				queueDialogue("Abigail","Mary! Don't turn that crank. If you turn the water on, I will drown, and you don't want that do you?",spr_catPortrait,DialogueType.Basic);
				queueDialogue("Mary","No, sorry. I don't think I do.",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Mary","Turn the crank anyway and drown my friend?",spr_maryPortrait,DialogueType.Choice,"No!", "Turn it!");
			}
			else if (global.sins==2)	{
				queueDialogue("Abigail","Mary! Don't turn that crank, I will drown. You don't want that do you?",spr_catPortrait,DialogueType.Basic);
				queueDialogue("Mary","...",spr_maryPortrait,DialogueType.Basic);
				queueDialogue("Abigail","No! You don't have to do this! No matter what you're going through, it's never too late to change!",spr_catPortrait,DialogueType.Basic);
				queueDialogue("Mary","Drown the cat?",spr_maryPortrait,DialogueType.Choice,"Drown her", "Not now");
			}
		}
		else	{
			if (global.sins==0)	{
				queueDialogue("Mary","This will create a path across the hole. I can do it safely now Abigail is out of there. Turn the crank?",spr_maryPortrait,DialogueType.Choice,"Turn the crank", "Maybe later");
			}
			else if (global.sins==1)	{
				queueDialogue("Mary","I can cross the hole if I turn the water on. Turn the crank?",spr_maryPortrait,DialogueType.Choice,"Turn it", "Not now");
			}
			else if (global.sins==2)	{
				queueDialogue("Mary","Glad I saved my friend. Shame I couldn't save the others.",spr_maryPortrait,DialogueType.Choice,"Turn the crank", "Do not");
			}
		}
	}
	else	{
		if (drownedAbigail)	{
			if (global.sins==1)
				queueDialogue("Mary","Can't believe I drowned my friend. What came over me? I can never forgive myself for this.",spr_maryPortrait,DialogueType.Basic);
			else if (global.sins==2)
				queueDialogue("Mary","I drowned Abigail just to save some time. What is happening to me? Am I a monster?",spr_maryPortrait,DialogueType.Basic);
			else if (global.sins==3)
				queueDialogue("Mary","This is how I deliberately murdered my friend.",spr_maryPortrait,DialogueType.Basic);
		}
		else	{
			if (global.sins==0)
				queueDialogue("Mary","I've already filled the hole up with water. No need to do it again.",spr_maryPortrait,DialogueType.Basic);
			else if (global.sins==1)
				queueDialogue("Mary","Already flooded the hole.",spr_maryPortrait,DialogueType.Basic);
			else if (global.sins==2)
				queueDialogue("Mary","I've filled the hole. If only I could fill the hole in my heart.",spr_maryPortrait,DialogueType.Basic);
		}
	}
	active=false;
}