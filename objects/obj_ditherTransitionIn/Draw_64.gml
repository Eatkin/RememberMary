/// @description

var guiWidth=display_get_gui_width();
var guiHeight=display_get_gui_height();
var vRepeats=ceil(guiHeight/sprite_height);

var speedFactor=guiWidth/20;		//How much to multiply timer by to get the x coord
var ditherX=round(timer*speedFactor);
for (var i=0; i<vRepeats; i+=1)
	draw_sprite_ext(sprite_index,0,ditherX,i*sprite_height,-1,1,0,c_white,1);
	
draw_set_colour(c_black);
draw_rectangle(ditherX,0,guiWidth,guiHeight,false);

if (ditherX>guiWidth)
	transitionOver=true;