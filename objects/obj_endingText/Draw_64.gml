/// @description

if (timer<delay)
	exit;

draw_set_colour(c_white);
draw_set_font(fnt_consolasLarge);
var xx=room_width/2;
var yy=room_height/2;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(xx,yy,text);

//Reset alignment and font
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(global.font);