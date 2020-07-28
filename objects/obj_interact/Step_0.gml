/// @description

if (global.softPause)
	exit;

with (linkedInstance)
	image_speed=0;

//The bboxes are oversized so if we collide with mary, we can interact with her
if (place_meeting(x,y,obj_mary))	{
	with (linkedInstance)
		image_speed=1;
		
	if (getInput(Input.Interact) and !instance_exists(par_textbox))	{
		if (linkedInstance==noone)	{
			queueDialogue("Error","You are an error",spr_wardrobe,DialogueType.Basic);
		}
		with (linkedInstance)
			active=true;
	}
}