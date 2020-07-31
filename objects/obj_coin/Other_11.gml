/// @description

if (global.sins==0)
	queueDialogue("Mary","There's really no reason for me to leave this coin. But I don't really need it I guess. Maybe someone else needs it more.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==1)
	queueDialogue("Mary","I don't really need this coin.",spr_maryPortrait,DialogueType.Basic);
else if (global.sins==2)
	queueDialogue("Mary","Is there really any point trying to redeem myself now?",spr_maryPortrait,DialogueType.Basic);