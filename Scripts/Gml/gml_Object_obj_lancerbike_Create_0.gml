grazed = 0;
grazepoints = 10;
timepoints = 0;
target = 0;
dont = 1;
inv = 60;
damage = 20;
spec = 0;

if (global.hp[1] <= (global.maxhp[1] / 2))
    damage = 10;

if (global.hp[1] <= (global.maxhp[1] / 4))
    damage = 5;

image_xscale = 2;
image_yscale = 2;
loop = 0;
lcon = 0;
flip = 0;
ltimer = 0;
btimer = 0;
endcon = 0;
racecon = 0;
yy = __view_get(e__VW.YView, 0);
xx = __view_get(e__VW.XView, 0);
topy = yy + 120;
bottomy = yy + 250;

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
