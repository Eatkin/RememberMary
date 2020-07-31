/// @description

if (active)	{
	var talkedToMum=checkEventComplete(Event.TalkedToMum);
	if (!talkedToMum)	{
		if (global.sins==0)
			queueDialogue("Mary","The fridge is well stocked with lots of nice fruits and vegetables.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==1)
			queueDialogue("Mary","The fridge is well stocked.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==2)
			queueDialogue("Mary","Dumb fridge.",spr_maryPortrait,DialogueType.Basic);
	}
	else if (!checkEventComplete(Event.GotDuckFood))	{
		if (global.sins==0)	{
			queueDialogue("Mary","The fridge is full of food. Lots of greens, peas and courgette for Bella.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Mary","Should I get some food for her?",spr_maryPortrait,DialogueType.Choice,"Prepare food","Not now");
		}
		else if (global.sins==1)	{
			queueDialogue("Mary","The fridge is full of food. Bella can have some.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Mary","Prepare Bella's food?",spr_maryPortrait,DialogueType.Choice,"Yes","No");
		}
		if (global.sins==2)	{
			queueDialogue("Mary","Should probably feed my pet duck.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Mary","Get food?",spr_maryPortrait,DialogueType.Choice,"Yes","No");
		}
	}
	else	{
		if (global.sins==0)
			queueDialogue("Mary","Browsing the fridge is fun, but I already got some food for Bella, I don't need anything else right now.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==1)
			queueDialogue("Mary","I've already got food for Bella. No need to look in the fridge again",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==2)
			queueDialogue("Mary","Blue fridge.",spr_maryPortrait,DialogueType.Basic);
		else
			queueDialogue("Mary","No point.",spr_maryPortrait,DialogueType.Basic);
	}
	
	active=false;
}