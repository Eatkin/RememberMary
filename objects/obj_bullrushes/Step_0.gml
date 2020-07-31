/// @description

if (active)	{
	if (global.sins==0)	{
		queueDialogue("Mary","A beautiful bunch of bullrushes!",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Mary","Sometimes I pick them to eat.",spr_maryPortrait,DialogueType.Basic);
	}
	else if (global.sins==1)	{
		queueDialogue("Mary","A bunch of bullrushes.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Mary","Sometimes I eat them.",spr_maryPortrait,DialogueType.Basic);
	}
	else if (global.sins==2)	{
		queueDialogue("Mary","Bullrushes.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Mary","Edible.",spr_maryPortrait,DialogueType.Basic);
	}
	else	{
		queueDialogue("Mary","Some dumb plant.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Mary","Who cares.",spr_maryPortrait,DialogueType.Basic);
	}
	active=false;
}