/// @description draw map
mapWidth = array_length(map);
mapHeight = array_length(map[0]);
gridSize = 50;

//map border
draw_set_color(c_white);
draw_rectangle(0, 0, mapWidth*gridSize, mapHeight*gridSize, true);

//draw rooms
draw_set_color(c_green);
for (i = 0; i < mapWidth; i++)
{
	for (j = 0; j < mapHeight; j++)
	{
		if (map[i][j] != noone)
		{
			currentSpace = map[i][j];
			spaceX = i*gridSize;
			spaceY = j*gridSize;
			draw_rectangle(spaceX, spaceY, spaceX+gridSize, spaceY+gridSize, false);
			
			draw_set_color(c_red);
			show_debug_message("Map[" + string(i) + "][" + string(j) + "]: " + string(map[i][j].cUp));
			//if (currentSpace.cUp == 1) 
			//{
			//	draw_rectangle(spaceX, spaceY, spaceX, spaceY+10, false);
			//}
				
			draw_set_color(c_green);
		}
	}
}