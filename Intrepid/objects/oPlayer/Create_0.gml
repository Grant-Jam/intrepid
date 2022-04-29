/// @description Init
randomize();

grav = 0.35;
maxfall = 6;
grounded = false;
points = 0;
maxhp = 5;
hp = maxhp;
iframesmax = 60;
iframes = 0;
invincible = false;

//states
//currentState = 0;
//lastState = 0;

//animation
animation_init();
lastSprite = sprite;

//movement
left = 0;
right = 0;
up = 0;
down = 0;
attack = 0;
jump = 0;
hsp = 0;
vsp = 0;
movespeed = 1.5;
dashspeed = 2.5;
jumpspeed = -5;
highjumpspeed = -6.5;

//attacking
shootmaxcooldown = 20;
shootcooldown = 0;
maxbombs = 5;
bombs = maxbombs;

//getting attacked
hitStunned = false;
flashing = false;
flashSpeed = 3;
flashTimer = 0;

//item unlocks
highjumpunlocked = false;
wallbreakerunlocked = false;
shrinkunlocked = false;
dashunlocked = false;
rocketsunlocked = false;

//gui stuff
debugGui = false;

audio_falloff_set_model(audio_falloff_exponent_distance);
audio_listener_orientation(0, 0, -1000, 0, 1, 0);
