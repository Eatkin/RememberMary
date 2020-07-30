/// @description

if (active)	{
	var text="It's a bubbling pot of stew for dinner. Something to look forward to.";
	if (global.sins==1)
		text="A pot of stew for dinner.";
	else if (global.sins==2)
		text="Pot of stew";
	else if (global.sins==3)
		text="I'm not sure I will ever eat again.";
	queueDialogue("Mary",text,spr_maryPortrait,DialogueType.Basic);
	active=false;
}