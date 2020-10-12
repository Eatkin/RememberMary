/// @description

if (active)	{
	queueDialogue("Mary","A tall crate. Very close to the edge of the balcony.",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("Mary","Should I climb up it?",spr_maryPortrait,DialogueType.Choice,"Yes", "No");
	active=false;
}

if (jumped and textQueueEmpty())
	room_goto(rm_endingScreen);