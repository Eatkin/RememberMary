/// @description

ticker+=1;
	
//Auto-display all text if we press the Z key
var _continue=max(getInput(Input.Interact),mouse_check_button_pressed(mb_left));
if (!firstFrame and _continue)	{
	if (dialogueComplete)
		destroyTriggered=true;
	else	{
		stringToShow=myText;
		dialogueComplete=true;
		if (audio_is_playing(mySound))
			audio_stop_sound(mySound);
	}
	exit;
}

if (!dialogueComplete)	{
	if (!audio_is_playing(mySound))	{
		var snd=audio_play_sound(mySound,0,false);
		audio_sound_pitch(snd,myPitch);
	}
	
	if (ticker>=string_length(myText))	{
		stringToShow=myText;
		dialogueComplete=true;
		if (audio_is_playing(mySound))
			audio_stop_sound(mySound);
	}
	else
		stringToShow=string_copy(myText,1,ticker);
}

firstFrame=false;