/// @description full screen switching

//Non-browser
if (os_browser==browser_not_a_browser)	{
	if (window_get_fullscreen())	{
		window_set_fullscreen(false);
		exit;
	}
 
	window_set_fullscreen(true);
}

//In browser - this literally doesn't work, you can fullscreen switch with F10, why is there no other way?