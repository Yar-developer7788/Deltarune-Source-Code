cur_jewel = 0;
active = 0;
alarm[0] = 1;
skippable = 1;
free = 0;
xxx = __view_get(e__VW.XView, 0);
yyy = __view_get(e__VW.YView, 0);
writer = 432432;
side = 1;

if (instance_exists(obj_mainchara_ch1))
{
    if (global.darkzone == 0)
    {
        if (obj_mainchara_ch1.y > (yyy + 130))
            side = 0;
    }
    
    if (global.darkzone == 1)
    {
        if (obj_mainchara_ch1.y > (yyy + 250))
            side = 0;
    }
}

f = 1;

if (global.darkzone == 1)
    f = 2;

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
