/// @description

if (global.sins==0)
	queueDialogue("Abigail","Thanks Mary, you're the best!",spr_catPortrait,DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Abigail","Thank you, Mary.",spr_catPortrait,DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Abigail","Thanks Mary, I knew you had it in you.",spr_catPortrait,DialogueType.Basic);
	
global.virtues+=1;
setEventComplete(Event.SavedAbigail);
transitionQueued=true;