becomeflash = 0;
turnt = 0;
turns = 0;
talktimer = 0;
talkmax = 90;
state = 0;
flash = 0;
siner = 0;
fsiner = 0;
talked = 0;
attacked = 0;
hurt = 0;
hurttimer = 0;
hurtshake = 0;
mywriter = 343249823;
acting = 0;
actcon = 0;
acttimer = 0;
mercymod = 0;
maxmercy = 9999;
warned = 0;
compliment = 0;
tired = 0;
attacks = 0;
dodgetimer = 0;
candodge = 0;
con = 0;
battlecancel = 0;
nexttry = 0;
mytarget = 3;
blowall = 0;
blowing = 0;
animsiner = 0;
blowamt = 0;
xx = __view_get(e__VW.XView, 0);
yy = __view_get(e__VW.YView, 0);
blowtimer = 180;
blowbuffer = 3;
blown = 0;
blowanimtimer = 0;
blow_wait = 0;
image_xscale = 2;
image_yscale = 2;
onoff = 0;
shakeamt = 0;
originalwidth = sprite_width;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
idlesprite = spr_rabbick_enemy_ch1;
hurtsprite = spr_rabbick_enemy_hurt_ch1;
sparedsprite = spr_rabbick_enemy_spared_ch1;

enum e__VW
{
    XView,
    YView,
    WView,
    HView,
    Angle,
    HBorder,
    VBorder,
    HSpeed,
    VSpeed,
    Object,
    Visible,
    XPort,
    YPort,
    WPort,
    HPort,
    Camera,
    SurfaceID
}
