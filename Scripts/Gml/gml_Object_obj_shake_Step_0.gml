if (active == 0)
{
    beenset = 1;
    mycamerax = __view_get(e__VW.XView, camera);
    mycameray = __view_get(e__VW.YView, camera);
    
    if (global.flag[12] == 0)
    {
        __view_set(e__VW.XView, camera, mycamerax + shakex);
        __view_set(e__VW.YView, camera, mycameray + shakey);
    }
    
    shakesign = -shakesign;
    active = 1;
    alarm[0] = shakespeed;
}

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
