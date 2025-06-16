.localvar 2 arguments

:[0]
b [2]

> gml_Script_draw_sprite_ext_pivotscale (locals=0, argc=11)
:[1]
push.v arg.argument8
push.v arg.argument7
push.v arg.argument6
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
push.v arg.argument10
push.v arg.argument5
push.v self.image_yscale
sub.v.v
mul.v.v
sub.v.v
push.v arg.argument2
push.v arg.argument9
push.v arg.argument4
push.v self.image_xscale
sub.v.v
mul.v.v
sub.v.v
push.v arg.argument1
push.v arg.argument0
call.i draw_sprite_ext(argc=9)
popz.v
exit.i

:[2]
push.i [function]gml_Script_draw_sprite_ext_pivotscale
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.draw_sprite_ext_pivotscale
popz.v

:[end]