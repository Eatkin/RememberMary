/// @description

ticker+=1;
	
//Auto-display all text if we press the Z key
if (!firstFrame and getInput(Input.Interact))	{
	if (dialogueComplete)
		destroyTriggered=true;
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

firstFrame=false;