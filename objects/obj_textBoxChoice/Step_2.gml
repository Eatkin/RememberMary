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
	}
	exit;
}

if (!dialogueComplete)	{
	if (ticker>=string_length(myText))	{
		stringToShow=myText;
		dialogueComplete=true;
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