/// @description

/*This is a seperate flag
Newgrounds sits in an iframe, but itch doesn't because of mobile compatibility
Newgrounds doesn't let you load in a new window though so I have to do it differently
*/

windowWidth=room_width;
windowHeight=room_height;
window_set_caption("Remember Mary");

var scale=1;

escapeTimer=0;
escapeTimerMax=180;

var displayWidth=display_get_width();
var displayHeight=display_get_height();
var scaleAdjustment=1;						//Means on desktop target it won't maximise to fullscreen

//Browser
if (os_browser!=browser_not_a_browser)	{
	var displayWidth=browser_width;
	var displayHeight=browser_height;
	//If we're in portrait orientation, flip the two variables
		if (displayHeight>displayWidth)	{
			var temp=displayWidth;
			displayWidth=displayHeight;
			displayHeight=temp;
		}
	var scaleAdjustment=0;
}


while (windowWidth*(scale+scaleAdjustment)<displayWidth and windowHeight*(scale+scaleAdjustment)<displayHeight)
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