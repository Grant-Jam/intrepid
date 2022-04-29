/// @description Break on wallbreaker shot
collidedbullet = instance_place(x, y, oBullet);
if (collidedbullet != noone)
{
	instance_destroy(collidedbullet);
	
	if (oPlayer.wallbreakerunlocked)
	{
		audio_play_sound_at(sndExplode, x, y, 0, 100, 30, 1, false, 1);
		instance_destroy();
		var openDoor = instance_create_layer(x, y, "Floor", oBreakableWallCrumble);
		openDoor.image_angle = image_angle;
	}
}
