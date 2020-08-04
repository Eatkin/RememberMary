/// @description

if (hasTalked and textQueueEmpty())
	room_goto(rm_endingScreen)

if (active)	{
	queueDialogue("Mary","Hello?",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("???","Hello, Mary. You've had quite a day, haven't you?",spr_neutralManPortrait,DialogueType.Basic);
	queueDialogue("???","I'm sorry but I have to break some bad news.",spr_neutralManPortrait,DialogueType.Basic);
	queueDialogue("???","It's a little bit sensitive.",spr_neutralManPortrait,DialogueType.Basic);
	queueDialogue("???","Mary, I'm afraid you died.",spr_neutralManPortrait,DialogueType.Basic);
	queueDialogue("Mary","What? How can I be dead? It all seems so real...",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("???","You uhhh...I don't have your file on me, I'm not sure what happened.",spr_neutralManPortrait,DialogueType.Basic);
	queueDialogue("???","But that's it, you're dead.",spr_neutralManPortrait,DialogueType.Basic);
	queueDialogue("???","Dead as a donut.",spr_neutralManPortrait,DialogueType.Basic);
	queueDialogue("???","I mean dead as a doornail.",spr_neutralManPortrait,DialogueType.Basic);
	queueDialogue("???","There's nothing else we can do, I'm sorry.",spr_neutralManPortrait,DialogueType.Basic);
	queueDialogue("Mary","But why am I still here? What happens now?",spr_maryPortrait,DialogueType.Basic);
	hasTalked=true;
	active=false;
}