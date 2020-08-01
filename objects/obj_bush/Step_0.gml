/// @description

if (active)	{
	if (global.sins==0)
		queueDialogue("Mary","This bush looks like it can be entered. How funny.",spr_maryPortrait,DialogueType.Choice,"Go in the bush","Stay out of the bush");
	else if (global.sins==1)
		queueDialogue("Mary","Shall I enter the bush?",spr_maryPortrait,DialogueType.Choice,"Yes","No");
	else if (global.sins==2)
		queueDialogue("Mary","Go in bush?",spr_maryPortrait,DialogueType.Choice,"Yes","No");
	else
		queueDialogue("Mary","Go back?",spr_maryPortrait,DialogueType.Choice,"Yes","No");
	active=false;
}

if (wardrobeOpened and textQueueEmpty() and !takenMary)	{
	//Play animation of wardrobe opening and tentacle grabbing Mary
	if (sprite_index!=spr_maryEnterBush)	{
		sprite_index=spr_maryEnterBush;
		image_index=0;
		audio_play_sound(transition_med_4,0,false);
		obj_mary.visible=false;
	}
	
	//Close the door
	if (image_index>=4.5)	{
		sprite_index=spr_bush;
		takenMary=true;
	}
}

if (takenMary and !instance_exists(obj_ditherTransition))	{
	var trans=instance_create_layer(0,0,layer,obj_ditherTransition);
	trans.roomToGoto=destination
}