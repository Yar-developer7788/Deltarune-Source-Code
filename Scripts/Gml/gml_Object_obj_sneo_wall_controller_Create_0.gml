siner = 0;
xx = __view_get(e__VW.XView, 0);
yy = __view_get(e__VW.YView, 0);
wallsize = 4;
sinespeed = 0;
sinetargetspeed = 1.2;
spawncount = 5;
alarm[0] = 172;
made = 0;
waittime = 125.66370614359172 / spawncount;
timer = waittime;
type = 3;
global.turntimer += 33;
brake = 0;
init = 0;
breakspotconsecutive = 1 + irandom(6);
breakspotpreviouscon = 0;
introtimer = 0;
turnaroundcon = 0;
difficulty = obj_spamton_neo_enemy.difficulty;
lilguytimer = -91;

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
