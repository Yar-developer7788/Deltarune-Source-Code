movecourse = 0;
movetimer = 0;
myinteract = 0;
image_xscale = 2;
image_yscale = 2;
movespeed = 8;
movetimertarget = 5;
wd = (sprite_get_bbox_left(sprite_index) - sprite_get_bbox_right(sprite_index)) * 2;
ht = (sprite_get_bbox_bottom(sprite_index) - sprite_get_bbox_top(sprite_index)) * 2;
xoffset = sprite_get_xoffset(sprite_index) * 2;
yoffset = sprite_get_yoffset(sprite_index) * 2;
