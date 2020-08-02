/// @description

var savedAbigail=checkEventComplete(Event.SavedAbigail);

if (savedAbigail)	{
	if (global.sins==0)
		queueDialogue("Mary","Maybe I'll do this later.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==1)
		queueDialogue("Mary","Not right now.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==2)
		queueDialogue("Mary","No point.",spr_maryPortrait,DialogueType.Basic);
}
else	{
	if (global.sins==0)	{
		queueDialogue("Abigail","Mary! What are you doing??",spr_catPortrait,DialogueType.Basic);
		with (obj_poolFill)
			active=true;
	}
	else if (global.sins==1)	{
		queueDialogue("Abigail","You monster! I can't believe you'd do this to your friend!",spr_catPortrait,DialogueType.Basic);
		with (obj_poolFill)
			active=true;
	}
	else if (global.sins==2)	{
		queueDialogue("Abigail","Mary, we're friends, remember? Please, just let's talk about this. Whatever you're going through. I'm here for you.",spr_catPortrait,DialogueType.Basic);
		queueDialogue("Mary","Maybe you're right...but I think I'm too far gone to be saved. It's too late for me, but maybe it's not too late for you.",spr_maryPortrait,DialogueType.Basic);
	}
}