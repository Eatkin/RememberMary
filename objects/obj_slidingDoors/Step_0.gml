/// @description

if (active)	{
	var text="To the balcony, should I go out?";
	if (room==rm_balcony)
		text="Goes back inside, shall I go back?";
	queueDialogue("Mary", text, spr_maryPortrait, DialogueType.Choice,"Yes", "No");
	active=false;
}