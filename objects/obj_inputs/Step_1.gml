/// @description

var hinput=keyboard_check(vk_right)-keyboard_check(vk_left);
var hinputPressed=keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left);
var vinput=keyboard_check(vk_down)-keyboard_check(vk_up);
var vinputPressed=keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);
var interact=keyboard_check_pressed(ord("Z"));

ds_map_set(inputMap,Input.Hinput,hinput);
ds_map_set(inputMap,Input.HinputPressed,hinputPressed);
ds_map_set(inputMap,Input.Vinput,vinput);
ds_map_set(inputMap,Input.VinputPressed,vinputPressed);
ds_map_set(inputMap,Input.Interact,interact);