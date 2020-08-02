/// @description

var drownedAbigail=checkEventComplete(Event.DrownedAbigail);
var savedAbigail=checkEventComplete(Event.SavedAbigail);

if (transitionQueued and textQueueEmpty())	{
	instance_create_layer(0,0,"Text",obj_ditherTransitionMaze);
	transitionQueued=false;
}

if (active)	{
	if (drownedAbigail)	{
		if (global.sins==1)
			queueDialogue("Mary","Could've saved Abigail with this. Can't anymore.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==2)
			queueDialogue("Mary","Don't need this now...",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==3)
			queueDialogue("Mary","Pointless.",spr_maryPortrait,DialogueType.Basic);
	}
	else if (savedAbigail)	{
		if (global.sins==0)
			queueDialogue("Mary","I've already saved Abigail, I don't need the bag now!",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==1)
			queueDialogue("Mary","I don't need to use the bag again.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==2)
			queueDialogue("Mary","Don't need this.",spr_maryPortrait,DialogueType.Basic);
	}
	else	{
		if (global.sins==0)	{
			queueDialogue("Abigail","Mary, is that you? Have you found my bag?",spr_catPortrait,DialogueType.Basic);
			queueDialogue("Mary","Yeah, I'm here now. What should I do?",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Abigail","There's a rope in it, can you use that to help me out of this hole?",spr_catPortrait,DialogueType.Basic);
			queueDialogue("Mary","Should I drop the rope down now?",spr_maryPortrait,DialogueType.Choice,"Save Abigail","Not right now");
		}
		else if (global.sins==1)	{
			queueDialogue("Abigail","Mary? Have you found my bag?",spr_catPortrait,DialogueType.Basic);
			queueDialogue("Mary","Yeah, I'm here.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Abigail","There's a rope in it, can you help me out",spr_catPortrait,DialogueType.Basic);
			queueDialogue("Mary","Drop the rope down?",spr_maryPortrait,DialogueType.Choice,"Drop it","Later");
		}
		else if (global.sins==2)	{
			queueDialogue("Abigail","Mary, is that you?",spr_catPortrait,DialogueType.Basic);
			queueDialogue("Mary","...",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Abigail","If it is you, there's a rope in my bag, can you drop it down so I can climb out?",spr_catPortrait,DialogueType.Basic);
			queueDialogue("Mary","Rescue the cat?",spr_maryPortrait,DialogueType.Choice,"Yes","No");
		}
	}
	active=false;
}