/// @description

doNothingTimer+=1;

if (doNothingTimer==600)
	active=true;

if (shakeStarted and textQueueEmpty())	{
	timer+=1;
	//Lol at this
	if (timer==10)	{
		shakex=5;
		rumble=audio_play_sound(snd_rumble,0,true);
	}
	else if (timer==60)
		shakex=7;
	else if (timer==120)
		shakex=10;
	else if (timer==130)
		queueDialogue("Mary","What's happening?",spr_maryPortrait,DialogueType.Basic);
	else if (timer==150)
		shakex=12;
	else if (timer==165)
		shakex=15;
	else if (timer==180)
		shakex=20;
	else if (timer==240)
		shakex=50;
	else if (timer==260)
		room_goto(rm_river);
}

if (active and !shakeStarted)	{
	queueDialogue("Mary","There's nothing here.",spr_maryPortrait,DialogueType.Basic);
	active=false;
	shakeStarted=true;
}

var cam=view_camera[0];
camera_set_view_pos(cam,shakex,0);
camera_set_view_angle(cam,(irandom(2)-1)*irandom(shakex));
maxShakex=max(maxShakex,shakex);

//Fade the sound in and out
if (rumble!=noone)
	audio_sound_gain(rumble,shakex/maxShakex,0);
	
shakex=lerp(shakex,0,0.05);
shakex*=-1;