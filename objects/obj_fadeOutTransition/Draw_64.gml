/// @description

var alpha=time/timeMax;

var guiWidth=display_get_gui_width();
var guiHeight=display_get_gui_height();


draw_set_colour(c_white);
draw_set_alpha(alpha);
draw_rectangle(0,0,guiWidth,guiHeight,false);

draw_set_alpha(1);