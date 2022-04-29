/// @description variable control
player_buttons();
if (start) fadingOut = true;

if (x < cameraXStop)
{
	x += moveSpeed;
}
if (x > cameraXStop)
{
	x = cameraXStop;
}

if (!fadingOut)
{
	fadeAlpha -= fadeSpeed;
	if (fadeAlpha < 0) fadeAlpha = 0;
}
else
{
	fadeAlpha += fadeSpeed
	if (fadeAlpha > 1) room_goto(Room1);
}
