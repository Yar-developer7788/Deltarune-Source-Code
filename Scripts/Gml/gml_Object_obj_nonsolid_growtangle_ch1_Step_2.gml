if (instance_exists(obj_heart_ch1))
{
    lborder = x - (sprite_width / 2);
    rborder = x + (sprite_width / 2);
    uborder = y - (sprite_height / 2);
    dborder = y + (sprite_height / 2);
    
    if (obj_heart_ch1.x < (lborder + 5))
        obj_heart_ch1.x = lborder + 5;
    
    if (obj_heart_ch1.x > (rborder - 22))
        obj_heart_ch1.x = rborder - 22;
    
    if (obj_heart_ch1.y < (uborder + 5))
        obj_heart_ch1.y = uborder + 5;
    
    if (obj_heart_ch1.y > (dborder - 22))
        obj_heart_ch1.y = dborder - 22;
}
