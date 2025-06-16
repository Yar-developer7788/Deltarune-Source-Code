.localvar 2 arguments

:[0]
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
pushi.e 1
conv.b.v
call.i gml_Script_texture_set_interpolation(argc=1)
popz.v
call.i draw_self(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_texture_set_interpolation(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[end]