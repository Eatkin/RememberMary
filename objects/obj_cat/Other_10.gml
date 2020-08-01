/// @description

var hasEnteredBella=checkEventComplete(Event.FedBella);
if (hasEnteredBella)	{
	if (global.sins==0)	{
		queueDialogue("Mary","Can I go back inside you?",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Bella","Don't say it like that, it sounds weird.",spr_duckPortrait,DialogueType.Basic);
	}
	else if (global.sins==1)	{
		queueDialogue("Mary","Can I go back?",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Bella","Sure. This isn't weird or anything, by the way.",spr_duckPortrait,DialogueType.Basic);
	}
	else if (global.sins==2)	{
		queueDialogue("Mary","Back?",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Bella","Sure.",spr_duckPortrait,DialogueType.Basic);
	}
}
else	{
	if (global.sins==0)	{
		queueDialogue("Mary","Peas, lettuce, courgettes and more nice things for breakfast today.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Bella","Thanks Mary, this is why you're my favourite friend.",spr_duckPortrait,DialogueType.Basic);
		queueDialogue("Bella","I'm going to eat you now. Sorry about this.",spr_duckPortrait,DialogueType.Basic);
	}
	else if (global.sins==1)	{
		queueDialogue("Mary","I got a nice selection of green vegetables for breakfast today.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Bella","Thanks Mary, you're my favourite friend.",spr_duckPortrait,DialogueType.Basic);
		queueDialogue("Bella","Sorry about this.",spr_duckPortrait,DialogueType.Basic);
	}
	else if (global.sins==2)	{
		queueDialogue("Mary","Breakfast.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Bella","Well...thank you. I know things are hard. I appreciate this.",spr_duckPortrait,DialogueType.Basic);
		queueDialogue("Bella","And also, sorry about what I'm about to do.",spr_duckPortrait,DialogueType.Basic);
	}
	setEventComplete(Event.FedBella);
}
growHuge=true;