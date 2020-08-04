/// @description

switch (room)	{
	case rm_bedroom:
	case rm_kitchen:
	case rm_garden:
	case rm_void:
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
		
	case rm_insideBellaMain:
	case rm_insideBellaSplitPath:
	case rm_insideBellaDuck1:
	case rm_insideBellaDuck2:
	case rm_insideBellaDuck3:
		musicToPlay=mus_twoTwo;
		break;
		
	case rm_hedgeMaze:
		musicToPlay=mus_four4Four;
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