/// @description

var realWidth=sprite_get_width(sprite_index);
var realHeight=sprite_get_height(sprite_index);

var hrepeats=ceil(image_xscale);

var vrepeats=ceil(image_yscale);

for (var i=0; i<hrepeats; i+=1)
	for (var j=0; j<vrepeats; j+=1)
		draw_sprite(sprite_index,0,x+realWidth*i,y+realHeight*j);