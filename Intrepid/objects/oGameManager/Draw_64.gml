/// @description
draw_set_alpha(guialpha);
draw_set_color(c_black);
draw_rectangle(0, 0, view_wport[0], view_hport[0], false);

if (fadingout)
{
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(view_wport[0]/2, view_hport[0]/2 - 30, "Engine power restored.");
	draw_text(view_wport[0]/2, view_hport[0]/2 - 10, "You can leave this planet behind.");
	
	draw_text_transformed(view_wport[0]/2, view_hport[0]/2 + 40, "Press TAB to retry.", 0.5, 0.5, 0);
	draw_text_transformed(view_wport[0]/2, view_hport[0]/2 + 50, "Press ESCAPE to leave.", 0.5, 0.5, 0);
	draw_set_halign(fa_left);
}

draw_set_alpha(1);
