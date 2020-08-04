/// @description

draw_set_colour(c_white);

//draw chevrons
var xdraw=32;
var ydraw=96;
var spacing=128;
draw_sprite(spr_largeChevron,image_index,xdraw,ydraw+spacing*selection);
	
//Draw text
draw_set_font(fnt_consolasLarge);
draw_set_valign(fa_middle);

xdraw+=96;
ydraw+=32;	//Offset by half the sprite height so we're in the middle
for (var i=0; i<3; i+=1)
	draw_text(xdraw,ydraw+spacing*i,option[i]);
	
xdraw+=string_width(option[1]);		//This is the longest options name
xdraw+=96;

//Now finally draw the check boxes
ydraw-=32;		//Back again
for (var i=0; i<2; i+=1)	{
	draw_sprite(spr_checkBox,image_index+2*i,xdraw,ydraw+spacing*i);
	if (i==0 and isFullscreen)
		draw_sprite(spr_checkBoxCross,image_index+2*(i+1),xdraw,ydraw+spacing*i);
	if (i==1 and global.mouseOnly)
		draw_sprite(spr_checkBoxCross,image_index+2*(i+1),xdraw,ydraw+spacing*i);
}

draw_set_font(global.font);
draw_set_valign(fa_top);
//Draw note
draw_text(128,288,"This is required for mobile devices");

//Update mouse x prev
mouse_xPrev=mouse_x;
mouse_yPrev=mouse_y;