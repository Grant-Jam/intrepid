// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision_check(){
	
	//horizontal collision
	if (place_meeting(x+hsp,y, oGround))
	{
		while (instance_place(x+sign(hsp),y, oGround) == noone)
		{
			x += sign(hsp);
		}
		hsp = 0;
	}
	
	//vertical collision
	var vBlock = instance_place(x, y+vsp, oGround);
	if (vBlock != noone)
	{
		//if (instance_find(oPlayer, 0) == id && vsp < 0)
		//	show_debug_message("Headspace: " + string(x - vBlock.x));
			
		//jump correction
		//var vDifference = x - vBlock.x;
		//if ((vsp < 0) && vDifference <= -11.5) 
		//	x += -13 - vDifference;
		//else if ((vsp < 0) && vDifference >= 11.5) 
		//	x += 13 - vDifference;
		
		//else 
		{
			while (!place_meeting(x,y+sign(vsp), oGround))
			{
				y += sign(vsp);
			}
		
			if (vsp > 0) grounded = true;
			vsp = 0;
		}
	}
	else grounded = false;
}