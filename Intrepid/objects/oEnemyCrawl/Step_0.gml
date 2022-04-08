/// @description ?

// Inherit the parent event
event_inherited();

switch movedirection
{
	case dir.right:
		vsp = 0;
		hsp = spd;
		if (place_meeting(x+1, y, oGround))
		{
			movedirection = dir.up;
			image_angle += 90;
			x -= 1;
		}
		else if (!place_meeting(x, y+1, oGround))
		{
			movedirection = dir.down;
			image_angle -= 90;
			y += 1;
		}
		break;
		
	case dir.left:
		vsp = 0;
		hsp = -spd;
		if (place_meeting(x-1, y, oGround))
		{
			movedirection = dir.down;
			image_angle += 90;
			x += 1;
		}
		else if (!place_meeting(x, y-1, oGround))
		{
			movedirection = dir.up;
			image_angle -= 90;
			y -= 1;
		}
		break;
		
	case dir.up:
		hsp = 0;
		vsp = -spd;
		if (place_meeting(x, y-1, oGround))
		{
			movedirection = dir.left;
			image_angle += 90;
			y += 1;
		}
		else if (!place_meeting(x+1, y, oGround))
		{
			movedirection = dir.right;
			image_angle -= 90;
			x += 1;
		}
		break;
		
	case dir.down:
		hsp = 0;
		vsp = spd;
		if (place_meeting(x, y+1, oGround))
		{
			movedirection = dir.right;
			image_angle += 90;
			y -= 1;
		}
		else if (!place_meeting(x-1, y, oGround))
		{
			movedirection = dir.left;
			image_angle -= 90;
			x -= 1;
		}
		break;
}

x += hsp;
y += vsp;