/// @description

if (!instance_exists(linkedInstance))	{
	instance_destroy();
	exit;
}

if (global.softPause)
	exit;

with (linkedInstance)
	image_speed=0;

//The bboxes are oversized so if we collide with mary, we can interact with her
if (place_meeting(x,y,obj_mary))	{
	with (linkedInstance)
		image_speed=1;
		
	var interact=getInput(Input.Interact);
	//Alt using mouse button
	if (mouse_check_button_pressed(mb_left))	{
		var bbl=min(bbox_left,linkedInstance.bbox_left);
		var bbr=max(bbox_right,linkedInstance.bbox_right);
		var bbt=min(bbox_top,linkedInstance.bbox_top);
		var bbb=max(bbox_bottom,linkedInstance.bbox_bottom);
		if (mouse_x==clamp(mouse_x,bbl,bbr) and mouse_y==clamp(mouse_y,bbt,bbb))
			interact=true;
	}
		
	if (interact and !instance_exists(par_textbox))	{
		if (linkedInstance==noone)
			queueDialogue("Error","You are an error",spr_wardrobe,DialogueType.Basic);

		with (linkedInstance)
			active=true;
	}
}