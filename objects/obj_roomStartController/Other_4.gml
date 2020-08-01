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
		if (previousRoom==rm_kitchen)	{
			obj_mary.x=154;
			obj_mary.y=457;
		}
		break;
		
	case rm_kitchen:
		if (previousRoom==rm_bedroom)	{
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
			obj_mary.x=167
			obj_mary.y=87;
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
}