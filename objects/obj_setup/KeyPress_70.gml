/// @description full screen switching

//Non-browser
if (os_browser==browser_not_a_browser)	{
	if (isFullscreen)	{
		window_set_fullscreen(false);
		isFullscreen=false;
		exit;
	}
	isFullscreen=true;
	window_set_fullscreen(true);
}
else	{
	//Fullscreening for browsers - this is really confusing and stupid (well I guess not actually stupid, but it did confuse me)
	var displayWidth=browser_width;
	var displayHeight=browser_height;
	var scale=1;
	if (isFullscreen)	{
		while (windowWidth*(scale+1)<displayWidth and windowHeight*(scale+1)<displayHeight)
		scale+=1;
		window_set_size(windowWidth*scale,windowHeight*scale);
		isFullscreen=false;
	}
	else	{
		var ratio=windowWidth/windowHeight;
		//Base the size on the width
		var targetWidth=displayWidth;
		var targetHeight=targetWidth/ratio;
		//If it's too tall for the browser, resize based on max height
		if (targetHeight>displayHeight)	{
			targetHeight=displayHeight;
			targetWidth=targetHeight*ratio;
		}
		window_set_size(targetWidth,targetHeight);
		isFullscreen=true;
	}
}