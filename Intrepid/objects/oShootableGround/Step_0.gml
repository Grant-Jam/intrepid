/// @description Break on wallbreaker shot
//if (place_meeting(x, y, oBullet) && oPlayer.wallbreakerunlocked == true) instance_destroy();
if (collision_rectangle(x-4-sprite_width/2, y-4-sprite_height/2, x+4+sprite_width/2, y+4+sprite_height/2, oBullet, false, true) && oPlayer.wallbreakerunlocked)
{
	instance_destroy();
}
