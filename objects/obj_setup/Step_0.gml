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