/// @description

if (timer<delay)
	exit;

var yoffset=min(0,creditsDelay-timer);

draw_set_colour(c_white);
draw_set_font(fnt_consolasLarge);
var xx=room_width/2;
var yy=room_height/2+yoffset;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(xx,yy,text);

var sep=string_height("A");
draw_text_ext(xx,yy+room_height*2,credits,sep,room_width);

//Reset alignment and font
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(global.font);

var height=string_height(credits)+string_count("\n",credits)*sep;

//Reset
if (abs(yoffset)>height)	{
	global.sins=0;
	global.virtues=0;
	global.events=0;
	instance_destroy(obj_duckMap);
	instance_create_layer(0,0,"Controllers",obj_duckMap);
	room_goto(rm_bedroom);
}