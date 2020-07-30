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
		if (previousRoom==rm_kitchen)	{
			obj_mary.dir=-1;
		}
		break;
}