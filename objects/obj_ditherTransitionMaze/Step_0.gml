/// @description

timer+=1;

if (transitionOver)	{
	//Move the cat
	instance_destroy(obj_cat);
	instance_create_layer(1152,971,"Interactives",obj_catSaved);
	instance_create_layer(1150,976,"Interactives",obj_interact);
	//Create the other transition
	instance_create_layer(0,0,layer, obj_ditherTransitionIn);
	instance_destroy();
}