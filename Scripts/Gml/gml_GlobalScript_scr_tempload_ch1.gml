function scr_tempload_ch1()
{
    filechoicebk3 = global.filechoice;
    global.filechoice = 9;
    scr_load_ch1();
    global.filechoice = filechoicebk3;
}
