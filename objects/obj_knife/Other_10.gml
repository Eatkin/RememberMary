/// @description

if (global.sins==0)
	queueDialogue("Mary","This could be dangerous in the wrong hands. Am I the wrong hands?",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary","This could be dangerous in the wrong hands. Like mine.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Mary","This is a dangerous weapon.",spr_maryPortrait,DialogueType.Basic);
takenKnife=true;

audio_play_sound(transition_low_2,0,false);