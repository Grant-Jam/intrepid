/// @description
if (oGameManager.frozen) 
{
	storedImageSpeed = image_speed;
	image_speed = 0;
	return;
}
else if (storedImageSpeed != image_speed)
{
	image_speed = storedImageSpeed;
}
