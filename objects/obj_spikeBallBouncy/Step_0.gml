/// @description

//Wwe don't move if there's dialogue on screen
if (!textQueueEmpty() or global.softPause)
	exit;

if (place_meeting(x+xcomponent,y,obj_block))
	xcomponent*=-1;
else
	x+=xcomponent
	
if (place_meeting(x,y+ycomponent,obj_block))
	ycomponent*=-1;
else
	y+=ycomponent;