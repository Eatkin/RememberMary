/// @description

if (escapeTimer>0)	{
	var time=ceil((escapeTimerMax-escapeTimer)/60);
	var guiWidth=display_get_gui_width();
	var guiHeight=display_get_gui_height();
	draw_set_font(fnt_consolasLarge)
	draw_set_halign(fa_center);
	//Draw text outlined
	draw_set_colour(c_black);
	for (var i=-1; i<=1; i+=1)
		for (var j=-1; j<=1; j+=1)
			draw_text(guiWidth*0.5+i,guiHeight*0.5+j,"Exiting in "+string(time));
	draw_set_colour(c_white);
	draw_text(guiWidth*0.5,guiHeight*0.5,"Exiting in "+string(time));
	draw_set_font(global.font);
	draw_set_halign(fa_left);
}