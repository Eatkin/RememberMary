/// @description

//If anything happens to pause the gameplay, cancel all movement
if (global.softPause or instance_exists(par_textbox))
	exit;
	
	
var hinput=getInput(Input.Hinput);
var vinput=getInput(Input.Vinput);

image_speed=1;

switch (state)	{
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
			xspeed*=walkSpeed/factor;
			yspeed*=walkSpeed/factor;
		
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