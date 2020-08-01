/// @description

if (global.softPause)
	exit;

if (place_meeting(x+dir,y,obj_block))
	dir=-dir;
else
	x+=dir;