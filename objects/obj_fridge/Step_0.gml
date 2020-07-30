/// @description

if (active)	{
	var talkedToMum=checkEventComplete(Event.TalkedToMum);
	if (!talkedToMum)
		queueDialogue("Mary","The fridge is well stocked.",spr_maryPortrait,DialogueType.Basic);
	else if (!checkEventComplete(Event.GotDuckFood))	{
		queueDialogue("Mary","The fridge is full of food. Lots of greens, peas and courgette for Bella.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Mary","Should I get some food for her?",spr_maryPortrait,DialogueType.Choice,"Prepare food","Not now");
	}
	else
		queueDialogue("Mary","Browsing the fridge is fun, but I already have some food for Bella, I don't need anything else right now.",spr_maryPortrait,DialogueType.Basic);
	
	active=false;
}