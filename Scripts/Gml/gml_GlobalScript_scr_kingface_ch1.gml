function scr_kingface_ch1(arg0, arg1)
{
    if (global.plot >= 235)
        global.msg[arg0] = scr_84_get_subst_string_ch1(scr_84_get_lang_string_ch1("scr_kingface_slash_scr_kingface_gml_3_0"), string(arg1));
    else
        global.msg[arg0] = scr_84_get_subst_string_ch1(scr_84_get_lang_string_ch1("scr_kingface_slash_scr_kingface_gml_7_0"), string(arg1));
}
