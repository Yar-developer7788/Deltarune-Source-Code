function scr_wincombat_ch1()
{
    global.myfight = 7;
    global.mnfight = -1;
    
    with (obj_battlecontroller_ch1)
        victory = 1;
    
    for (i = 0; i < 3; i += 1)
    {
        if (global.monster[i] == 1 && instance_exists(global.monsterinstance[i]))
        {
            with (global.monsterinstance[i])
                scr_monsterdefeat_ch1();
        }
    }
}
