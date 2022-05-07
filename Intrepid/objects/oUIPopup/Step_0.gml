/// @description check for dismissal
switch curUIState
{
	case popupState.scalingIn:
		scale = lerp(scale, 1, scaleSpeed);
		if (scale >= 0.98)
		{
			scale = 1;
			curUIState = popupState.active;
		}
	break;
	
	case popupState.active:
		player_buttons();
		if (oGameManager.dead)
		{
			if (jump) game_restart();
			else if (attack) game_end();
		}
		else
		{
			if (jump || start)
			{
				audio_play_sound(sndMenu, 1, false);
				curUIState = popupState.scalingOut;
			}
		}
	break;
	
	case popupState.scalingOut:
		scale = lerp(scale, 0, scaleSpeed);
		if (scale <= 0.02)
		{
			scale = 0;
			instance_destroy();
		}
	break;
}
