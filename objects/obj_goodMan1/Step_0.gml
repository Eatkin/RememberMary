/// @description

if (dialogueComplete and textQueueEmpty())	{
	
	delay-=1;
	global.softPause=true;
	
	//do stuff
	if (delay<0 and !instance_exists(obj_maryAscend))	{
		instance_create_layer(obj_mary.x,obj_mary.y,obj_mary.layer,obj_maryAscend);
		audio_play_sound(transition_med_1,0,false);
	}
		
	y-=min(timer,15);
	image_speed=1;
	
	var yy=y;
	
	with (obj_goodMan2)	{
		y=lerp(y,yy,0.01);
		image_speed=1;
	}
	
	with (obj_mary)	
		image_alpha=lerp(image_alpha,0,0.01);
	
	if (instance_exists(obj_maryAscend))
		with (obj_maryAscend)	{
			y=lerp(y,yy,0.012);
			x=lerp(x,room_width*0.5,0.005);
			var _dir=sign(x-xprevious);
			if (_dir!=0)
				image_xscale=_dir;
		}
	
	timer=lerp(timer,15,0.01);
	
	var cam=view_camera[0];
	var camy=camera_get_view_y(cam);
	camera_set_view_speed(cam,-1,timer);
	if (camy<540 and !instance_exists(obj_fadeOutTransition))	{
		var trans=instance_create_layer(0,0,"Text",obj_fadeOutTransition);
		trans.destination=rm_endingScreen;
	}
	
	if (instance_exists(obj_fadeOutTransition))	{
		var camyborder=camera_get_view_border_y(cam);
		camyborder=lerp(camyborder,32,0.02);
		camera_set_view_border(cam,96,camyborder);
	}

}

if (active)	{
	queueDialogue("Mary","...hello?",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("???","Hello, Mary.",spr_goodMan1Portrait,DialogueType.Basic);
	queueDialogue("???","We are Masters of the Universe.",spr_goodMan2Portrait,DialogueType.Basic);
	queueDialogue("???","Mary, you have done so much good in this world.",spr_goodMan1Portrait,DialogueType.Basic);
	queueDialogue("???","Although life doesn't seem good at times, you make the best of it.",spr_goodMan2Portrait,DialogueType.Basic);
	queueDialogue("???","Everything you did was to help your friends.",spr_goodMan1Portrait,DialogueType.Basic);
	queueDialogue("???","Your mother would be proud of you, Mary.",spr_goodMan2Portrait,DialogueType.Basic);
	queueDialogue("???","Leave your body behind and come join us.",spr_goodMan1Portrait,DialogueType.Basic);
	queueDialogue("???","Together we will see everything.",spr_goodMan2Portrait,DialogueType.Basic);
	queueDialogue("???","We will see the stars.",spr_goodMan1Portrait,DialogueType.Basic);
	queueDialogue("???","We will see the Universe.",spr_goodMan2Portrait,DialogueType.Basic);
	dialogueComplete=true;
	active=false;
}