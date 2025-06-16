.localvar 2 arguments

:[0]
b [2]

> gml_Script_pal_swap_draw_palette (locals=0, argc=0)
:[1]
pushi.e -15
pushi.e 3
push.v [array]self.argument
pushi.e -15
pushi.e 2
push.v [array]self.argument
pushi.e -15
pushi.e 0
push.v [array]self.argument
call.i sprite_get_height(argc=1)
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e -15
pushi.e 1
push.v [array]self.argument
pushi.e 0
conv.i.v
pushi.e -15
pushi.e 0
push.v [array]self.argument
call.i draw_sprite_part(argc=8)
popz.v
exit.i

:[2]
push.i [function]gml_Script_pal_swap_draw_palette
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.pal_swap_draw_palette
popz.v

:[end]