/// @description Control
//buttons
player_buttons();

//Move and dash
hsp = (dashunlocked&&dash!=0) ? (right - left) * dashspeed : (right - left) * movespeed;
	
//Jump
if (jump != 0 && grounded) {
	grounded = false;
	if (highjumpunlocked) vsp = highjumpspeed;
	else vsp = jumpspeed;
	audio_play_sound(sndJump, 1, false);
}

//Variable jump height
if (vsp < 0 && !jumpheld) vsp *= 0.7;
	

//Fire bullet and cooldown
if (attack != 0 && shootcooldown == 0)
{
	instance_create_layer(x, y, "Projectiles", oBullet);
	shootcooldown = shootmaxcooldown;
}

if (shootcooldown > 0) shootcooldown--;
else if (shootcooldown < 0) shootcooldown = 0;

//Fire bomb
if (bomb != 0 && bombs > 0)
{
	instance_create_layer(x, y, "Projectiles", oBomb);
	bombs--;
}

//Fire rocket
if (rocketsunlocked && rocket != 0 && bombs > 0)
{
	instance_create_layer(x, y, "Projectiles", oRocket);
	bombs--;
}

//Hit by enemy
if (place_meeting(x, y, oEnemy) && !invincible)
{
	hp--;
	
	//Dying
	if (hp <= 0) game_restart();
	
	//Hit iframes
	hsp = -16 * image_xscale;
	invincible = true;
}
if (invincible)
{
	flashing = true;
	iframes++;
	if (iframes >= iframesmax)
	{
		iframes = 0;
		invincible = false;
		flashing = false;
	}
}

//collision
grav_fall();
collision_check();

//Switching sprite
if (hsp > 0) image_xscale = 1;
else if (hsp < 0) image_xscale = -1;

//animation
frame_counter();

//flashing
check_flashing();

x += hsp;
y += vsp;