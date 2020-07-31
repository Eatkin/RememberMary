/// @description

ticker+=1;
	
//Auto-display all text if we press the Z key
if (!firstFrame and getInput(Input.Interact))	{
	if (dialogueComplete)	{
		destroyTriggered=true;
		var _choice=choiceSelected;
		with (owner)
			event_user(_choice);
	}
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
else	{
	//Move up and down which choice we are selecting
	var vinput=getInput(Input.VinputPressed);
	choiceSelected+=vinput;
	if (choiceSelected<0)
		choiceSelected+=2;
	choiceSelected=choiceSelected%2;
}

firstFrame=false;