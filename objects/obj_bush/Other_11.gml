/// @description

var location="garden";
if (room==rm_hedgeMaze)
	location="maze";

if (global.sins==0)
	queueDialogue("Mary", "I think I'll stay in the "+location+" for a while.", spr_maryPortrait, DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary", "I'll stay in the "+location+".", spr_maryPortrait, DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Mary", "Not now.", spr_maryPortrait, DialogueType.Basic);
else	{
	if (room=rm_garden)
		queueDialogue("Mary", "How can I even think about going back?", spr_maryPortrait, DialogueType.Basic);
	else
		queueDialogue("Mary", "I don't know if I can face leaving.", spr_maryPortrait, DialogueType.Basic);
}