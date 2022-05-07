/// @description 
event_inherited();
introX = view_wport[0]/2;
introY = view_hport[0]/2;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(introX-140, introY-70, introX+140, introY+70, false);
draw_set_alpha(1);

draw_set_color(c_white);
draw_set_font(fontArcadepix8);
draw_text_ext(introX, introY, "Your research craft has crash-landed on an alien planet.\n\n" + 
	"The ship is repaired, but its contents are scattered to the caves below.\n\n"+
	"If you can find the reactor core, you can start the ship and leave this planet behind.", 12, 270);
draw_set_font(fontArcadepix);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
