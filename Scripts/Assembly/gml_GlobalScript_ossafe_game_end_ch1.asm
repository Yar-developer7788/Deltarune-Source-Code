.localvar 2 arguments

:[0]
b [5]

> gml_Script_ossafe_game_end_ch1 (locals=0, argc=0)
:[1]
pushglb.v global.is_console
conv.v.b
not.b
bf [3]

:[2]
call.i game_end(argc=0)
popz.v
b [4]

:[3]
call.i gml_Script_game_restart_true(argc=0)
popz.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_ossafe_game_end_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_game_end_ch1
popz.v

:[end]