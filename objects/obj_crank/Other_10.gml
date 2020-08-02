/// @description

var savedAbigail=checkEventComplete(Event.SavedAbigail);

if (savedAbigail)	{
	with (obj_poolFill)
		active=true;
		
	if (global.sins==0)
		queueDialogue("Mary","This will make it easier for Abigail to get over.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==1)
		queueDialogue("Mary","This will make a safe shortcut.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==2)
		queueDialogue("Mary","What's the point now?",spr_maryPortrait,DialogueType.Basic);
}
else	{
	if (global.sins==0)	{
		queueDialogue("Mary","I wouldn't want to hurt my friends. Or worse, drown them.",spr_maryPortrait,DialogueType.Basic);
	}
	else if (global.sins==1)	{
		queueDialogue("Mary","Maybe I don't have to take this path in life after all.",spr_maryPortrait,DialogueType.Basic);
	}
	else if (global.sins==2)	{
		queueDialogue("Abigail","Mary, please don't... we're friends, remember?",spr_catPortrait,DialogueType.Basic);
		queueDialogue("Mary","Let's get this over with.",spr_maryPortrait,DialogueType.Basic);
		with (obj_poolFill)
			active=true;
	}
}