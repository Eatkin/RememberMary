/// @description

//If active[1] isn't active, we animate the first three frames
if (!active[1])	{
	if (image_index>2.5)
		image_index=0;
}

//If active[0] is true we can tap interact to wake Mary up
if (active[0] and getInput(Input.Interact))
	active[1]=true;
	
if (active[1] and image_index>image_number-0.5 and !talking)	{
	obj_mary.visible=true;
	queueDialogue("???","Oh, thank God.",spr_mushroomPortrait,DialogueType.Basic);
	queueDialogue("Slater","I'm Slater. I found you face down in the river.",spr_mushroomPortrait,DialogueType.Basic);
	queueDialogue("Slater","You drowned. Actually you died, your heart stopped for four minutes.",spr_mushroomPortrait,DialogueType.Basic);
	queueDialogue("Slater","But don't worry, you're safe now.",spr_mushroomPortrait,DialogueType.Basic);
	queueDialogue("Mary","Oh, thank you...I don't know what to say.",spr_maryPortrait,DialogueType.Basic);
	queueDialogue("Slater","You should probably save your energy, I'll make sure you get home safe.",spr_mushroomPortrait,DialogueType.Basic);
	queueDialogue("Mary","...",spr_maryPortrait,DialogueType.Basic);
	visible=false;
	talking=true;
}

if (talking and textQueueEmpty())
	room_goto(room);		//CHANGE