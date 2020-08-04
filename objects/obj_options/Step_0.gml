/// @description

//Start with keyboard/gamepad control
var vinput=getInput(Input.VinputPressed);
if (vinput!=0)	{
	selection+=vinput;
	if (selection<0)
		selection+=selectionMax;
	
	selection=selection%(selectionMax+1);
}

//Take over with mouse control
if (mouse_x!=mouse_xPrev or mouse_y!=mouse_yPrev)	{
	//Get the mouse_y pos - easy because we only have three options
	if (mouse_y<224)
		selection=0;
	else if (mouse_y>352)
		selection=2;
	else
		selection=1;
}

var select=max(getInput(Input.Interact),keyboard_check(vk_enter));		//Override with enter as well

if (select==0)
	select=mouse_check_button_pressed(mb_left);
	
if (select)	{
	if (selection==0)	{
		with (obj_setup)
			event_perform(ev_keypress,ord("F"));		//This is the full screen switching button
			
		isFullscreen=isFullscreen^1;
	}
	else if (selection==1)
		global.mouseOnly=global.mouseOnly^1;
	else	{
		room_goto_next();
		if (global.mouseOnly=false)
			window_set_cursor(cr_none);
	}
}