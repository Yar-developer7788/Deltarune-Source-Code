function ossafe_file_text_close_ch1(arg0)
{
    var is_valid = true;
    
    if (!global.is_console)
    {
        file_text_close(arg0);
    }
    else
    {
        var handle = arg0;
        
        if (ds_map_find_value(handle, "is_write"))
            ds_map_set(global.savedata, ds_map_find_value(handle, "filename"), ds_map_find_value(handle, "data"));
        
        ds_map_destroy(handle);
    }
    
    return is_valid;
}
