/// @description

if (global.sins==0)
	queueDialogue("Mary","This coin is really nice, it could make a good bribe too!",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary","This coin is quite good. I could bribe someone with it.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Mary","Now I have a coin.",spr_maryPortrait,DialogueType.Basic);
takenCoin=true;

audio_play_sound(transition_high_1,0,false);