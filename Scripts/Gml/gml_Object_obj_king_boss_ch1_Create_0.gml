bikeflip = 0;
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
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
idlesprite = spr_chainking_idle_ch1;
hurtsprite = spr_chainking_hurt_ch1;
sparedsprite = spr_chainking_idle_ch1;
kturn = 0;
xx = __view_get(e__VW.XView, 0);
yy = __view_get(e__VW.YView, 0);
tempattack = 1;
hurtbuffer = 0;
reminvc = global.invc;
susinit = 0;
remxx = __view_get(e__VW.XView, 0);
remyy = __view_get(e__VW.YView, 0);
chain_dragging = 0;
wall_bouncing = 0;
talk_all_message = 0;

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
