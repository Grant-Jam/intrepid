// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function frame_reset(){
	//reset frame if it is greater than the total number of frames in the sprite
	if(floor(frame) >= sprite_get_number(sprite)) {
		frame = 0;
	}
}