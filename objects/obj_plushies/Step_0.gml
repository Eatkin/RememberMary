/// @description

if ((checkEventComplete(Event.TakenPlushies) or checkEventComplete(Event.RescuedOneDuck)) and textQueueEmpty())	{
	instance_destroy();
	
	//I need this here - I don't know why I need this here, but it doesn't work in the destroy event for some reason
	if (checkEventComplete(Event.TakenPlushies))
		instance_activate_object(obj_wall);
	exit;
}

if (active)	{
	//var allDucks=checkEventComplete(Event.RescuedDucks);
	if (global.sins==0)
		queueDialogue("Mary","It's a basket of toy ducklings! They're very cute.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==1)
		queueDialogue("Mary","A basket of toy ducklings.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==2)
		queueDialogue("Mary","Some toy ducks.",spr_maryPortrait,DialogueType.Basic);
		
	/*This is now obselete as the ducks disappear if you rescue the ducks
	
	if (allDucks)	{
		if (global.sins==0)	{
			queueDialogue("Mary","I've already rescued all Topaz's ducks so I could take the plushies too.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Mary","That would be a really nice things to do for her. Should I take them?",spr_maryPortrait,DialogueType.Choice,"Take plushies","Leave them");
		}
		else if (global.sins==1)	{
			queueDialogue("Mary","I've saved all the ducks already.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Mary","I could take these for Topaz.",spr_maryPortrait,DialogueType.Choice,"Take plushies","Leave them");
		}
		else if (global.sins==2)	{
			queueDialogue("Mary","I've saved the ducks.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Mary","Maybe taking these plushies will redeem some of my sins.",spr_maryPortrait,DialogueType.Choice,"Take them","No");
		}
	}
	else	{*/
		if (global.sins==0)	{
			queueDialogue("Mary","I could give Topaz these. They're on a pressure plate though and something bad might happen if I take them.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Mary","I don't think Topaz is an idiot either. She will probably notice these are actually plushies.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Mary","Should I take the plushies?.",spr_maryPortrait,DialogueType.Choice,"No way!","Take them!");
		}
		else if (global.sins==1)	{
			queueDialogue("Mary","I could give them to Topaz. They're on a pressure plate. Will probably cause untold consequences if I take them now.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Mary","Maybe Topaz won't notice they're not real.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Mary","Should I take them?",spr_maryPortrait,DialogueType.Choice,"No","Take them");
		}
		else if (global.sins==2)	{
			queueDialogue("Mary","Topaz might think these are real then I don't have to bother saving the real ducks.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Mary","I should probably just take them.",spr_maryPortrait,DialogueType.Choice,"Take","Leave");
		}
	//}
	active=false;
}