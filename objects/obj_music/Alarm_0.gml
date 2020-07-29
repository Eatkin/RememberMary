/// @description

//This alarm always gets set, so exit it if it's not necessary
if (musicPlaying==musicToPlay)
	exit;

if (musicToPlay!=noone)
	myMusic=audio_play_sound(musicToPlay,0,false);
	
musicPlaying=musicToPlay;