/// @function queueDialogue(name, text, portrait, type, [choice0], [choice1])
/// @description add a dialogue box to the queue
/// @param {string} name		Name to display
/// @param {string} text		Text to display
/// @param {real} portrait		Sprite to display
/// @param {real} type			Dialogue type
/// @param {string} choice0		Option 1 (choice box only)
/// @param {string} choice1		Option 2 (choice box only)

//We can add more to this later if we want to
var name=argument[0];
var text=argument[1]
var sprite=argument[2];
var type=argument[3];
var owner=id;

//If we're an interactable, we want the owner to be the linked instance
if (object_index==obj_interact)
	owner=linkedInstance;


//Insert line breaks
var maxWidth=sprite_get_width(spr_dialoguebox)-32;
text=stringAddLineBreaks(text,maxWidth);

//Resize grid
var grid=global.dialogueGrid;
var gridHeight=ds_grid_height(grid);
	
ds_grid_resize(grid,DialogueGrid.Max,gridHeight+1);

ds_grid_set(grid,DialogueGrid.Name,gridHeight,name);
ds_grid_set(grid,DialogueGrid.Text,gridHeight,text);
ds_grid_set(grid,DialogueGrid.Image,gridHeight,sprite);
ds_grid_set(grid,DialogueGrid.Type,gridHeight,type);
ds_grid_set(grid,DialogueGrid.Owner,gridHeight,owner);
if (type=DialogueType.Choice)	{
	var choice;
	choice[0]=argument[4];
	choice[1]=argument[5];
	ds_grid_set(grid,DialogueGrid.Choice0,gridHeight,choice[0]);
	ds_grid_set(grid,DialogueGrid.Choice1,gridHeight,choice[1]);
}
else	{
	ds_grid_set(grid,DialogueGrid.Choice0,gridHeight,"");
	ds_grid_set(grid,DialogueGrid.Choice1,gridHeight,"");
}