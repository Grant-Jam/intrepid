/// @description General control
player_buttons();

if (select) game_restart();
else if (escape) game_end();

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
	}
}

//else if (start)
//{
//	//unfreeze
//	if (frozen)
//	{
//		instance_activate_all();
//		//instance_activate_layer("Player");
//	}
//	//freeze
//	else
//	{
//		instance_deactivate_layer("Player");
//	}
//}
