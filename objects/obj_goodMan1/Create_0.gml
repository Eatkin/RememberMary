/// @description

// Inherit the parent event
event_inherited();

dialogueComplete=false;

timer=1;

delay=10;

/*This doesn't create animated sprites for some dumb fucking reason
//Create a buncha stars and shit on the asset layer
var layId=layer_get_id("Assets");
var numOfStars=10+irandom(10);

//These aren't animated?
repeat (numOfStars)	{
	var xx=irandom(room_width);
	var yy=irandom(1993);
	var sprId=layer_sprite_create(layId,xx,yy,spr_star);
}*/