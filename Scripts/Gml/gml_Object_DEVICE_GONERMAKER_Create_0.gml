HEAD = 0;
BODY = 0;
LEGS = 0;
HEADMAX = 7;
BODYMAX = 5;
LEGSMAX = 1;
PART[0] = global.flag[900];
PART[1] = global.flag[901];
PART[2] = global.flag[902];
PARTMAX[0] = 7;
PARTMAX[1] = 5;
PARTMAX[2] = 4;
s = 0;
offx = 0;
movetimer = 0;
PARTX[0] = 0;
IDEALX[0] = 0;
PARTX[1] = 0;
IDEALX[1] = 0;
PARTX[2] = 0;
IDEALX[2] = 0;

for (i = 0; i < 3; i += 1)
{
    IDEALX[i] = PART[i] * -50;
    PARTX[i] = IDEALX[i];
}

LOCK[0] = 0;
LOCK[1] = 0;
LOCK[2] = 0;
sy[0] = 0;
sy[1] = 34;
sy[2] = 60;
siner = 0;
obacktimer = 0;
OB_DEPTH = 0;
flashtimer = 0;
midscreenx = __view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) / 2);
midscreeny = __view_get(e__VW.YView, 0) + (__view_get(e__VW.HView, 0) / 2);
STEP = 1;
FINISH = 0;
ONEBUFFER = 10;
FADEBUFFER = 10;
CANCEL = 0;
initx = x;
inity = y;

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
