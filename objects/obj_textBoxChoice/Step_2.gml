/// @description

ticker+=1;
	
//Auto-display all text if we press the Z key
var _continue=max(getInput(Input.Interact),mouse_check_button_pressed(mb_left));
if (!firstFrame and _continue)	{
	//Note for mouse only mode, you have to click individual buttons
	if (dialogueComplete and !global.mouseOnly)	{
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
	if (!global.mouseOnly)	{
		var vinput=getInput(Input.VinputPressed);
		choiceSelected+=vinput;
		if (choiceSelected<0)
			choiceSelected+=2;
		choiceSelected=choiceSelected%2;
	}
	else if (!createdChoices)	{
		createdChoices=true;
		//xcreate and ycreate are saved in the draw GUI event
		choiceA=instance_create_layer(xcreate,ycreate,layer,obj_choiceA);
		choiceB=instance_create_layer(xcreate+96,ycreate,layer,obj_choiceB);
		choiceA.owner=id;
		choiceB.owner=id;
	}
}

firstFrame=false;