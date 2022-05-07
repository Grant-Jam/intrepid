/// @description create gui and freeze game

instance_deactivate_layer("Player");
instance_deactivate_layer("Enemies");
instance_deactivate_layer("Projectiles");
oGameManager.frozen = true;

messagetext = "Debug text\nIf you see this, whoops :3";

enum popupState
{
	scalingIn,
	active,
	scalingOut
}

curUIState = popupState.scalingIn;

scale = 0;
scaleSpeed = 0.1;
