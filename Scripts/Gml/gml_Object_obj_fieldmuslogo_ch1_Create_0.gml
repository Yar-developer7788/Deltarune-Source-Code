siner = 0;
image_xscale = 2;
image_yscale = 2;
image_alpha = 0;
offx = 0;

if (global.lang == "ja")
    sprite_index = spr_ja_fieldmuslogo_ch1;

x = (__view_get(e__VW.XView, 0) + 180) - offx;
y = __view_get(e__VW.YView, 0) + 100;

with (obj_mainchara_ch1)
    bg = 1;

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
