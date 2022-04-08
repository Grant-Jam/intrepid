function generate_map(){
	mapWidth = 50;
	mapHeight = 50;
	for (i = mapWidth; i >= 0; i--)
	{
		for (j = mapHeight; j >= 0; j--)
		{
			map[i][j] = noone;
		}
	}
	map[7][0] = new Space(7,0);
	a = GeneratePath(map[7][0], 15);
	
	b = [];
	//find a random spot along path a to start path b
	do {
		var bStart = irandom(array_length(a) - 1);
	} 
	until (!is_space_surrounded(a[bStart].gridX, a[bStart].gridY))
	
	b = GeneratePath(a[bStart], 10);
	
	map[7][0].cUp = true;
	
	show_debug_message("finished map array");
	
	PlaceSpaces();
}

function Space(gX, gY) constructor
{
	gridX = gX;
	gridY = gY;
	cUp = false;
	cRight = false;
	cDown = false;
	cLeft = false;
}

function GeneratePath(startingSpace, spaces)
{
	//drunkard walk placement
	var placed = 0;
	var curX = startingSpace.gridX;
	var curY = startingSpace.gridY;

	var currentPath = [];
	
	while (placed < spaces)
	{
		//1=up, 2=right, 3=down, 4=left
		var randomDir = irandom(3) + 1;
		var tarX = curX;
		var tarY = curY;
		
		switch (randomDir)
		{
			case 1:
				tarY++;
				break;
			case 2:
				tarX++;
				break;
			case 3:
				tarY--;
				break
			case 4:
				tarX--;
				break;
		}
		
		//check for space out of bounds
		if (tarX < 0 || tarY < 0 || tarX > mapWidth || tarY > mapHeight)
		{
			show_debug_message("space out of bounds");
			continue;
		}
		
		//if the space isn't already filled, place a space
		else if (tarX >= 0 && tarY >= 0 && map[tarX][tarY] == noone)
		{
			var newSpace = new Space(tarX, tarY);
			map[tarX][tarY] = newSpace;
			currentPath[placed] = newSpace;
			show_debug_message("placed a space");
			curX = tarX;
			curY = tarY;
			placed++;
			
			//determine connections
			if (curX-1 >= 0 && map[curX-1][curY] != noone)
			{
				map[curX][curY].cLeft = true;
				map[curX-1][curY].cRight = true;
			}
			if (map[curX+1][curY] != noone)
			{
				map[curX][curY].cRight = true;
				map[curX+1][curY].cLeft = true;
			}
			if (curY-1 >= 0 && map[curX][curY-1] != noone)
			{
				map[curX][curY].cUp = true;
				map[curX][curY-1].cDown = true;
			}
			if (map[curX][curY+1] != noone)
			{
				map[curX][curY].cDown = true;
				map[curX][curY+1].cUp = true;
			}
		}
		else
		{
			show_debug_message("space was already filled");
			continue;
		}
		
		//if the space is closed in, end the path early
		if (is_space_surrounded(curX, curY))
		{
			show_debug_message("SPACE " + string(placed-1) + " IS SURROUNDED, ENDING PATH EARLY");
			break;
		}
	}
	
	return currentPath;
}

function PlaceSpaces()
{
	for (var i = 0; i < array_length(map); i++)
	{
		for (var j = 0; j < array_length(map[0]); j++)
		{
			var currentSpace = map[i][j];
			if (currentSpace != noone)
			{
				//var spaceObj = instance_create_layer(currentSpace.gridX*gridSize, currentSpace.gridY*gridSize, "Instances", oSpace);
				//spaceObj.spaceStruct = currentSpace;
				//with (spaceObj) event_user(0);
				create_space_objects(currentSpace);
			}
		}
	}
}