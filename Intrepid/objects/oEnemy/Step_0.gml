/// @description Movement and damage
//audio setup

bullethit = instance_place(x, y, oBullet);
if (bullethit != noone)
{
	hp -= bullethit.damage;
	instance_destroy(bullethit);
	flashing = true;
	alarm[0] = 45;
	show_debug_message("soundDif: " + string(x - oPlayer.x));
	audio_play_sound_at(sndHit, x, y, 0, 100, 30, 1, false, 1);
}

bombhit = instance_place(x, y, oExplode);
if (bombhit != noone && !bombinvincible)
{
	hp -= bombhit.damage;
	
	//Avoid infinite hits from bombs
	bombinvincible = true;
	bombinvincibility = 55;
}
if (bombinvincibility > 0) bombinvincibility--;
else bombinvincible = false;

if (hp <= 0) 
{
	instance_destroy();
	audio_play_sound_at(sndKill, x, y, 0, 100, 30, 1, false, 1);
}

//flashing
//if (flashing)
//{
//	flashTimer++;
//	if (flashTimer > flashSpeed)
//	{
//		flashTimer = 0;
//		if (image_alpha == 1) image_alpha = 0;
//		else image_alpha = 1;
//	}
//}
check_flashing();
