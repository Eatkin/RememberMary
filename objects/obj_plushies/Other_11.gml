/// @description

var allDucks=checkEventComplete(Event.RescuedDucks);
if (allDucks)	{
	if (global.sins==0)
		queueDialogue("Mary","I'll leave them alone. Maybe there's a reason they're here.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==1)
		queueDialogue("Mary","I don't think I need them. I'll leave them.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==2)
		queueDialogue("Mary","Topaz won't care about stupid plushies.",spr_maryPortrait,DialogueType.Basic);
}
else	{
	if (global.sins==0)
		queueDialogue("Mary","I hope this is the right thing to do.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==1)
		queueDialogue("Mary","This is probably the wrong thing to do...",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==2)
		queueDialogue("Mary","This is definitely the wrong thing to do. But why stop now?",spr_maryPortrait,DialogueType.Basic);
		
	setEventComplete(Event.TakenPlushies);
	audio_play_sound(transition_low_2,0,false);
	setEventComplete(Event.FailedRescue);
	global.sins+=1;
}