/// @description

var guiWidth=display_get_gui_width();
var guiHeight=display_get_gui_height();
var vRepeats=ceil(guiHeight/sprite_height);

var speedFactor=guiWidth/20;		//How much to multiply timer by to get the x coord
var ditherX=round(timer*speedFactor);
for (var i=0; i<vRepeats; i+=1)
	draw_sprite(sprite_index,0,ditherX,i*sprite_height);
	
draw_set_colour(c_black);
draw_rectangle(0,0,ditherX,guiHeight,false);

if (ditherX>guiWidth)
	transitionOver=true;