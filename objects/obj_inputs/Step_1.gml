/// @description

var hinput=max(keyboard_check(vk_right),keyboard_check(ord("D")))-max(keyboard_check(vk_left),keyboard_check(ord("A")));
var hinputPressed=max(keyboard_check_pressed(vk_right),keyboard_check_pressed(ord("D")))-max(keyboard_check_pressed(vk_left),keyboard_check_pressed(ord("A")));
var vinput=max(keyboard_check(vk_down),keyboard_check(ord("S")))-max(keyboard_check(vk_up),keyboard_check(ord("W")));
var vinputPressed=max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")))-max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")));
var interact=max(keyboard_check_pressed(ord("Z")),keyboard_check_pressed(vk_shift),keyboard_check_pressed(vk_space));

//Handle gamepad input
if (global.pad!=-1 and abs(hinput)+abs(vinput)==0)	{
	var deadzone=0.5
	hinput=gamepad_axis_value(global.pad,gp_axislh);
	if (hinput==0)
		hinput=gamepad_button_check(global.pad,gp_padr)-gamepad_button_check(global.pad,gp_padl);
	
	if (abs(hinput)<deadzone)
		hinput=0;
		
	vinput=gamepad_axis_value(global.pad,gp_axislv);
	if (vinput==0)
		vinput=gamepad_button_check(global.pad,gp_padd)-gamepad_button_check(global.pad,gp_padu)
	
	if (abs(vinput)<deadzone)
		vinput=0;
		
		
	//Check if the buttons have been pressed (i.e. the previous frame the h/v inputs were 0)
	if (gphinputPrev==0)
		hinputPressed=sign(hinput);
	if (gpvinputPrev==0)
		vinputPressed=sign(vinput);
	
	//interact - all face buttons work
	var interact=max(gamepad_button_check_pressed(global.pad,gp_face1),gamepad_button_check_pressed(global.pad,gp_face2),gamepad_button_check_pressed(global.pad,gp_face3),gamepad_button_check_pressed(global.pad,gp_face4));
}

//Save previous input (this is for gp only)
gphinputPrev=hinput;
gpvinputPrev=vinput;

ds_map_set(inputMap,Input.Hinput,hinput);
ds_map_set(inputMap,Input.HinputPressed,hinputPressed);
ds_map_set(inputMap,Input.Vinput,vinput);
ds_map_set(inputMap,Input.VinputPressed,vinputPressed);
ds_map_set(inputMap,Input.Interact,interact);