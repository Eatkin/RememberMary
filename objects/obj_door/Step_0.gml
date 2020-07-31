/// @description

if (active)	{
	doorOpened=true;
	global.softPause=true;
}
	
if (doorOpened)	{
	if (sprite_index!=spr_doorOpening)	{
		sprite_index=spr_doorOpening;
		image_index=0;
		audio_play_sound(transition_high_1,0,false);
	}
	if (image_index>image_number-1)	{
		if (!instance_exists(obj_ditherTransition))	{
			var trans=instance_create_layer(0,0,"Text",obj_ditherTransition);
			trans.roomToGoto=destination;
		}
		//Reset the squiggle animation
		image_index-=2;
	}
}