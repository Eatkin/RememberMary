/// @description

if (global.sins==0)
	queueDialogue("Mary","That stick was hard to choke down. After eating it, I have to wonder why I even thought about eating it in the first place? Is this a metaphor?",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary","The stick hurts to eat. Maybe I deserve it.",spr_maryPortrait,DialogueType.Basic);
eatenStick=true;

audio_play_sound(transition_high_2,0,false);