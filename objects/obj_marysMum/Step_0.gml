/// @description

if (active)	{
	queueDialogue("Elizabeth","Good morning Mary, your dad is...away at the moment. I don't know where he's gone. But we can enjoy some peace without him.",spr_marysMumPortrait,DialogueType.Basic);
	queueDialogue("Elizabeth","I'm cooking us a pot of stew for dinner. Maybe you could go out and feed the ducks today. There's some lettuce and peas in the fridge, ducks love those.",spr_marysMumPortrait,DialogueType.Basic);
	queueDialogue("Elizabeth","Oh, and Mary, remember that no matter what happens, I'm proud of you. It'll be okay. I'll be okay.",spr_marysMumPortrait,DialogueType.Basic);
	queueDialogue("Mary","What do you mean? Why are you being so cryptic?",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("Elizabeth","Nevermind, just..I love you, Mary. Don't forget that.",spr_marysMumPortrait,DialogueType.Basic);
	queueDialogue("Mary","Thanks, mum. I love you too.",spr_maryPortrait,DialogueType.Basic);
	setEventComplete(Event.TalkedToMum);
	active=false;
}