.localvar 2 arguments

:[0]
b [2]

> gml_Script_ossafe_game_end (locals=0, argc=0)
:[1]
call.i gml_Script_game_restart_true(argc=0)
popz.v
exit.i

:[2]
push.i [function]gml_Script_ossafe_game_end
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_game_end
popz.v

:[end]