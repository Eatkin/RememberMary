/// @description

if (enteredDoor and textQueueEmpty())	{
	if (!instance_exists(obj_ditherTransition))	{
		var trans=instance_create_layer(0,0,"Text",obj_ditherTransition);
		trans.roomToGoto=destination;
	}
}

if (active)	{
	if (global.sins==0)	{
		queueDialogue("Mary","If I go through this door, I feel like I won't be able to come back.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Mary","Should I enter the door?",spr_maryPortrait,DialogueType.Choice,"I'm ready", "Not just yet");
	}
	else if (global.sins==1)	{
		queueDialogue("Mary","I have a feeling I'm not going to come back if I go through this door.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Mary","Go through?",spr_maryPortrait,DialogueType.Choice,"Let's go!", "Not now");
	}
	else if (global.sins==2)	{
		queueDialogue("Mary","I can't come back if I go through here.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Mary","Enter anyway?",spr_maryPortrait,DialogueType.Choice,"Yes", "Not yet");
	}
	else {
		queueDialogue("Mary","I can't come back if I go through this door for some reason. The developer couldn't be bothered to explain that one.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Mary","Enter?",spr_maryPortrait,DialogueType.Choice,"Yes", "No");
	}
	active=false;
}