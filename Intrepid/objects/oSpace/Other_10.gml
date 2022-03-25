/// @description choose sprite
up = spaceStruct.cUp;
down = spaceStruct.cDown;
right = spaceStruct.cRight;
left = spaceStruct.cLeft;

//4 doors
if (up && down && left && right)
{
	sprite_index = sprSpaceAll;
}

//3 doors
else if (up && down && left)
{
	sprite_index = sprSpaceUDL;
}
else if (up && right && down)
{
	sprite_index = sprSpaceURD;
}
else if (up && left && right)
{
	sprite_index = sprSpaceURL;
}
else if (down && left && right)
{
	sprite_index = sprSpaceRDL;
}

//2 doors
else if (up && down)
{
	sprite_index = sprSpaceUD;
}
else if (left && right)
{
	sprite_index = sprSpaceRL;
}
else if (up && right)
{
	sprite_index = sprSpaceUR;
}
else if (right && down)
{
	sprite_index = sprSpaceRD;
}
else if (down && left)
{
	sprite_index = sprSpaceDL;
}
else if (left && up)
{
	sprite_index = sprSpaceLU;
}

//1 door
else if (up)
{
	sprite_index = sprSpaceU;
}
else if (down)
{
	sprite_index = sprSpaceD;
}
else if (left)
{
	sprite_index = sprSpaceL;
}
else if (right)
{
	sprite_index = sprSpaceR;
}

//there's been an issue
else sprite_index = sprSpaceWrong;
