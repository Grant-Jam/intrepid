/// @description Movement
// Inherit the parent event
event_inherited();

// Moving
collision_check();
grav_fall();

x += hsp;

// Turnaround check
if (place_meeting(x+sign(hsp), y, oGround)) hsp *= -1;
else if (!place_meeting(x+sign(hsp), y+2, oGround)) hsp *= -1;

// Image flip
image_xscale = sign(hsp);


