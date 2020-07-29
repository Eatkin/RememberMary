/// @description

switch (room)	{
	case rm_bedroom:
		musicToPlay=mus_oneOneTwo_Toy;
		break;
		
	case rm_sewer:
	case rm_sewerFork_1:
	case rm_sewerFork_2:
	case rm_sewerFork_3:
	case rm_sewerKnifeRoom:
	case rm_sewerCoinRoom:
		musicToPlay=mus_oneOneOne;
		break;
		
	default:
		musicToPlay=noone;
}

alarm[0]=60;


if (audio_is_playing(myMusic) and musicPlaying!=musicToPlay)	
	audio_sound_gain(myMusic,0,1000);						//Fade out over 1 second

if (musicPlaying!=musicToPlay)	{
	audioNotPlaying=false;
	audioNotPlayingTimer=audioNotPlayingTimerMax;
}