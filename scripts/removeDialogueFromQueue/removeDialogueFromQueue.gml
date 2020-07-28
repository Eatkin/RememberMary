var grid=global.dialogueGrid;
var gridHeight=ds_grid_height(grid);

//In HTML5 you can create a ds grid with a height of 0 but you can't resize a ds grid to 0 lol what the fuck
//Anyway this traps that error
if (gridHeight==1)	{
	ds_grid_destroy(grid);
	global.dialogueGrid=ds_grid_create(DialogueGrid.Max,0);
	exit;
}

//Loops through and copies all values downwards then deletes the last value
for (var i=0; i<DialogueGrid.Max; i+=1)
	for (var j=0; j<gridHeight-1; j+=1)	{
		var value=ds_grid_get(grid,i,j+1);
		ds_grid_set(grid,i,j,value);
	}
	
ds_grid_resize(grid,DialogueGrid.Max,gridHeight-1);