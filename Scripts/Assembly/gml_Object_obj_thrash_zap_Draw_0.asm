.localvar 2 arguments

:[0]
push.v 1086.x
pop.v.v self.x
push.v 1086.y
pop.v.v self.y
pushi.e 1
conv.b.v
call.i gml_Script_texture_set_interpolation(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i random(argc=1)
push.v self.image_blend
push.v self.dir
push.v self.image_yscale
push.v self.dis
pushi.e 300
conv.i.d
div.d.v
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 2094
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i random(argc=1)
push.v self.tint
push.v self.dir
push.v self.image_yscale
pushi.e 2
mul.i.v
push.v self.dis
pushi.e 300
conv.i.d
div.d.v
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 2
mul.i.v
pushi.e 2094
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_texture_set_interpolation(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v

:[end]