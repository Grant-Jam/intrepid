/// @description Unlock dash
event_inherited();
oPlayer.dashunlocked = true;
if (gamepad_is_connected(0)) create_popup("UNLOCKED THE DASH\n\nHold RB to run.");
else create_popup("UNLOCKED THE DASH\n\nHold [Shift] to run.");
