function scr_shakeobj_ch1()
{
    shakeobj = instance_create_ch1(x, y, obj_shakeobj_ch1);
    shakeobj.target = id;
    
    with (shakeobj)
        event_user(0);
}
