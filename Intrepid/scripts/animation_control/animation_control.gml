// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animation_control(){
	//animation control
	if (left > 0)
		facing = -1;
	else if (right > 0)
		facing = 1;
			
	if (left > 0 || right > 0)
		sprite = sPlayer_Move2;
	else
		sprite = sPlayer_Idle2;
	
	//reset frame to 0 if sprite changes
	if (lastSprite != sprite) {
		lastSprite = sprite;
		frame = 0;
	}
	
	sprite_index = sprite;
}