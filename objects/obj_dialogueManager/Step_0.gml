/// @description

if (!instance_exists(obj_textBox) and !ds_grid_height(global.dialogueGrid)==0)	{
	var _name=ds_grid_get(global.dialogueGrid,DialogueGrid.Name,0);
	var _text=ds_grid_get(global.dialogueGrid,DialogueGrid.Text,0);
	var _image=ds_grid_get(global.dialogueGrid,DialogueGrid.Image,0);
	var _type=ds_grid_get(global.dialogueGrid,DialogueGrid.Type,0);
	var _choice0=ds_grid_get(global.dialogueGrid,DialogueGrid.Choice0,0);
	var _choice1=ds_grid_get(global.dialogueGrid,DialogueGrid.Choice1,0);
	var _owner=ds_grid_get(global.dialogueGrid,DialogueGrid.Owner,0);
	
	if (_type==DialogueType.Basic)
		var box=instance_create_layer(x,y,"Text",obj_textBox);
	else if (_type==DialogueType.Choice)	{
		var box=instance_create_layer(x,y,"Text",obj_textBoxChoice);
		box.choice[0]=_choice0;
		box.choice[1]=_choice1;
	}
	box.myName=_name;
	box.myText=_text;
	box.portrait=_image;
	box.owner=_owner;

	var talk=irandom(4)+1;
	
	
	//Now we have a random audio file
	var assetName="Z_Talking_NOTsewer_"+string(talk);
	//Alt for sewer reverb
	if (room==clamp(room,rm_sewer,rm_sewerCoinRoom))
		assetName="Z_Talking_sewer_"+string(talk);	

	box.mySound=asset_get_index(assetName);

	//Pitch based on the PORTRAIT
	var pitch=1;
	switch (_image)	{
		case spr_octopusPortrait:
		case spr_otherDuckPortrait:
			pitch=1.15;
			break;
		case spr_axolotlPortrait:
			pitch=1.1;
			break;
		case spr_marysMumPortrait:
			pitch=1;
			break;
		case spr_duckPortrait:
		case spr_catPortrait:
			pitch=1.05;
			break;
		case spr_neutralManPortrait:
			pitch=0.8;
			break;
		default:
			pitch=1.15;
			break;
	}
	
	box.myPitch=pitch;
	
	removeDialogueFromQueue();			//Removes the queued text
}