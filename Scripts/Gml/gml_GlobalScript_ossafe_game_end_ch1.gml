function ossafe_game_end_ch1()
{
    if (!global.is_console)
        game_end();
    else
        game_restart_true();
}
