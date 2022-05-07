/// @description
draw_set_font(fontArcadepix);
screenMidX = view_wport[0]/2;
screenMidY = view_hport[0]/2;

//drawing the main menu states
switch (currentMenuState)
{
	case menuState.fadingIn:
	case menuState.fadingOut:
		draw_set_color(c_black);
		draw_set_alpha(fadeAlpha);
		draw_rectangle(0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false);
		draw_set_alpha(1);
	break;
	
	case menuState.main:
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_sprite(sprButton, 0, screenMidX, buttonYVals[activeButton]);
		draw_text(screenMidX, buttonYVals[0], "Play");
		draw_text(screenMidX, buttonYVals[1]+1, "Controls");
		draw_text(screenMidX, buttonYVals[2]+2, "Credits");
		draw_text(screenMidX, buttonYVals[3]+2, "Exit");
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	break;
	
	case menuState.controls:
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_text_transformed(screenMidX, screenMidY + 95, "Jump to return", 0.5, 0.5, 0);
		
		draw_set_halign(fa_left);
	break;
	
	case menuState.credits:
		draw_set_color(c_black);
		draw_set_alpha(0.5);
		draw_rectangle(screenMidX-120, screenMidY-85, screenMidX+120, screenMidY+80, false);
		draw_set_alpha(1);
		
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(screenMidX, screenMidY, 
			"Credits:\n\n"+
			"Made by James Grant\n\n"+
			"Additional art by:\n"+
			"ansimuz\n"+
			"Adam Saltsman\n"+
			"MattWalkden\n"+
			"o_lobster");
		draw_text_transformed(screenMidX, screenMidY + 95, "Jump to return", 0.5, 0.5, 0);
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	break;
}
