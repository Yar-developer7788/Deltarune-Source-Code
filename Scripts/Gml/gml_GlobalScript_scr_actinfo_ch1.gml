function scr_actinfo_ch1(arg0)
{
    actcost = -1;
    acttype = 0;
    actspell = 0;
    actor = obj_pipis_bullet_cone;
    actname = " ";
    
    switch (arg0)
    {
        case 0:
            actcost = -1;
            acttype = 0;
            actspell = 0;
            actor = obj_pipis_bullet_cone;
            actname = " ";
            break;
        
        case 1:
            actcost = -1;
            acttype = 0;
            actspell = 0;
            actor = obj_pipis_bullet_cone;
            actname = scr_84_get_lang_string_ch1("scr_actinfo_slash_scr_actinfo_gml_21_0");
            break;
        
        case 2:
            actcost = -1;
            acttype = 1;
            actspell = 2;
            actor = obj_84_lang_helper;
            actname = scr_84_get_lang_string_ch1("scr_actinfo_slash_scr_actinfo_gml_28_0");
            break;
    }
}
