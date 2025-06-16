.localvar 2 arguments

:[0]
b [2]

> gml_Script_draw_sprite_ext_flash (locals=0, argc=9)
:[1]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument7
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v arg.argument8
push.v arg.argument7
push.v arg.argument6
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
exit.i

:[2]
push.i [function]gml_Script_draw_sprite_ext_flash
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.draw_sprite_ext_flash
popz.v

:[end]