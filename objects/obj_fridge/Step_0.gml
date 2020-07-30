/// @description

if (active)	{
	var talkedToMum=checkEventComplete(Event.TalkedToMum);
	if (!talkedToMum)
		queueDialogue("Mary","The fridge is well stocked.",spr_maryPortrait,DialogueType.Basic);
	else if (!checkEventComplete(Event.GotDuckFood))	{
		queueDialogue("Mary","The fridge is full of food. Lots of greens, peas and courgette for the ducks to eat.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Mary","Should I get some food for the ducks?",spr_maryPortrait,DialogueType.Choice,"Get duck food","Not now");
	}
	else
		queueDialogue("Mary","Browsing the fridge is fun, but I already have some food for the ducks, I don't need anything else.",spr_maryPortrait,DialogueType.Basic);
	
	active=false;
}