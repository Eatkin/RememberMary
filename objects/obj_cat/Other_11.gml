/// @description

var hasEnteredBella=checkEventComplete(Event.FedBella);
if (hasEnteredBella)	{
	if (global.sins==0)	{
		queueDialogue("Mary","I'm going to stay in the garden for a bit.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Bella","No problem. Bye, Mary.",spr_duckPortrait,DialogueType.Basic);
	}
	else if (global.sins==1)	{
		queueDialogue("Mary","Maybe later.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Bella","Bye, Mary.",spr_duckPortrait,DialogueType.Basic);
	}
	else if (global.sins==2)	{
		queueDialogue("Mary","No.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Bella","Okay Mary. Stay safe.",spr_duckPortrait,DialogueType.Basic);
	}
}
else	{
	if (global.sins==0)	{
		queueDialogue("Mary","I'll bring your breakfast soon. I have something to do first.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Bella","Bye, Mary.",spr_duckPortrait,DialogueType.Basic);
	}
	else if (global.sins==1)	{
		queueDialogue("Mary","Be right back.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Bella","Bye, Mary.",spr_duckPortrait,DialogueType.Basic);
	}
	else if (global.sins==2)	{
		queueDialogue("Mary","I don't have food right now.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Bella","Okay, Mary. Goodbye.",spr_duckPortrait,DialogueType.Basic);
	}
}