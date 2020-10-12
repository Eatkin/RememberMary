/// @description

if (active)	{
	if (checkEventComplete(Event.TalkedToMum))	{
		queueDialogue("Elizabeth","I hope your weekend is fun. Don't go committing any immoral acts or anything.",spr_marysMumPortrait,DialogueType.Basic);
		if (global.sins>=2)
			queueDialogue("Elizabeth","Oh my god, I was joking. You look terrible, Mary!",spr_marysMumPortrait,DialogueType.Basic);
		if (global.sins==0)
			queueDialogue("Mary","Of course I won't!",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==1)
			queueDialogue("Mary","Hah..yeah why would I do anything like that.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==2)
			queueDialogue("Mary","I hope I haven't disappointed you, mum.",spr_maryPortrait,DialogueType.Basic);
		else
			queueDialogue("Mary","It's too late for me. I cannot be saved.",spr_maryPortrait,DialogueType.Basic);
	}
	else	{
		if (global.sins==0)	{
			queueDialogue("Elizabeth","Good morning Mary, your dad is...away at the moment. I don't know where he's gone. But we can enjoy some peace without him.",spr_marysMumPortrait,DialogueType.Basic);
			queueDialogue("Elizabeth","I'm cooking us a pot of stew for dinner. Maybe you could go out and feed Bella today.",spr_marysMumPortrait,DialogueType.Basic);
			queueDialogue("Elizabeth","There's some lettuce and peas in the fridge, she love those.",spr_marysMumPortrait,DialogueType.Basic);
			queueDialogue("Elizabeth","Oh, and Mary, remember that no matter what happens, I'm proud of you. It'll be okay. I'll be okay.",spr_marysMumPortrait,DialogueType.Basic);
			queueDialogue("Mary","What do you mean? Why are you being so cryptic?",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Elizabeth","Nevermind, just..I love you, Mary. Don't forget that.",spr_marysMumPortrait,DialogueType.Basic);
			queueDialogue("Mary","Thanks, mum. I love you too.",spr_maryPortrait,DialogueType.Basic);
		}
		if (global.sins==1)	{
			queueDialogue("Elizabeth","Good morning Mary, your dad has gone away somewhere. He didn't tell me where",spr_marysMumPortrait,DialogueType.Basic);
			queueDialogue("Elizabeth","I'm cooking us a pot of stew for dinner. You should go out and feed Bella.",spr_marysMumPortrait,DialogueType.Basic);
			queueDialogue("Elizabeth","Oh, and Mary, remember that no matter what happens, I'm proud of you. It'll be okay. I'll be okay.",spr_marysMumPortrait,DialogueType.Basic);
			queueDialogue("Mary","Thanks, mum. That was very cryptic, but thank you anyway.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Elizabeth","I love you, Mary. Don't forget that.",spr_marysMumPortrait,DialogueType.Basic);
			queueDialogue("Mary","Thanks, mum.",spr_maryPortrait,DialogueType.Basic);
		}
		if (global.sins==2)	{
			queueDialogue("Elizabeth","Good morning Mary, your dad is away today. Who knows where, who cares.",spr_marysMumPortrait,DialogueType.Basic);
			queueDialogue("Mary","I hate that abusive asshole.",spr_maryPortrait,DialogueType.Basic);
			queueDialogue("Elizabeth","Uhh...okay, a bit on the nose, but I do agree with you.",spr_marysMumPortrait,DialogueType.Basic);
			queueDialogue("Elizabeth","By the way, Mary. I'm proud of you. It'll be okay. I'll be okay.",spr_marysMumPortrait,DialogueType.Basic);
			queueDialogue("Elizabeth","I love you, Mary. Don't forget that. And my god, what have you been doing? You look awful. Maybe relax a little.",spr_marysMumPortrait,DialogueType.Basic);
			queueDialogue("Mary","I don't deserve to be loved..",spr_maryPortrait,DialogueType.Basic);
		}
		setEventComplete(Event.TalkedToMum);
	}
	active=false;
}