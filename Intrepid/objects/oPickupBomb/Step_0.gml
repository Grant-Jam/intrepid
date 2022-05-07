/// @description Destroy and give bombs on pickup
if (place_meeting(x, y, oPlayer))
{
	instance_destroy();
	if (oPlayer.bombs < oPlayer.maxbombs) oPlayer.bombs++;
	audio_play_sound(sndPickup, 1, false);
}
