/// @description

if (growHuge and textQueueEmpty())	{
	global.softPause=true;
	if (sprite_index!=spr_duckGrowHuge)	{
		sprite_index=spr_duckGrowHuge;
		image_index=0;
		audio_play_sound(transition_high_1,0,false);
	}
	if (image_index>2)
		obj_mary.visible=false;
	
	if (image_index>8)	{
		var trans=instance_create_layer(0,0,"Text",obj_ditherTransition);
		trans.roomToGoto=room;
	}
}

if (active)	{
	queueDialogue("Mary","Hi Bella. I hope you are well today.",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("Bella","Mary, my favourite friend. After breakfast I might need your help with something.",spr_duckPortrait,DialogueType.Basic);
	queueDialogue("Mary","Oh okay, what do you need help with?",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("Bella","It isn't easy to explain.",spr_duckPortrait,DialogueType.Basic);
	if (checkEventComplete(Event.GotDuckFood))
		queueDialogue("Mary","Am I ready to give Bella some food?",spr_maryPortrait,DialogueType.Choice,"Feed Bella","Wait until later");
	else	{
		queueDialogue("Mary","I need to get some food from mum. I'll come back soon.",spr_maryPortrait,DialogueType.Basic);
		queueDialogue("Bella","Bye, Mary.",spr_duckPortrait,DialogueType.Basic);
	}
	active=false;
}