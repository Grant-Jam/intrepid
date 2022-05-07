/// @description Move and fall
grav_fall();
collision_check();

if (grounded) hsp = 0;

x += hsp;
y += vsp;

// Countdown
lifetime--;
if (lifetime <= 0)
{
	//audio_play_sound_at(sndExplode, x, y, 0, 100, 30, 0.2, false, 1);
	instance_create_layer(x, y, "Projectiles", oExplode);
	instance_destroy();
}
