/// @description

if (active)	{
	if (global.sins==0)	{
		queueDialogue("Mary","Abigail! how did you get down that great big hole?",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Abigail","Oh hi, Mary. I thought I'd be able to get back out again. But now here I am, stuck in a hole. I sure feel stupid.",spr_catPortrait,DialogueType.Basic);
		queueDialogue("Abigail","I have a rope in my bag, but I left my bag behind. Maybe try and find it for me?",spr_catPortrait,DialogueType.Basic);
		queueDialogue("Mary","I'm always happy to help out my friends. Be right back.",spr_maryPortrait,DialogueType.Basic);
	}
	else if (global.sins==1)	{
		queueDialogue("Mary","Hi Abigail. I see you're stuck in a hole.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Abigail","Oh Mary, thank goodness. Yes I thought I'd be able to get out, but of course I can't. My bag has a rope in it, could you help me?",spr_catPortrait,DialogueType.Basic);
		queueDialogue("Mary","I'll see what I can do.",spr_maryPortrait,DialogueType.Basic);
	}
	else if (global.sins==2)	{
		queueDialogue("Mary","Abigail. You're in quite a hole.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Abigail","Mary, thank the stars you're here! Uh...are you okay? You look a bit sick.",spr_catPortrait,DialogueType.Basic);
		queueDialogue("Mary","I don't want to talk about it.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Abigail","Well...okay, but let me know if you change your mind. I'm here to talk if you want. I'm sure I'll make it out this hole eventually.",spr_catPortrait,DialogueType.Basic);
		queueDialogue("Abigail","But if you'd like to help me, I do have a rope in my bag.",spr_catPortrait,DialogueType.Basic);
		queueDialogue("Mary","Okay.",spr_maryPortrait,DialogueType.Basic);
	}
	active=false;
}