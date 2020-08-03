/// @description

if (hasTalked and textQueueEmpty())
	room_goto(rm_endingScreen)

if (active)	{
	queueDialogue("Mary","Hello?",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("???","Hello, Mary. You've had quite a day, haven't you?",spr_neutralManPortrait,DialogueType.Basic);
	queueDialogue("???","I am a Master of the Universe.",spr_neutralManPortrait,DialogueType.Basic);
	queueDialogue("???","I'm sorry but I have some bad news for you.",spr_neutralManPortrait,DialogueType.Basic);
	queueDialogue("???","Well, Mary...you died.",spr_neutralManPortrait,DialogueType.Basic);
	queueDialogue("Mary","...what?",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("???","There's nothing else we can do, I'm sorry.",spr_neutralManPortrait,DialogueType.Basic);
	queueDialogue("Mary","But wait, this can't be it. This can't be all there is. Why now?",spr_maryPortrait,DialogueType.Basic);
	hasTalked=true;
	active=false;
}