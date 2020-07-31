/// @description

if (active)	{
	var trans=instance_create_layer(0,0,"Text",obj_ditherTransition);
	trans.roomToGoto=destination;
	audio_play_sound(transition_med_2,0,false);
	active=false;
}