/// @function ???
/// @param mapX mapY
function is_space_surrounded(sX, sY)
{
	//edge case: space is in top right corner
	if (sX-1 < 0 && sY-1 < 0)
	{
		if (map[sX+1][sY] == noone) return false;
		else if (map[sX][sY+1] == noone) return false;
		else return true;
	}
	
	//edge case: space is along left side but not top side
	else if (sX-1 < 0)
	{
		if (map[sX+1][sY] == noone) return false;
		else if (map[sX][sY-1] == noone) return false;
		else if (map[sX][sY+1] == noone) return false;
		else return true;
	}
	
	//edge case: space is along top side but not left side
	else if (sY-1 < 0)
	{
		if (map[sX+1][sY] == noone) return false;
		else if (map[sX-1][sY] == noone) return false;
		else if (map[sX][sY+1] == noone) return false;
		else return true;
	}
	
	//default
	if (map[sX-1][sY] == noone) return false;
	else if (map[sX+1][sY] == noone) return false;
	else if (map[sX][sY-1] == noone) return false;
	else if (map[sX][sY+1] == noone) return false;
	else return true;
}