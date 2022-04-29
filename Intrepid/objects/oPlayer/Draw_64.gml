/// @description Display HUD
if (oGameManager.gameended) return;
if(debugGui)
{
	draw_set_color(c_white);
	draw_text(20, 10, "HP: " + string(hp));
	draw_text(20, 30, "INVINCIBLE: " + string(iframes));
	draw_text(20, 50, "BOMBS: " + string(bombs));
	draw_text(200, 10, "HIGHJUMP: " + string(highjumpunlocked));
	draw_text(200, 30, "WALLBREAK: " + string(wallbreakerunlocked));
	draw_text(200, 50, "DASH: " + string(dashunlocked));
	draw_text(200, 70, "ROCKETS: " + string(rocketsunlocked));
	draw_set_color(c_black);
}
else
{
	draw_set_color(c_white);
	draw_set_font(fontArcadepix);
	
	//health bar
	draw_text(20,10,"HP");
	draw_sprite(sprHealthBarBG, 0, 20, 25);
	for (var i = 0; i < hp; i++)
	{
		draw_sprite(sprHealthPip, 0, 22+(i*19), 27);
	}
	
	//bomb count
	draw_text(150, 10, "BOMB x" + string(bombs));
	
	//check for wallbreaker
	if (wallbreakerunlocked)
	{
		draw_set_halign(fa_center);
		draw_text(view_wport[0]/2, view_hport[0] - 20, "You've unlocked the Wall Breaker!");
		draw_set_halign(fa_left);
	}
}
