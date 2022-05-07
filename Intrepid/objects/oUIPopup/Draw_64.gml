/// @description draw UI
popupX = view_wport[0]/2;
popupY = view_hport[0]/2;

//draw_sprite(sprUIPopup, 0, popupX, popupY);
draw_sprite_ext(sprUIPopup, 0, popupX, popupY, scale, 1, 0, c_white, 1);

if (curUIState == popupState.active)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text_transformed(popupX, popupY, messagetext, 0.5, 0.5, 0);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
