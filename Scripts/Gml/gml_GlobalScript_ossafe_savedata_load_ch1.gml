function ossafe_savedata_load_ch1()
{
    if (!global.is_console)
    {
    }
    else
    {
        if (global.savedata_async_id >= 0 || global.savedata_async_load)
            return 0;
        
        global.savedata_buffer = buffer_create(1, buffer_grow, 1);
        var slot_size = 31457280;
        buffer_async_group_begin("Deltarune");
        buffer_async_group_option("savepadindex", 0);
        buffer_async_group_option("showdialog", 0);
        buffer_async_group_option("slottitle", "DELTARUNESaveData");
        buffer_async_group_option("subtitle", "DELTARUNE Save Data");
        buffer_async_group_option("saveslotsize", slot_size);
        buffer_load_async(global.savedata_buffer, "deltarune_ch1.sav", 0, -1);
        global.savedata_async_load = true;
        global.savedata_debuginfo = "load in progress";
        global.savedata_async_id = buffer_async_group_end();
    }
}
