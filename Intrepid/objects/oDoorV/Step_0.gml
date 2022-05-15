/// @description Open on hit
collidedbullet = instance_place(x, y, oBullet);
if (collidedbullet != noone)
{
	audio_play_sound_at(sndDoorOpen, x, y, 0, 100, 30, 0.2, false, 1);
	instance_destroy(collidedbullet);
	instance_destroy();
	var openDoor = instance_create_layer(x, y, "Floor", oDoorVOpen);
	openDoor.image_angle = image_angle;
}

if (place_meeting(x, y, oExplode))
{
	audio_play_sound_at(sndDoorOpen, x, y, 0, 100, 30, 0.2, false, 1);
	instance_destroy();
	var openDoor = instance_create_layer(x, y, "Floor", oDoorVOpen);
	openDoor.image_angle = image_angle;
}
