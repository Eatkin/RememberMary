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
		break;
}