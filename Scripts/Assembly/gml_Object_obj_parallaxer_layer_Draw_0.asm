.localvar 2 arguments

:[0]
push.v self.shadoweffect
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_tiled(argc=4)
popz.v

:[2]
push.v self.shadoweffect
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_tiled_ext(argc=8)
popz.v
pushi.e 1
conv.i.v
push.i 8421504
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_tiled_ext(argc=8)
popz.v
push.v self.sprite_index
pushi.e 3137
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.d 0.5
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.d
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.image_index
pushi.e 3138
conv.i.v
call.i draw_sprite_tiled_ext(argc=8)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v

:[5]
push.v self.shadoweffect
pushi.e 2
cmp.i.v EQ
bf [end]

:[6]
push.i 16777215
pop.v.i self.image_blend
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_tiled(argc=4)
popz.v
push.i 8421504
pop.v.i self.image_blend
pushi.e 1
conv.i.v
push.i 4210752
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_tiled_ext(argc=8)
popz.v

:[end]