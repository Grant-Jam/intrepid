/// @description Init
player_buttons();
spd = 4;
hsp = 0;
vsp = 0;

//Determine starting direction
if (up != 0) {vsp = -spd; image_angle = 90;}
else if (down != 0) {vsp = spd; image_angle = 270;}
else if (left != 0) {hsp = -spd; image_angle = 180;}
else if (right != 0) {hsp = spd; image_angle = 0;}
else 
{
	hsp = spd * oPlayer.image_xscale;
	image_xscale = oPlayer.image_xscale;
}