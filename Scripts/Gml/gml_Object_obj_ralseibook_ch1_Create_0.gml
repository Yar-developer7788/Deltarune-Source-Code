page = -1;
topage = 0;
xx = __view_get(e__VW.XView, 0) + 20;
yy = __view_get(e__VW.YView, 0) + 20;
turning = 0;
turntimer = 0;
turnpage = 0;
siner = 0;

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
