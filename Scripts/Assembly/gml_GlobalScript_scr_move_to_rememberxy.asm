.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_move_to_rememberxy (locals=0, argc=1)
:[1]
push.v arg.argument0
push.v self.___myremembery
push.v self.___myrememberx
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_move_to_rememberxy
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_move_to_rememberxy
popz.v

:[end]