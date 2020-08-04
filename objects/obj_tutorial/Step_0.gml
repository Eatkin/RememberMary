/// @description

if (obj_mary.x>640 and !interactTutorial)	{
	queueDialogue("???","When close to some objects, they will move to indicate you can interact with them.",spr_mysteryPortrait,DialogueType.Basic);
	queueDialogue("???","Interact with Z, shift, space, gamepad face buttons or by clicking/tapping.",spr_mysteryPortrait,DialogueType.Basic);
	interactTutorial=true;
}