/// @description Movement

bullethit = instance_place(x, y, oBullet);
if (bullethit != noone)
{
	hp -= bullethit.damage;
	instance_destroy(bullethit);
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
}