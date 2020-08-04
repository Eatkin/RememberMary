/// @description

windowWidth=room_width;
windowHeight=room_height;
window_set_caption("Remember Mary");

var scale=1;

escapeTimer=0;
escapeTimerMax=180;


//Browser
if (os_browser==browser_not_a_browser)	{
	var displayWidth=display_get_width();
	var displayHeight=display_get_height();	
	}
else	{
	var displayWidth=browser_width;
	var displayHeight=browser_height;
	//If we're in portrait orientation, flip the two variables
	if (displayHeight>displayWidth)	{
		var temp=displayWidth;
		displayWidth=displayHeight;
		displayHeight=temp;
	}
}

while (windowWidth*(scale+1)<displayWidth and windowHeight*(scale+1)<displayHeight)
	scale+=1;
	
	
window_set_size(windowWidth*scale,windowHeight*scale);
display_set_gui_size(windowWidth,windowHeight);
display_reset(0,true);

if (windowWidth>displayWidth)	{
	window_set_size(displayWidth,displayHeight);
	display_reset(1,true);
}

alarm[0]=1;

//Globals
global.softPause=false;
global.font=fnt_consolas;
global.events=0;
draw_set_font(global.font);

global.sins=0;
global.virtues=0;

randomise();

isFullscreen=false;
global.mouseOnly=false;