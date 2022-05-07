/// @description Break on wallbreaker shot
collidedbullet = instance_place(x, y, oBullet);
if (collidedbullet != noone)
{
	instance_destroy(collidedbullet);
	
	if (oPlayer.wallbreakerunlocked)
	{
		audio_play_sound_at(sndHit, x, y, 0, 100, 30, 0.2, false, 1);
		instance_destroy();
	}
}
