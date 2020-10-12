/// @description

selection=0;
selectionMax=2;

//For mouse control
mouse_xPrev=mouse_x;
mouse_yPrev=mouse_y;

option[0]="Fullscreen";
option[1]="Mouse Only Mode";
option[2]="Play game";

isFullscreen=false;

//If we're in browser we have an alt menu with no full screen option
if (os_browser!=browser_not_a_browser)	{
	instance_create_layer(x,y,layer,obj_optionsBrowser);
	instance_destroy();
}