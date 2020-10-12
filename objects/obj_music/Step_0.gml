/// @description

if (myMusic!=noone and !audio_is_playing(myMusic) and alarm[0]==-1)
	audioNotPlaying=true;
	
if (audioNotPlaying)	{
	audioNotPlayingTimer-=1;
	if (audioNotPlayingTimer<=0)	{
		myMusic=audio_play_sound(musicToPlay,0,false);
		audioNotPlaying=false;
		audioNotPlayingTimer=audioNotPlayingTimerMax;
	}
}