/// @description Move and collision

x += hsp;
y += vsp;

if (place_meeting(x, y, oGround) || place_meeting(x, y, oEnemy))
{
	instance_create_layer(x, y, "Projectiles", oExplode);
	instance_destroy();
}
