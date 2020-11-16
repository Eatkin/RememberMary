/// @description

if (os_browser==browser_not_a_browser)	{
	if (keyboard_check(vk_escape))	{
		escapeTimer+=1;
		if (escapeTimer==escapeTimerMax)
			game_end();
	}
	else
		escapeTimer=0;
}
else {

	var scale=1;

	var displayWidth=browser_width;
	var displayHeight=browser_height;
	//If we're in portrait orientation, flip the two variables
		if (displayHeight>displayWidth)	{
			var temp=displayWidth;
			displayWidth=displayHeight;
			displayHeight=temp;
		}
		
	while (windowWidth*(scale+1)<=displayWidth and windowHeight*(scale+1)<=displayHeight)
		scale+=1;

	window_set_size(windowWidth*scale,windowHeight*scale);
	
	if (windowWidth>displayWidth)	{
		window_set_size(displayWidth,displayHeight);
		display_reset(1,true);
	}
}