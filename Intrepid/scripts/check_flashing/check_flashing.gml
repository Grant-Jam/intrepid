/// @function ???
function check_flashing(){
	if (flashing)
	{
		flashTimer++;
		if (flashTimer > flashSpeed)
		{
			flashTimer = 0;
			if (image_alpha == 1) image_alpha = 0;
			else image_alpha = 1;
		}
	}
	else image_alpha = 1;
}