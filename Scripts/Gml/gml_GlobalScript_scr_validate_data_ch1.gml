function scr_validate_data_ch1(arg0)
{
    if (os_type == os_switch)
        return true;
    
    var data = arg0;
    var num_lines = 0;
    var lines;
    
    while (string_byte_length(data) > 0)
    {
        var newline_pos = string_pos("\n", data);
        var line;
        
        if (newline_pos > 0)
        {
            var nextline_pos = newline_pos + 1;
            
            if (newline_pos > 1 && string_char_at(data, newline_pos - 1) == "\r")
                newline_pos--;
            
            if (newline_pos > 1)
                line = substr(data, 1, newline_pos - 1);
            else
                line = "";
            
            if (nextline_pos <= strlen(data))
                data = substr(data, nextline_pos);
            else
                data = "";
        }
        else
        {
            line = data;
            data = "";
        }
        
        lines[num_lines++] = line;
    }
    
    myfileid = ds_map_create();
    ds_map_set(myfileid, "is_write", false);
    ds_map_set(myfileid, "text", lines);
    ds_map_set(myfileid, "num_lines", num_lines);
    ds_map_set(myfileid, "line", 0);
    ds_map_set(myfileid, "line_read", false);
    
    if (ossafe_file_text_read_string(myfileid) != global.truename)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.othername))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    var is_valid = true;
    
    for (var i = 0; i < 3; i++)
    {
        var char_test = ossafe_file_text_read_real(myfileid);
        
        if (char_test != global.char[i])
        {
            is_valid = false;
            break;
        }
        else
        {
            ossafe_file_text_readln(myfileid);
        }
    }
    
    if (!is_valid)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.gold)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.xp)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.lv)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.inv)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.invc)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.darkzone)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.hp))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.maxhp))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.at))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.df))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.mag))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.guts))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.charweapon))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.chararmor1))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.chararmor2))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.weaponstyle))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    is_valid = true;
    
    for (var i = 0; i < 4; i += 1)
    {
        for (q = 0; q < 4; q += 1)
        {
            if (ossafe_file_text_read_real(myfileid) != global.itemat[i][q])
            {
                is_valid = false;
                break;
            }
            else
            {
                ossafe_file_text_readln(myfileid);
            }
            
            if (ossafe_file_text_read_real(myfileid) != global.itemdf[i][q])
            {
                is_valid = false;
                break;
            }
            else
            {
                ossafe_file_text_readln(myfileid);
            }
            
            if (ossafe_file_text_read_real(myfileid) != global.itemmag[i][q])
            {
                is_valid = false;
                break;
            }
            else
            {
                ossafe_file_text_readln(myfileid);
            }
            
            if (ossafe_file_text_read_real(myfileid) != global.itembolts[i][q])
            {
                is_valid = false;
                break;
            }
            else
            {
                ossafe_file_text_readln(myfileid);
            }
            
            if (ossafe_file_text_read_real(myfileid) != global.itemgrazeamt[i][q])
            {
                is_valid = false;
                break;
            }
            else
            {
                ossafe_file_text_readln(myfileid);
            }
            
            if (ossafe_file_text_read_real(myfileid) != global.itemgrazesize[i][q])
            {
                is_valid = false;
                break;
            }
            else
            {
                ossafe_file_text_readln(myfileid);
            }
            
            if (ossafe_file_text_read_real(myfileid) != global.itemboltspeed[i][q])
            {
                is_valid = false;
                break;
            }
            else
            {
                ossafe_file_text_readln(myfileid);
            }
            
            if (ossafe_file_text_read_real(myfileid) != global.itemspecial[i][q])
            {
                is_valid = false;
                break;
            }
            else
            {
                ossafe_file_text_readln(myfileid);
            }
        }
        
        for (j = 0; j < 12; j += 1)
        {
            if (ossafe_file_text_read_real(myfileid) != global.spell[i][j])
            {
                is_valid = false;
                break;
            }
            else
            {
                ossafe_file_text_readln(myfileid);
            }
        }
    }
    
    if (!is_valid)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.boltspeed)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.grazeamt)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.grazesize)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.item))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.keyitem))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.weapon))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.armor))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.tension)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.maxtension)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.lweapon)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.larmor)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.lxp)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.llv)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.lgold)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.lhp)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.lmaxhp)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.lat)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.ldf)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.lwstrength)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.ladef)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.litem))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.phone))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (!scr_validate_list(myfileid, global.flag))
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    if (ossafe_file_text_read_real(myfileid) != global.plot)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    var test_room = ossafe_file_text_read_real(myfileid);
    
    if (test_room != global.currentroom)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    var test_time = ossafe_file_text_read_real(myfileid);
    
    if (test_time != global.lastsavedtime)
    {
        ds_map_destroy(myfileid);
        return false;
    }
    else
    {
        ossafe_file_text_readln(myfileid);
    }
    
    ds_map_destroy(myfileid);
    return true;
}
