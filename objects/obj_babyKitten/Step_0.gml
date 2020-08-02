/// @description UNUSED DIALOGUE
//Decided baby Simone didn't really add anything. Didn't like the dialogue either.

var drownedAbigail=checkEventComplete(Event.DrownedAbigail);
var savedAbigail=checkEventComplete(Event.SavedAbigail);

if (drownedAbigail)	{
	if (global.sins==1)	{
		queueDialogue("Simone","Are you going to save my mum?",spr_babyKittenPortrait,DialogueType.Basic);
		queueDialogue("Mary","I don't know if she can be saved anymore...",spr_maryPortrait,DialogueType.Basic);
	}
	else if (global.sins==2)	{
		queueDialogue("Simone","Where is my mum?",spr_babyKittenPortrait,DialogueType.Basic);
		queueDialogue("Mary","Abigail might not be coming back...",spr_maryPortrait,DialogueType.Basic);
	}
	else if (global.sins==3)	{
		queueDialogue("Simone","Where's my mum? I'm scared.",spr_babyKittenPortrait,DialogueType.Basic);
		queueDialogue("Mary","Your mother has drowned.",spr_maryPortrait,DialogueType.Basic);
	}
}
else if (savedAbigail)	{
	if (global.sins==0)	{
		queueDialogue("Simone","Thank you, Mary. I was scared I would never see my mum again.",spr_babyKittenPortrait,DialogueType.Basic);
	}
	else if (global.sins==1)	{
		queueDialogue("Simone","Thanks for saving my mum.",spr_babyKittenPortrait,DialogueType.Basic);
	}
	else if (global.sins==2)	{
		queueDialogue("Simone","You save my mum! I'm happy she's safe.",spr_babyKittenPortrait,DialogueType.Basic);
		queueDialogue("Mary","Maybe I can do some good in this world after all.",spr_maryPortrait,DialogueType.Basic);
	}
}
else	{
	if (global.sins==0)	{
		queueDialogue("Simone","Are you going to save my mum from the hole?",spr_babyKittenPortrait,DialogueType.Basic);
		queueDialogue("Mary","Yes, I hope so. There's no need to be scared.",spr_maryPortrait,DialogueType.Basic);
	}
	else if (global.sins==1)	{
		queueDialogue("Simone","Are you going to save my mum?",spr_babyKittenPortrait,DialogueType.Basic);
		queueDialogue("Mary","I don't know. I think so.",spr_maryPortrait,DialogueType.Basic);
	}
	else if (global.sins==2)	{
		queueDialogue("Simone","Where is my mum?",spr_babyKittenPortrait,DialogueType.Basic);
		queueDialogue("Mary","I don't know if she can be saved.",spr_maryPortrait,DialogueType.Basic);
	}
}