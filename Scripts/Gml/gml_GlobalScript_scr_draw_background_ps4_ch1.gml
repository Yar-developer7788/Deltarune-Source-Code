function scr_draw_background_ps4_ch1(arg0, arg1, arg2)
{
    var bg = arg0;
    var xx = arg1;
    var yy = arg2;
    
    if (os_type == os_ps4 || os_type == os_switch)
    {
        var scale = window_get_width() / 1920;
        draw_background_stretched_ch1(bg, xx * scale, yy * scale, background_get_width_ch1(bg) * scale, background_get_height_ch1(bg) * scale);
    }
    else
    {
        draw_background_ch1(bg, xx, yy);
    }
}
