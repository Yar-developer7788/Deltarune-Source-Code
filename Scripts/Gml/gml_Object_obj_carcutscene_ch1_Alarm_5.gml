global.typer = 8;
global.msg[0] = scr_84_get_lang_string_ch1("obj_carcutscene_slash_Alarm_5_gml_2_0");
global.msg[1] = scr_84_get_lang_string_ch1("obj_carcutscene_slash_Alarm_5_gml_3_0");
global.msg[2] = scr_84_get_lang_string_ch1("obj_carcutscene_slash_Alarm_5_gml_4_0");
global.msg[3] = scr_84_get_lang_string_ch1("obj_carcutscene_slash_Alarm_5_gml_5_0");
myd = instance_create_ch1(__view_get(e__VW.XView, 0) + 40, __view_get(e__VW.YView, 0) + 40, obj_writer_ch1);

with (myd)
    skippable = 0;

with (myd)
    persistent = 1;

dhaver = 1;

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
