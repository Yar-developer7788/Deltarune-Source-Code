function scr_debug_print_persistent(arg0)
{
    draw_set_halign(fa_right);
    var dcolor = draw_get_color();
    draw_set_color(c_black);
    draw_text_transformed(621, 11, string_hash_to_newline(arg0), 0.5, 0.5, 0);
    draw_set_color(dcolor);
    draw_text_transformed(620, 10, string_hash_to_newline(arg0), 0.5, 0.5, 0);
    draw_set_halign(fa_left);
}
