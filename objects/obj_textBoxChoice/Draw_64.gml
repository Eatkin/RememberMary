/// @description

draw_set_colour(c_white);

//Horizontal coordinates
var screenWidth=display_get_gui_width();
var h_spacing=8;
var boxWidth=sprite_get_width(spr_dialoguebox)+sprite_get_width(spr_portraitframe);

var xdraw=screenWidth-boxWidth-h_spacing;
xdraw*=0.5;

//Veritcal coordinates
var screenHeight=display_get_gui_height();
var v_spacing=8;
var boxHeight=sprite_get_height(spr_dialoguebox);

var ydraw=screenHeight-boxHeight-v_spacing;

//Draw portrait frame and dialogue box
var portraitHOffset=sprite_get_width(spr_portraitframe)-sprite_get_width(portrait)
portraitHOffset*=0.5;
var portraitVOffset=sprite_get_height(spr_portraitframe)-sprite_get_height(portrait)
portraitVOffset*=0.5;
draw_sprite(portrait,image_index,xdraw+portraitHOffset,ydraw+portraitVOffset);
draw_sprite(spr_portraitframe,0,xdraw,ydraw);
xdraw+=sprite_get_width(spr_portraitframe)+h_spacing;
draw_sprite(spr_dialoguebox,0,xdraw,ydraw);

//Draw name box
xdraw+=h_spacing*4;
draw_sprite(spr_namebox,0,xdraw,ydraw);

if (xcreate==0)	{
	xcreate=xdraw-h_spacing*4+sprite_get_width(spr_namebox)*2;
	ycreate=ydraw-v_spacing*4;
}

//Draw name
//Draw name
var nameHeight=string_height(myName);
var nameWidth=string_width(myName);
var xx=xdraw+0.5*(sprite_get_width(spr_namebox)-nameWidth);
var yy=ydraw-0.5*(sprite_get_height(spr_namebox)+nameHeight);

draw_text(xx,yy,myName);

//Draw the dialogue
xdraw-=h_spacing*2;
ydraw+=4;
draw_text(xdraw,ydraw,stringToShow);

if (dialogueComplete)	{
	//Now draw the choice dialogues underneath the regular text
	yy=ydraw+string_height(stringToShow)+2;
	/*DRAW SELECTION SPRITE HERE!!*/
	var _choice;
	_choice[0]=choice[0];
	_choice[1]=choice[1];
	if (global.mouseOnly)	{
		_choice[0]="a - "+_choice[0];
		_choice[1]="b - "+_choice[1];
	}
	draw_text(xdraw+16,yy,_choice[0]);
	yy+=string_height(_choice[0])+2;
	draw_text(xdraw+16,yy,_choice[1]);
	if (choiceSelected==0)
		yy-=string_height(_choice[0])+2;
	if (!global.mouseOnly)
	draw_sprite(spr_textSelector,image_index,xdraw-4,yy);
	//Reset locals to top left of dialouge box
	xdraw-=4;
	ydraw-=4;
	xdraw+=sprite_get_width(spr_dialoguebox)*0.9;
	ydraw+=sprite_get_height(spr_dialoguebox)*0.9;
	draw_sprite(sprite_index,image_index,xdraw,ydraw);		//Our sprite is defined as the "dialogue finished" sprite
}