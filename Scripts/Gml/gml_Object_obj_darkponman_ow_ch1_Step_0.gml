rot += rotspeed;
xx = lengthdir_x(eyer, rot) + offx;
yy = lengthdir_y(eyer, rot) + offy;

if (boss == 1)
{
    if (instance_exists(obj_mainchara_ch1))
    {
        obj_mainchara_ch1.battlemode = 0;
        
        with (obj_darkponman_ow_ch1)
        {
            if (obj_mainchara_ch1.x > (x - xrange) && obj_mainchara_ch1.x < (x + xrange) && obj_mainchara_ch1.y > (y - yrange) && obj_mainchara_ch1.y < (y + yrange))
                obj_mainchara_ch1.battlemode = 1;
        }
    }
}

if (con == 0)
{
    if (made == 0)
    {
        for (i = 0; i < bmax; i += 1)
        {
            xa = lengthdir_x(eyer * (2 + (i * 2)), rot - (i * 2)) + offx;
            ya = lengthdir_y(eyer * (2 + (i * 2)), rot - (i * 2)) + offy;
            fb[i] = instance_create_ch1(x + xa, y + ya, obj_overworldbulletparent_ch1);
            fb[i].sprite_index = spr_diamondbullet_ch1;
            fb[i].active = 1;
            fb[i].target = 3;
            fb[i].damage = 16;
            fb[i].image_angle = rot - i;
            fb[i].depth = 200;
            fb[i].alarm[0] = -10;
            fb[i].image_alpha = 0;
            fb[i].image_xscale = 0.7;
        }
        
        made = 1;
    }
    
    if (eyer <= 10)
    {
        eyer += 1;
    }
    else
    {
        con = 1;
        image_speed = 0.1;
    }
}

if (made == 1)
{
    if (rotspeed > 0)
        siner += 1;
    
    if (rotspeed < 0)
        siner -= 1;
    
    for (i = 0; i < bmax; i += 1)
    {
        if (instance_exists(fb[i]))
        {
            xa = lengthdir_x(eyer * (2 + (i * 2)), rot - (sin(siner / 10) * (i * 2))) + offx;
            ya = lengthdir_y(eyer * (2 + (i * 2)), rot - (sin(siner / 10) * (i * 2))) + offy;
            fb[i].x = x + xa;
            fb[i].y = y + ya;
            fb[i].image_alpha = 0.8 + (sin(((i * 4) + siner) / 5) * 0.2);
            
            if (con < 1)
                fb[i].image_alpha = 0 + (eyer / 10);
            
            fb[i].image_angle = rot - (sin(siner / 10) * (i * 4));
        }
    }
}
