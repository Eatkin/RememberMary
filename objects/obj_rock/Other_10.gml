/// @description

if (global.sins==0)
	queueDialogue("Mary","Why did I eat a rock? Was it to prove a point? Did I just eat it because I could? I don't know.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary","I cannot give a reason for why I ate this rock, but here I am..",spr_maryPortrait,DialogueType.Basic);
eatenRock=true;

audio_play_sound(transition_high_2,0,false);