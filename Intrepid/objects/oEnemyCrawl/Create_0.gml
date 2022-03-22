/// @description

// Inherit the parent event
event_inherited();

enum dir
{
	left,
	right,
	up,
	down
}

movedirection = facingleft ? dir.left : dir.right;
spd = 0.5;