/// @description

if (active)	{
	queueDialogue("Mary","A tall crate...should I climb up it?",spr_maryPortrait,DialogueType.Choice,"Yes", "No");
	active=false;
}

if (jumped and textQueueEmpty())
	room_goto(rm_endingScreen);