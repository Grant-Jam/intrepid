/// @description Set speed

// Inherit the parent event
event_inherited();

player_buttons();
spd = 5;
hsp = 0;
vsp = 0;

if (oPlayer.wallbreakerunlocked) sprite_index = sprBulletBreaker;

if (up != 0) {vsp = -spd; image_angle = 90;}
else if (down != 0) {vsp = spd; image_angle = 270;}
else if (left != 0) {hsp = -spd; image_angle = 180;}
else if (right != 0) {hsp = spd; image_angle = 0;}
else 
{
	hsp = spd * oPlayer.image_xscale;
	image_xscale = oPlayer.image_xscale;
}

lifetime = 60;
damage = 1;

audio_play_sound_at(sndShoot, x, y, 0, 100, 300, 1, false, 1);
