/// @description

if (active)	{
	if (global.sins==0)
		queueDialogue("Mary","One of Topaz's baby ducks! I'll put it in my pocket for later.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==1)
		queueDialogue("Mary","A baby duck. I'll put it in my pocket.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==2)
		queueDialogue("Mary","A duck.",spr_maryPortrait,DialogueType.Basic);
	
	var allDucks=(obj_duckMap.ducksCollected==2)	?	true	:	false;
	if (allDucks)	{
		if (global.sins==0)
			queueDialogue("Mary","That's all the ducks, I should make sure I return them safely to Topaz now! She will be so happy!",spr_maryPortrait,DialogueType.Basic);	
		else if (global.sins==1)
			queueDialogue("Mary","That's all of them, I should give them back to Topaz.",spr_maryPortrait,DialogueType.Basic);	
		else if (global.sins==2)
			queueDialogue("Mary","I have all the ducks. But I'm still empty inside.",spr_maryPortrait,DialogueType.Basic);	
			
		setEventComplete(Event.RescuedDucks);
	}
	active=false;
}