/// @description

if (instance_exists(obj_ditherTransitionIn))
	instance_destroy(obj_ditherTransitionIn);
	
if (textQueueEmpty() and alarm[0]=-1)	{
	if (blackScreen)	{
		blackScreen=false;
		instance_create_layer(0,0,layer,obj_fadeInTransition);
		queueDialogue("???","Please tell me you're awake...",spr_mushroomPortrait,DialogueType.Basic);
	}
	else if (!maryAwake)	{
		maryAwake=true;
		with (obj_maryCough)
			active[0]=true;
	}
}

global.softPause=true;

image_speed=1;