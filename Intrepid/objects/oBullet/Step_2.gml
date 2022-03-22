/// @description Lifetime

//Collisions
collidedwithwall = place_meeting(x, y, oGround);
if (collidedwithwall) instance_destroy();

//Bullet lifetime
lifetime--;
if (lifetime <= 0) instance_destroy();