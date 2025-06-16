.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.blend_timer
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
push.v self.blend_timer
push.d 0.25
add.d.v
pop.v.v self.blend_timer

:[2]
push.v self.blend_timer
pushi.e 0
cmp.i.v GT
bf [end]

:[3]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.blend_timer
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
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

:[end]