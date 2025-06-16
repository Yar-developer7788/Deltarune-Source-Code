.localvar 2 arguments

:[0]
b [2]

> gml_Script_draw_background_ext (locals=0, argc=8)
:[1]
push.v arg.argument7
push.v arg.argument6
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
pushi.e 0
conv.i.v
push.v arg.argument0
call.i draw_sprite_ext(argc=9)
popz.v
exit.i

:[2]
push.i [function]gml_Script_draw_background_ext
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.draw_background_ext
popz.v

:[end]