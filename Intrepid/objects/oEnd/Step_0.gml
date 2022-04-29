/// @description Check for player acquisition
if (place_meeting(x, y, oPlayer))
{
	oGameManager.gameended = true;
	oGameManager.fadingout = true;
	sprite_index = noone;
}
