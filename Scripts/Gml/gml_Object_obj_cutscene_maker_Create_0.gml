grid_snap = 40;
grid_mode = 1;
move_mode = 1;
actor_amount = 1;
actor_selected = 0;
hover_x = 0;
hover_y = 0;
step_current = 0;
step_max = 0;
make_effect_timer = 0;

for (i = 0; i < 10; i++)
{
    actor_startx[i][0] = __view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) / 2);
    actor_starty[i][0] = __view_get(e__VW.YView, 0) + (__view_get(e__VW.HView, 0) / 2);
    actor_endx[i][0] = __view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) / 2);
    actor_endy[i][0] = __view_get(e__VW.YView, 0) + (__view_get(e__VW.HView, 0) / 2);
    actor_startfacing[i][0] = "d";
    actor_endfacing[i][0] = "d";
    actor_startsprite[i][0] = spr_susied_dark;
    actor_endsprite[i][0] = spr_susied_dark;
    actor_image[i][0] = 0;
    actor_animation_speed[i][0] = 0;
    actor_time[i][0] = 30;
    actor_visible[i][0] = 0;
    actor_scale[i][0] = 1 + global.darkzone;
    actor_move_style[i][0] = "cardinal";
    actor_name[i] = "su";
    actor_cardinal[i][0] = "d";
    actor_cardinal_speed[i][0] = 3;
}

actor_visible[0][0] = 1;

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
