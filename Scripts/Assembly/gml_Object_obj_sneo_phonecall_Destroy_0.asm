.localvar 2 arguments

:[0]
pushi.e 1
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode
pushi.e 697
pushenv [2]

:[1]
pushi.e 8
conv.i.v
call.i gml_Script_scr_move_to_rememberxy(argc=1)
popz.v

:[2]
popenv [1]

:[end]