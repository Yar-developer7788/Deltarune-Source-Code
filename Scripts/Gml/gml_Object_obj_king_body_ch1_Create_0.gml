xx = __view_get(e__VW.XView, 0);
yy = __view_get(e__VW.YView, 0);
condition = 0;
attackno = 0;
attack = 0;
image_xscale = 2;
image_yscale = 2;
x = xx + 470;
y = yy + 70;
active = 1;
faketimer = 0;
faketimermax = 180;
timeruse = 0;
image_speed = 0.334;

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
