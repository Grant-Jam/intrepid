/// @description Display HUD
draw_set_color(c_white);
draw_text(20, 10, "HP: " + string(hp));
draw_text(20, 30, "INVINCIBLE: " + string(iframes));
draw_text(20, 50, "BOMBS: " + string(bombs));
draw_text(200, 10, "HIGHJUMP: " + string(highjumpunlocked));
draw_text(200, 30, "WALLBREAK: " + string(wallbreakerunlocked));
draw_text(200, 50, "DASH: " + string(dashunlocked));
draw_text(200, 70, "ROCKETS: " + string(rocketsunlocked));
draw_set_color(c_black);