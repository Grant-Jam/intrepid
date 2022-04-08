/// @description Open on hit
if (distance_to_object(oBullet) < 8)
{
	instance_destroy();
	var openDoor = instance_create_layer(x, y, "Floor", oDoorVOpen);
	openDoor.image_angle = image_angle;
}
