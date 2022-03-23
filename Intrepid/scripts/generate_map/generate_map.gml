// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generate_map(){
	//map = [10];
	for (i = 9; i >= 0; i--)
	{
		for (j = 9; j >= 0; j--)
		{
			map[i][j] = noone;
		}
	}
	show_debug_message("ran map gen");
	map[3][3] = space(1,0,0,0);
	map[9][9] = space(0,0,0,0);
}

function space(connectUp, connectRight, connectDown, connectLeft) constructor
{
	cUp = connectUp;
	cRight = connectRight;
	cDown = connectDown;
	cLeft = connectLeft;
}