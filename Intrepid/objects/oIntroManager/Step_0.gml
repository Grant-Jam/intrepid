/// @description variable control
player_buttons();
if (escape) game_end();

switch (currentMenuState)
{
	//camera fade in
	case menuState.fadingIn:
		if (start || jump)
		{
			x = cameraXStop;
			fadeAlpha = 0;
			currentMenuState = menuState.main;
			audio_play_sound(sndMenu, 1, false);
		}

		if (x < cameraXStop)
		{
			x += moveSpeed;
		}
		else if (x > cameraXStop)
		{
			x = cameraXStop;
			currentMenuState = menuState.main;
		}
		
		fadeAlpha -= fadeSpeed;
		if (fadeAlpha < 0) fadeAlpha = 0;
	break;
	
	//main screen
	case menuState.main:
		if (start || jump)
		{
			switch activeButton
			{
				case 0:
					fadingOut = true;
					currentMenuState = menuState.fadingOut;
					audio_play_sound(sndUnlock, 1, false);
				break;
				case 1:
					currentMenuState = menuState.controls;
					layer_set_visible("assetsControlsUI", true);
					audio_play_sound(sndMenu, 1, false);
				break;
				case 2:
					currentMenuState = menuState.credits;
					layer_set_visible("Title", false);
					audio_play_sound(sndMenu, 1, false);
				break;
				case 3:
					audio_play_sound(sndMenu, 1, false);
					game_end();
				break;
			}
		}
		//menu scroll
		else if (uppressed)
		{
			activeButton--;
			audio_play_sound(sndMenu, 1, false);
		}
		else if (downpressed)
		{
			activeButton++;
			audio_play_sound(sndMenu, 1, false);
		}
		//check make sure menu selection is valid
		if (activeButton < 0) activeButton = 3;
		if (activeButton > 3) activeButton = 0;
	break;
	
	//controls screen
	case menuState.controls:
		if (jump)
		{
			currentMenuState = menuState.main;
			layer_set_visible("assetsControlsUI", false);
			audio_play_sound(sndMenu, 1, false);
		}
	break;
	
	//credits
	case menuState.credits:
		if (!showCredits) showCredits = true;
		if (jump)
		{
			showCredits = false;
			layer_set_visible("Title", true);
			currentMenuState = menuState.main;
			audio_play_sound(sndMenu, 1, false);
		}
	break;
	
	//fade to game
	case menuState.fadingOut:
		fadeAlpha += fadeSpeed
		if (fadeAlpha > 1) room_goto(Room1);
	break;
}

