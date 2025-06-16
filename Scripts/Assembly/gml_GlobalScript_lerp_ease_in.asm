.localvar 2 arguments

:[0]
b [3]

> gml_Script_lerp_ease_in (locals=0, argc=4)
:[1]
push.v arg.argument3
push.v arg.argument2
call.i gml_Script_scr_ease_in(argc=2)
push.v arg.argument1
push.v arg.argument0
call.i lerp(argc=3)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_lerp_ease_in
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.lerp_ease_in
popz.v

:[end]