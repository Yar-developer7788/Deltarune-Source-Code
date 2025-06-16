.localvar 2 arguments

:[0]
b [3]

> gml_Script_background_get_width_ch1 (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i sprite_get_width(argc=1)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_background_get_width_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.background_get_width_ch1
popz.v

:[end]