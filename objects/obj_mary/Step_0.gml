/// @description

//DEBUG, REMOVE BELOW
if (keyboard_check(vk_shift))	{
	if (keyboard_check_pressed(ord("B")))
		room_goto(rm_goodEnd);
	if (keyboard_check_pressed(ord("N")))
		room_goto(rm_neutralEnd);
	if (keyboard_check_pressed(ord("M")))
		room_goto(rm_badEnd);
}
//DEBUG, REMOVE ABOVE

//If anything happens to pause the gameplay, cancel all movement
if (global.softPause or !textQueueEmpty())
	state=State.Talking;
	
	
var hinput=getInput(Input.Hinput);
var vinput=getInput(Input.Vinput);

//Alt input using mouse button
if (mouse_check_button(mb_left))	{
	var xComponent=mouse_x-x;
	if (abs(xComponent)<walkSpeed)
		xComponent=0;
	var yComponent=mouse_y-y;
	if (abs(yComponent)<walkSpeed)
		yComponent=0;
	
	var angle=arctan2(yComponent,xComponent);
	
	hinput=walkSpeed*cos(angle);
	vinput=walkSpeed*sin(angle);
	
	//Mary goes crazy when reaching the mouse if I don't do this
	if (xComponent==0 and yComponent==0)	{
		hinput=0;
		vinput=0;
	}
	
	/* OLD CRAPPY METHOD
		hinput=sign(mouse_x-x);
		vinput=sign(mouse_y-y);
		if (abs(mouse_x-x)<walkSpeed)
			hinput=0;
		if (abs(mouse_y-y)<walkSpeed)
			vinput=0;
			*/
	}

image_speed=1;

switch (state)	{
	case State.Talking:
		sprite_index=spriteIdle;
		if (textQueueEmpty() and !global.softPause)
			state=State.Idle;
		break;
		
	case State.Idle:
		sprite_index=spriteIdle;
		//Move into walk state - basically if hinput OR vinput !=0 and there isn't a collision immediately
		if ((!place_meeting(x+sign(hinput),y,obj_block) and hinput!=0) or (!place_meeting(x,y+sign(vinput),obj_block) and vinput!=0))
			state=State.Walk;
		break;
	
	case State.Walk:	
		//Set speeds based on input
		xspeed=hinput*walkSpeed;
		yspeed=vinput*walkSpeed;	
	
		if (xspeed==0 and yspeed==0)
			state=State.Idle;
		else	{		
			//Normalise
			var factor=sqrt(sqr(xspeed)+sqr(yspeed));
			//No divide by zero errors pls
			if (factor>1)	{
				xspeed*=walkSpeed/factor;
				yspeed*=walkSpeed/factor;
			}
		
			image_speed=sqrt(sqr(xspeed)+sqr(yspeed))/walkSpeed;		//Set image speed  which should be 0 or 1 unless using a gamepad which I haven't implemented yet
		}
	
		if (xspeed!=0)
			dir=sign(xspeed);
	
		//Now let's move - no collisions yet because don't need them
		if (!place_meeting(x+xspeed,y+yspeed,obj_block))	{
			x+=xspeed;
			y+=yspeed;
		}
		else	{
			var signXspeed=sign(xspeed);
			repeat(ceil(abs(xspeed)))	{
				if (!place_meeting(x+signXspeed,y,obj_block))
					x+=signXspeed;
				else	{
					xspeed=0;
					break;
				}
			}
		
			var signYspeed=sign(yspeed);
			repeat(ceil(abs(yspeed)))	{
				if (!place_meeting(x,y+signYspeed,obj_block))
					y+=signYspeed;
				else	{
					yspeed=0;
					break;
				}
			}
		}
	
		//Exit state
		if (xspeed==0 and yspeed==0)	{
			state=State.Idle;
			break;
		}
		
		//Set sprite
		sprite_index=spriteWalk;
		break;
}

image_xscale=dir;