// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_buttons(){
	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
	up = keyboard_check(ord("W"));
	down = keyboard_check(ord("S"));
	jump = keyboard_check_pressed(vk_space);
	jumpheld = keyboard_check(vk_space);
	attack = keyboard_check(ord("J"));
	bomb = keyboard_check_pressed(ord("H"));
	rocket = keyboard_check_pressed(ord("U"));
	dash = keyboard_check(vk_shift);
}