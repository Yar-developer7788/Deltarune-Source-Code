active = 1;
xx = (19 * f) + __view_get(e__VW.XView, 0);
yy = (20 * f) + __view_get(e__VW.YView, 0);
xx = round(xx);
yy = round(yy);

if (side == 0)
{
    writer = instance_create_ch1(xx + (10 * f), yy - (5 * f), obj_writer_ch1);
    scr_facechoice_ch1();
    
    with (writer)
        dialoguer = 1;
}

if (side == 1)
{
    writer = instance_create_ch1(xx + (10 * f), yy + (150 * f), obj_writer_ch1);
    writer.skippable = skippable;
    scr_facechoice_ch1();
    
    with (writer)
        dialoguer = 1;
}

if (instance_exists(writer) && global.fc != 0)
{
    with (writer)
    {
        dialoguer = 1;
        
        if (originalcharline == 33)
            charline = 26;
    }
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
