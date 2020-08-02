/// @description

if (active)	{
	var text="The roof leaks and leaves this gross puddle on the floor. My deadbeat dad won't get it fixed."
	if (global.sins==1)
		text="A wet patch, my horible dad won't fix the leak.";
	else if (global.sins==2)
		text="Wet carpet from a leak. I hate my dad.";
	else if (global.sins==3)
		text="It's wet. Doesn't even matter. Who cares.";
		
	queueDialogue("Mary",text,spr_maryPortrait,DialogueType.Basic);
	active=false;
}