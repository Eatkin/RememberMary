/// @description

var allDucks=checkEventComplete(Event.RescuedDucks);
if (allDucks)	{
	if (global.sins==0)
		queueDialogue("Mary","Alright I'm going to give Topaz the plushies.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==1)
		queueDialogue("Mary","I'll bring her the plushies.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==2)
		queueDialogue("Mary","The plushies are doing little to ease my guilt.",spr_maryPortrait,DialogueType.Basic);
	
	setEventComplete(Event.TakenPlushies);
	audio_play_sound(transition_low_1,0,false);
}
else	{
	if (global.sins==0)
		queueDialogue("Mary","The toys are nice but I should probably leave them alone, just incase.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==1)
		queueDialogue("Mary","I should probably leave them.",spr_maryPortrait,DialogueType.Basic);
	else if (global.sins==2)	{
		queueDialogue("Mary","This is definitely the wrong thing to do. But why stop now?",spr_maryPortrait,DialogueType.Basic);
		setEventComplete(Event.TakenPlushies);
		audio_play_sound(transition_low_2,0,false);
		setEventComplete(Event.FailedRescue);
		global.sins+=1;
	}
}