// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_buttons()
{	
	left = keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl) || gamepad_axis_value(0, gp_axislh) < 0;
	right = keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh) > 0;
	up = keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu) || gamepad_axis_value(0, gp_axislv) < 0;
	down = keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv) > 0;
	
	leftpressed = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0, gp_padl) || (gamepad_axis_value(0, gp_axislh) < -0.5 && !alarm[11]);
	rightpressed = keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0, gp_padr) || (gamepad_axis_value(0, gp_axislh) > 0.5 && !alarm[11]);
	uppressed = keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu) || (gamepad_axis_value(0, gp_axislv) < -0.5 && !alarm[11]);
	downpressed = keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_padd) || (gamepad_axis_value(0, gp_axislv) > 0.5 && !alarm[11]);
	
	if (leftpressed || rightpressed || uppressed || downpressed) alarm[11] = 10;
	
	jump = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);
	jumpheld = keyboard_check(vk_space) || gamepad_button_check(0, gp_face1);
	attack = keyboard_check(ord("J")) || gamepad_button_check(0, gp_face3);
	bomb = keyboard_check_pressed(ord("H")) || gamepad_button_check_pressed(0, gp_face4);
	rocket = keyboard_check_pressed(ord("U")) || gamepad_button_check_pressed(0, gp_face2);
	dash = keyboard_check(vk_shift) || gamepad_button_check(0, gp_shoulderr);
	
	select = keyboard_check_pressed(vk_tab) || gamepad_button_check_pressed(0, gp_select);
	start = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_start);
	escape = keyboard_check_pressed(vk_escape);
}