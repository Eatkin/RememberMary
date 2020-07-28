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
	removeDialogueFromQueue();			//Removes the queued text
}