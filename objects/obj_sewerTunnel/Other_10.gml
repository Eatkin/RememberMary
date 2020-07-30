/// @description Enter the tunnel

var trans=instance_create_layer(0,0,"Text",obj_ditherTransition);
trans.roomToGoto=destination;

var snd=transition_low_1;
if (destination==rm_sewer)
	snd=transition_med_2;

audio_play_sound(snd,0,false);