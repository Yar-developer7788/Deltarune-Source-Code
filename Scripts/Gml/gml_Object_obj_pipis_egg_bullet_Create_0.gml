scr_bullet_init();
hp = 3;
con = 0;
timer = 0;
type = 0;
shake = 0;
parent = -1;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
image_angle = random(360);
target = 0;
damage = 1;
directhit = 0;
element = 6;
bluesiner = 0;
image_blend2 = merge_color(#00A2E8, c_aqua, 0.25 + (sin(bluesiner / 3) * 0.25));
hitstun = 0;
hitstunenabled = 0;
bouncespeed = -5 - random(3);
drawlabel = 0;
grazepoints = 2;
