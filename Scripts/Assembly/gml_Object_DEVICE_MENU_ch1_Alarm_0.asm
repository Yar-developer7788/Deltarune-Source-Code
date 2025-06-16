.localvar 2 arguments

:[0]
pushglb.v global.is_console
conv.v.b
bf [2]

:[1]
call.i gml_Script_ossafe_game_end(argc=0)
popz.v
b [end]

:[2]
call.i gml_Script_game_restart_true_ch1(argc=0)
popz.v

:[end]