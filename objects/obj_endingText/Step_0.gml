/// @description

timer+=1;

if (instance_exists(obj_ditherTransitionIn))
	instance_destroy(obj_ditherTransitionIn);
	
if (timer==delay)
	audio_play_sound(transition_low_1,0,false);