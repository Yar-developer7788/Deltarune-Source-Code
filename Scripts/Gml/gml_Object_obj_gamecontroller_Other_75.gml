switch (ds_map_find_value(async_load, "event_type"))
{
    case "gamepad discovered":
        var pad = ds_map_find_value(async_load, "pad_index");
        
        if (gamepad_is_connected(pad))
        {
            gamepad_active = 1;
            gamepad_id = pad;
            gamepad_type = (gamepad_get_description(gamepad_id) == "Sony DualShock 4") ? 1 : 0;
        }
        
        break;
    
    case "gamepad lost":
        gamepad_active = 0;
        
        if (os_type == os_switch)
        {
            if (switch_controller_support_show() == 0)
            {
                gamepad_active = 1;
                gamepad_id = switch_controller_support_get_selected_id();
            }
        }
        
        break;
}
