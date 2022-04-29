/// @function ???
function create_doors(spStruct, doorObj)
{
	var startX = spStruct.gridX*gridSize*11;
	var startY = spStruct.gridY*gridSize*11;
	var up = spStruct.cUp;
	var down = spStruct.cDown;
	var left = spStruct.cLeft;
	var right = spStruct.cRight;
	
	if (left)
	{
		var doorTargetX = startX + (0*gridSize);
		var doorTargetY = startY + (9*gridSize) + y;
		if (!place_meeting(doorTargetX, doorTargetY, oGround))
			instance_create_layer(doorTargetX, doorTargetY, "Floor", doorObj);
	}
	if (right)
	{
		var doorTargetX = startX + (11*gridSize);
		var doorTargetY = startY + (9*gridSize) + y;
		if (!place_meeting(doorTargetX, doorTargetY, oGround))
			instance_create_layer(doorTargetX, doorTargetY, "Floor", doorObj);
	}
	if (up)
	{
		var doorTargetX = startX + (5*gridSize);
		var doorTargetY = startY + (0*gridSize) + y;
		if (!place_meeting(doorTargetX, doorTargetY, oGround))
		{
			var door = instance_create_layer(doorTargetX, doorTargetY, "Floor", doorObj);
			door.image_angle = 90;
		}
	}
	if (down)
	{
		var doorTargetX = startX + (5*gridSize);
		var doorTargetY = startY + (11*gridSize) + y;
		if (!place_meeting(doorTargetX, doorTargetY, oGround))
		{
			var door = instance_create_layer(doorTargetX, doorTargetY, "Floor", doorObj);
			door.image_angle = 90;
		}
	}
}