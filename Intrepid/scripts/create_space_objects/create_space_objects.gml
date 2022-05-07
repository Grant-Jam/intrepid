/// @function ???
/// @param ???
function create_space_objects(spStruct)
{
	var startX = spStruct.gridX*gridSize*11;
	var startY = spStruct.gridY*gridSize*11;
	var room_grid = noone;
	
	var up = spStruct.cUp;
	var down = spStruct.cDown;
	var left = spStruct.cLeft;
	var right = spStruct.cRight;
	
	var secondaryItems = [oItemDash, oItemJump, oItemRocket];
	
	//determining room
	//4 doors
	if (up && down && left && right)
	{
		room_grid = load_csv("tilemaps/spaceAll.csv");
	}

	//3 doors
	else if (up && down && left)
	{
		room_grid = load_csv("tilemaps/spaceUpDownLeft.csv");
	}
	else if (up && right && down)
	{
		room_grid = load_csv("tilemaps/spaceUpRightDown.csv");
	}
	else if (up && left && right)
	{
		room_grid = load_csv("tilemaps/spaceUpRightLeft.csv");
	}
	else if (down && left && right)
	{
		room_grid = load_csv("tilemaps/spaceRightDownLeft.csv");
	}

	//2 doors
	else if (up && down)
	{
		room_grid = load_csv("tilemaps/spaceUpDown.csv");
	}
	else if (left && right)
	{
		room_grid = load_csv("tilemaps/spaceRightLeft.csv");
	}
	else if (up && right)
	{
		room_grid = load_csv("tilemaps/spaceUpRight.csv");
	}
	else if (right && down)
	{
		room_grid = load_csv("tilemaps/spaceRightDown.csv");
	}
	else if (down && left)
	{
		room_grid = load_csv("tilemaps/spaceDownLeft.csv");
	}
	else if (left && up)
	{
		room_grid = load_csv("tilemaps/spaceLeftUp.csv");
	}

	//1 door
	else if (up)
	{
		room_grid = load_csv("tilemaps/spaceUp.csv");
	}
	else if (down)
	{
		room_grid = load_csv("tilemaps/spaceDown.csv");
	}
	else if (left)
	{
		room_grid = load_csv("tilemaps/spaceLeft.csv");
	}
	else if (right)
	{
		room_grid = load_csv("tilemaps/spaceRight.csv");
	}

	//there's been an issue
	else room_grid = load_csv("tilemaps/roomtest.csv");
	
	//placing tiles
	for (var xx = 0; xx < ds_grid_width(room_grid); xx++)
	{
		for (var yy = 0; yy < ds_grid_height(room_grid); yy++)
		{
			currentTileID = room_grid[# xx, yy];
			if (currentTileID == 12)
			{
				instance_create_layer(startX + (xx*gridSize), startY + (yy*gridSize) + y, "Floor", oGround);
			}
			else if (currentTileID == 832)
			{
				instance_create_layer(startX + (xx*gridSize), startY + (yy*gridSize) + y, "Enemies", oEnemyCrawl);
			}
			
			else if (currentTileID == 800)
			{
				instance_create_layer(startX + (xx*gridSize), startY + (yy*gridSize) + y, "Enemies", oEnemyFly);
			}
			else if (currentTileID == 736)
			{
				instance_create_layer(startX + (xx*gridSize), startY + (yy*gridSize) + y, "Enemies", oEnemyWalk);
			}
			else if (currentTileID == 645)
			{
				//power core at the end of the map
				if (spStruct == b[array_length(b)-1])
					instance_create_layer(startX + (xx*gridSize), startY + (yy*gridSize) + y, "Player", oEnd);
				//wallbreaker at the midway point
				else if (spStruct == a[array_length(a)-1])
					instance_create_layer(startX + (xx*gridSize), startY + (yy*gridSize) + y, "Player", oItemBreaker);
				//1 in 3 chance to spawn a secondary item in a room, if it doesn't already exist
				else
				{
					var spawnedItem = secondaryItems[irandom_range(0,2)];
					if (!instance_exists(spawnedItem) && (irandom_range(0,2) == 2))
						instance_create_layer(startX + (xx*gridSize), startY + (yy*gridSize) + y, "Player", spawnedItem);
				}
			}
		}
	}
}
