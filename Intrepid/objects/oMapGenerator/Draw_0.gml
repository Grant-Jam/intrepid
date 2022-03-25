/// @description draw debug map
if (!drawDebugMap) return;

//map border
draw_set_color(c_white);
draw_rectangle(0, 0, mapWidth*gridSize, mapHeight*gridSize, true);

//draw rooms
for (var i = 0; i < mapWidth; i++)
{
	for (var j = 0; j < mapHeight; j++)
	{
		draw_set_color(c_white);
		var spaceX = i*gridSize;
		var spaceY = j*gridSize;
		draw_rectangle(spaceX, spaceY, spaceX+gridSize, spaceY+gridSize, true);
		
		
		if (map[i][j] != noone)
		{
			var currentSpace = map[i][j];
			
			//draw room
			draw_set_color(c_green);
			draw_rectangle(spaceX, spaceY, spaceX+gridSize, spaceY+gridSize, false);
			
			//draw connections
			draw_set_color(c_blue);
			if (currentSpace.cUp) 
				draw_rectangle(spaceX+15, spaceY, spaceX+35, spaceY+25, false);
			if (currentSpace.cRight) 
				draw_rectangle(spaceX+25, spaceY+15, spaceX+gridSize, spaceY+35, false);
			if (currentSpace.cDown) 
				draw_rectangle(spaceX+15, spaceY+25, spaceX+35, spaceY+gridSize, false);
			if (currentSpace.cLeft) 
				draw_rectangle(spaceX, spaceY+15, spaceX+25, spaceY+35, false);
				
			draw_set_color(c_white);
			if (is_space_surrounded(i, j))
				draw_text(spaceX, spaceY+10, "true");
		}
	}
}

//draw paths
//path a
for (var i = 0; i < array_length(a); i++)
{
	var currentSpace = a[i];
	draw_set_color(c_white);
	draw_text(currentSpace.gridX * gridSize, currentSpace.gridY * gridSize, "A" + string(i));
}

//path b
for (var i = 0; i < array_length(b); i++)
{
	var currentSpace = b[i];
	draw_set_color(c_white);
	draw_text(currentSpace.gridX * gridSize, currentSpace.gridY * gridSize, "B" + string(i));
}