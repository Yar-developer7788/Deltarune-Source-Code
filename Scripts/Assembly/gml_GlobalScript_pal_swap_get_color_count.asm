.localvar 2 arguments

:[0]
b [3]

> gml_Script_pal_swap_get_color_count (locals=0, argc=0)
:[1]
pushi.e -15
pushi.e 0
push.v [array]self.argument
call.i sprite_get_height(argc=1)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_pal_swap_get_color_count
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.pal_swap_get_color_count
popz.v

:[end]