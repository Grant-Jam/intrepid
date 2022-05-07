/// @description General control
player_buttons();

//if (select) game_restart();
//else if (escape) game_end();

if (fadingin)
{
	guialpha -= fadespeed;
	if (guialpha < 0)
	{
		guialpha = 0;
		fadingin = false;
	}
}

else if (fadingout)
{
	guialpha += fadespeed;
	if (guialpha > 1)
	{
		guialpha = 1;
		fadespeed = 0;
		instance_deactivate_layer("Player");
		instance_deactivate_layer("Enemies");
		instance_deactivate_layer("Projectiles");
		frozen = true;
	}
	if (jump) game_restart();
	if (attack) game_end();
}

else if (start)
{
	//unfreeze
	if (frozen)
	{
		instance_activate_all();
		frozen = false;
		paused = false;
	}
	//freeze
	else
	{
		instance_deactivate_layer("Player");
		instance_deactivate_layer("Enemies");
		instance_deactivate_layer("Projectiles");
		frozen = true;
		paused = true;
	}
}

//pause menu controls
if (paused)
{
	if (jump) game_restart();
	if (attack) game_end();
}
