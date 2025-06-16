.localvar 2 arguments

:[0]
b [2]

> gml_Script_draw_background (locals=0, argc=3)
:[1]
push.v arg.argument2
push.v arg.argument1
pushi.e 0
conv.i.v
push.v arg.argument0
call.i draw_sprite(argc=4)
popz.v
exit.i

:[2]
push.i [function]gml_Script_draw_background
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.draw_background
popz.v

:[end]