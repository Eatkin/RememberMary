/// @description

if (active)	{
	var takenPlushies=checkEventComplete(Event.TakenPlushies);
	if (takenPlushies)	{
		if (global.sins==1)
			queueDialogue("Mary","I probably shouldn't have done that. Now the ducklings are trapped forever.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==2)
			queueDialogue("Mary","The ducklings are now trapped.",spr_maryPortrait,DialogueType.Basic);
		else
			queueDialogue("Mary","The ducklings can no longer be saved.",spr_maryPortrait,DialogueType.Basic);
	}
	else	{
		if (global.sins==0)
			queueDialogue("Mary","The plushies are gone. I'm glad I didn't give into temptation. Those ducklings might never have escaped.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==1)
			queueDialogue("Mary","The plushies are gone. I wonder what would have happened if I had taken them.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==2)
			queueDialogue("Mary","Plushies are no longer there.",spr_maryPortrait,DialogueType.Basic);
	}
		
	
	active=false;
}