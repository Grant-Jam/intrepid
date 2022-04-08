/// @description ?

// Inherit the parent event
event_inherited();

// Travel up and down
if (vsp < 0 && place_meeting(x, y-1, oGround)) vsp = -vsp;
else if (vsp > 0 && place_meeting(x, y+1, oGround)) vsp = -vsp;

y += vsp;

//if (distance_to_object(oPlayer) <= engagedistance)
image_xscale = facingleft ? -1 : 1;

