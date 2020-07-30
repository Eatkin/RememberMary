/// @description

if (active)	{
	queueDialogue("Mary","Shall I enter the wardrobe?",spr_maryPortrait,DialogueType.Choice,"Yes","No");
	active=false;
}

if (wardrobeOpened and textQueueEmpty() and !takenMary)	{
	//Play animation of wardrobe opening and tentacle grabbing Mary
	if (sprite_index!=spr_wardrobeTakeMary)	{
		sprite_index=spr_wardrobeTakeMary;
		image_index=0;
		audio_play_sound(transition_med_4,0,false);
	}
	
	//Mary is drawn in after this frame so make her invisible
	if (image_index>=6)
		obj_mary.visible=false;
	
	//Close the door
	if (image_index>=12.5)	{
		sprite_index=spr_wardrobe;
		takenMary=true;
	}
}

if (takenMary and !instance_exists(obj_ditherTransition))	{
	var trans=instance_create_layer(0,0,layer,obj_ditherTransition);
	trans.roomToGoto=rm_sewer;
}