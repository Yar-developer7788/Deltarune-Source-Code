function scr_outside_camera_ch1(arg0)
{
    _offcamera = 0;
    rightx = x + sprite_width;
    leftx = x;
    bottomy = y + sprite_height;
    topy = y;
    
    if (x > (__view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0) + arg0))
        _offcamera = 1;
    
    if (rightx < (__view_get(e__VW.XView, 0) - arg0))
        _offcamera = 1;
    
    if (y > (__view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0) + arg0))
        _offcamera = 1;
    
    if (bottomy < (__view_get(e__VW.YView, 0) - arg0))
        _offcamera = 1;
    
    return _offcamera;
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
