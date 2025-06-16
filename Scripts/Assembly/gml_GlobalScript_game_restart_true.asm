.localvar 2 arguments

:[0]
b [2]

> gml_Script_game_restart_true (locals=0, argc=0)
:[1]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i room_goto(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_game_restart_true
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.game_restart_true
popz.v

:[end]