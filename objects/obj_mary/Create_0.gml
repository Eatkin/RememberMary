/// @description

state=State.Idle;
walkSpeed=3;
xspeed=0;
yspeed=0;
dir=1;					//1 to face right, -1 to face left

spriteIdle=spr_maryIdle;
spriteWalk=spr_maryWalk;

if (global.sins>=2)
	walkSpeed=2;