/// @description Destroy and give bombs on pickup
if (place_meeting(x, y, oPlayer))
{
	instance_destroy();
	if (oPlayer.hp < oPlayer.maxhp) oPlayer.hp++;
}