/// @description 
moveSpeed = 1;
cameraXStop = 700;

fadeSpeed = 0.01;
fadeAlpha = 1;

audio_play_sound(bgm, 1, true);

enum menuState
{
	fadingIn,
	main,
	controls,
	credits,
	fadingOut,
}

currentMenuState = menuState.fadingIn;

surface_resize(application_surface, view_wport[0], view_hport[0]);

layer_set_visible("assetsControlsUI", false);

//menu buttons
//0-Play, 1-Controls, 2-Credits, 3-Exit
activeButton = 0;
buttonYVals = [125, 145, 165, 185];

showCredits = false;
