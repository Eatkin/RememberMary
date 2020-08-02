/// @description

if (active and textQueueEmpty())	{
	global.softPause=true;
	//Destroy the cat
	if (image_index>=5 and instance_exists(obj_cat))	{
		var xx=obj_cat.x;
		var yy=obj_cat.y;
		var drown=instance_create_layer(xx,yy,"Interactives",obj_catDrown);
		drown.image_index=image_index;
		instance_destroy(obj_cat);
		audio_play_sound(transition_low_2,0,false);
	}
		
	//Turn visible, start animation
	visible=true;
	image_speed=1;
	//If we've finished animation, turn off
	if (image_index>image_number-1)	{
		image_speed=0;
		active=false;
		instance_destroy(linkedSolid);
		global.softPause=false;
		setEventComplete(Event.FilledPool);
	}
}