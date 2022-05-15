/// @description Unlock rockets
event_inherited();
oPlayer.rocketsunlocked = true;
if (gamepad_is_connected(0)) create_popup("UNLOCKED ROCKETS\n\nPress B to fire a rocket in any direction.\nUses BOMB.");
else create_popup("UNLOCKED ROCKETS\n\nPress [U] to fire a rocket in any direction.\nUses BOMB.");
