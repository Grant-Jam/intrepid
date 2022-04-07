/// @function ???
/// @param ???
function create_space_objects(spStruct)
{
	var startX = spStruct.gridX*gridSize*9;
	var startY = spStruct.gridY*gridSize*9;
	var room_grid = noone;
	
	var up = spStruct.cUp;
	var down = spStruct.cDown;
	var left = spStruct.cLeft;
	var right = spStruct.cRight;
	
	//determining room
	//4 doors
	if (up && down && left && right)
	{
		room_grid = load_csv("spaceAll.csv");
	}

	//3 doors
	else if (up && down && left)
	{
		room_grid = load_csv("spaceUpDownLeft.csv");
	}
	else if (up && right && down)
	{
		room_grid = load_csv("spaceUpRightDown.csv");
	}
	else if (up && left && right)
	{
		room_grid = load_csv("spaceUpRightLeft.csv");
	}
	else if (down && left && right)
	{
		room_grid = load_csv("spaceRightDownLeft.csv");
	}

	//2 doors
	else if (up && down)
	{
		room_grid = load_csv("spaceUpDown.csv");
	}
	else if (left && right)
	{
		room_grid = load_csv("spaceRightLeft.csv");
	}
	else if (up && right)
	{
		room_grid = load_csv("spaceUpRight.csv");
	}
	else if (right && down)
	{
		room_grid = load_csv("spaceRightDown.csv");
	}
	else if (down && left)
	{
		room_grid = load_csv("spaceDownLeft.csv");
	}
	else if (left && up)
	{
		room_grid = load_csv("spaceLeftUp.csv");
	}

	//1 door
	else if (up)
	{
		room_grid = load_csv("spaceUp.csv");
	}
	else if (down)
	{
		room_grid = load_csv("spaceDown.csv");
	}
	else if (left)
	{
		room_grid = load_csv("spaceLeft.csv");
	}
	else if (right)
	{
		room_grid = load_csv("spaceRight.csv");
	}

	//there's been an issue
	else room_grid = load_csv("roomtest.csv");
	
	//placing tiles
	for (var xx = 0; xx < ds_grid_width(room_grid); xx++)
	{
		for (var yy = 0; yy < ds_grid_height(room_grid); yy++)
		{
			if (room_grid[# xx, yy] == 12)
			{
				instance_create_layer(startX + (xx*gridSize), startY + (yy*gridSize), "Floor", oGround);
			}
		}
	}
}