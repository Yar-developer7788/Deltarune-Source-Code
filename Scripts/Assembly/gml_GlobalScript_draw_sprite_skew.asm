.localvar 2 arguments

:[0]
b [2]

> gml_Script_draw_sprite_skew (locals=0, argc=6)
:[1]
push.v arg.argument5
push.v arg.argument4
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_draw_sprite_skew_ext(argc=11)
popz.v
exit.i

:[2]
push.i [function]gml_Script_draw_sprite_skew
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.draw_sprite_skew
popz.v

:[end]