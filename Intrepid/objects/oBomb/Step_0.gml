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
	instance_create_layer(x, y, "Projectiles", oExplode);
	instance_destroy();
}
