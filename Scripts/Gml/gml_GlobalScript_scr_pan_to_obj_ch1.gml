function scr_pan_to_obj_ch1(arg0, arg1)
{
    _wd = arg0.x - floor((__view_get(e__VW.WView, 0) / 2) - (arg0.sprite_width / 2));
    _ht = arg0.y - floor((__view_get(e__VW.HView, 0) / 2) - (arg0.sprite_height / 2));
    _vx = _wd;
    _vy = _ht;
    
    if (_vx < 0)
        _vx = 0;
    
    if (_vx > (room_width - _vx))
        _vx = room_width - _vx;
    
    if (_vy < 0)
        _vy = 0;
    
    if (_vy > (room_height - __view_get(e__VW.HView, 0)))
        _vy = room_height - __view_get(e__VW.HView, 0);
    
    scr_pan_ch1((_vx - __view_get(e__VW.XView, 0)) / arg1, (_vy - __view_get(e__VW.YView, 0)) / arg1, arg1);
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
