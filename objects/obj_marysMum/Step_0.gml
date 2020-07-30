/// @description

if (active)	{
	if (checkEventComplete(Event.TalkedToMum))	{
		queueDialogue("Elizabeth","I hope your weekend is fun. Don't go committing any immoral acts or anything.",spr_marysMumPortrait,DialogueType.Basic);
		if (global.sins==0)
			queueDialogue("Mary","Of course I won't!",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==1)
			queueDialogue("Mary","Hah..yeah why would I do anything like that.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==2)
			queueDialogue("Mary","Okay.",spr_maryPortrait,DialogueType.Basic);
		else
			queueDialogue("Mary","...",spr_maryPortrait,DialogueType.Basic);
	}
	else	{
		queueDialogue("Elizabeth","Good morning Mary, your dad is...away at the moment. I don't know where he's gone. But we can enjoy some peace without him.",spr_marysMumPortrait,DialogueType.Basic);
		queueDialogue("Elizabeth","I'm cooking us a pot of stew for dinner. Maybe you could go out and feed Bella today. There's some lettuce and peas in the fridge, she love those.",spr_marysMumPortrait,DialogueType.Basic);
		queueDialogue("Elizabeth","Oh, and Mary, remember that no matter what happens, I'm proud of you. It'll be okay. I'll be okay.",spr_marysMumPortrait,DialogueType.Basic);
		queueDialogue("Mary","What do you mean? Why are you being so cryptic?",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Elizabeth","Nevermind, just..I love you, Mary. Don't forget that.",spr_marysMumPortrait,DialogueType.Basic);
		queueDialogue("Mary","Thanks, mum. I love you too.",spr_maryPortrait,DialogueType.Basic);
		setEventComplete(Event.TalkedToMum);
	}
	active=false;
}