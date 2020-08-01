/// @description

if (active)	{
	if (pulledLever)	{
		if (global.sins==0)
			queueDialogue("Mary","I've already pulled this lever, no need to do it again.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==1)
			queueDialogue("Mary","I've already pulled this lever.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==2)
			queueDialogue("Mary","Don't need to pull this again.",spr_maryPortrait,DialogueType.Basic);
		else
			queueDialogue("Mary","It would be pointless.",spr_maryPortrait,DialogueType.Basic);
	}
	else	{
		if (global.sins==0)
			queueDialogue("Mary","Pulling this lever will surely help towards rescuing Abigail.",spr_maryPortrait,DialogueType.Choice,"Pull the lever","Not now");
		else if (global.sins==1)
			queueDialogue("Mary","Pulling this lever might unlock something.",spr_maryPortrait,DialogueType.Choice,"Pull it","Do not pull");
		else if (global.sins==2)
			queueDialogue("Mary","Pull the lever?",spr_maryPortrait,DialogueType.Choice,"Yes","No");
		else
			queueDialogue("Mary","There is little point in pulling this lever now...",spr_maryPortrait,DialogueType.Choice,"Pull it","Do not");
	}
	active=false;
}