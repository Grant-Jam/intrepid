// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animation_init(){
	//draw
	sprite = sprite_index;
	frame = 0;
	xPos = x;
	yPos = y;
	xScale = 1;
	yScale = 1;
	angle = 0;
	color = c_white;
	alpha = 1;
	
	//animation
	frameSpeed = 0.5;
	facing = 1;
}