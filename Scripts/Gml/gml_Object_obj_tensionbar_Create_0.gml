tsiner = 0;
global.tensionselect = 0;
apparent = global.tension;
current = global.tension;
change = 0;
changetimer = 15;
red = 0;
redtimer = 0;
xx = __view_get(e__VW.XView, 0);
yy = __view_get(e__VW.YView, 0);
y = yy + 40;
x = xx - 40;
hspeed = 13;
friction = 1;
flashsiner = 0;
maxed = 0;
healthbar_surf = surface_create(96, 250);

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
