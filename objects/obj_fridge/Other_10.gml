/// @description

if (global.sins==0)
	queueDialogue("Mary","I've got some mixed green vegetables for Bella to eat!",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary","I got some food for Bella.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Mary","Got food.",spr_maryPortrait,DialogueType.Basic);
	
setEventComplete(Event.GotDuckFood);
audio_play_sound(transition_high_2,0,false);