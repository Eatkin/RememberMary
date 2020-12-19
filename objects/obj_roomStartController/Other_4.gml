/// @description

switch (room)	{
	case rm_sewer:
		if (previousRoom!=rm_bedroom)	{
			obj_mary.x=1456;
			obj_mary.y=303;
		}
		break;
		
	case rm_bedroom:
		if (previousRoom==rm_sewer)	{
			obj_mary.x=710;
			obj_mary.y=436;
			obj_mary.dir=-1;
		}
		if (previousRoom==rm_kitchen or previousRoom==rm_trophyRoom)	{
			obj_mary.x=154;
			obj_mary.y=457;
		}
		break;
		
	case rm_kitchen:
		if (previousRoom==rm_bedroom or previousRoom==rm_trophyRoom)	{
			obj_mary.dir=-1;
		}
		else	{				//Garden but you can't get to the kitchen any other way
			obj_mary.x=129;
			obj_mary.y=459;
		}
		break;
	
	case rm_garden:
		obj_mary.dir=-1;
		if (previousRoom==rm_insideBellaMain)	{
			obj_mary.x=251;
			obj_mary.y=216;
		}
		if (previousRoom==rm_hedgeMaze)	{
			obj_mary.x=160;
			obj_mary.y=256;
			obj_mary.dir=1;
		}
		break;
		
	case rm_insideBellaMain:
		if (previousRoom==rm_insideBellaSplitPath)	{
			obj_mary.dir=-1;
			obj_mary.x=829;
			obj_mary.y=306;
		}
		break;
		
	case rm_insideBellaSplitPath:
		if (previousRoom==rm_insideBellaDuck1)	{
			obj_mary.x=448;
			obj_mary.y=128;
		}
		else if (previousRoom==rm_insideBellaDuck2)	{
			obj_mary.x=857;
			obj_mary.y=322;
			obj_mary.dir=-1;
		}
		else if (previousRoom==rm_insideBellaDuck3)	{
			obj_mary.x=407;
			obj_mary.y=423;
		}
		break;
	
	case rm_hedgeMaze:
		obj_mary.dir=-1;
		break;
		
	case rm_trophyRoom:
		if (previousRoom==rm_bedroom)	{
			obj_mary.x=802;
			obj_mary.y=447;
			obj_mary.dir=-1;
		}
		break;
		
	case rm_realBedroom:
		if (previousRoom==rm_balcony)	{
			obj_mary.x=568;
			obj_mary.y=236;
		}
}

//Ending prompt
var totalTasks=global.sins+global.virtues;
if (!checkEventComplete(Event.EndingPrompt) and totalTasks==3)	{
	setEventComplete(Event.EndingPrompt);
	if (room==rm_bedroom or room==rm_sewerFork_1)	{
		if (global.sins==0)
			queueDialogue("Mary","I've helped out all my friends. Maybe I should spend some time in the garden now.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==1)
			queueDialogue("Mary","I don't think there's much else to do. Maybe I'll go to the garden.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==2)
			queueDialogue("Mary","I could do with some fresh air.",spr_maryPortrait,DialogueType.Basic);
		else
			queueDialogue("Mary","I need some fresh air.",spr_maryPortrait,DialogueType.Basic);
	}
	else	{
		if (global.sins==0)
			queueDialogue("Mary","I've had a good day helping my friends. Maybe I'll have a well deserved sleep now.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==1)
			queueDialogue("Mary","I tried my best today. I think I will go spend some time in my room.",spr_maryPortrait,DialogueType.Basic);
		else if (global.sins==2)
			queueDialogue("Mary","I should go to bed and try and forget what happened.",spr_maryPortrait,DialogueType.Basic);
		else
			queueDialogue("Mary","If I go to bed maybe I won't wake up.",spr_maryPortrait,DialogueType.Basic);
	}
}