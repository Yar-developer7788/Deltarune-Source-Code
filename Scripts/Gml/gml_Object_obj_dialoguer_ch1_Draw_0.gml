if (active == 1)
{
    scr_dbox_ch1();
    
    if (!instance_exists(writer))
        instance_destroy();
}
