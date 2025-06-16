.localvar 2 arguments
.localvar 25209 z 12127
.localvar 7017 a 12128

:[0]
push.v self.shake
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.shake
push.d 0.5
sub.d.v
pop.v.v self.shake

:[2]
push.v self.shake
call.i random(argc=1)
pushi.e 2
mul.i.v
push.v self.shake
sub.v.v
pop.v.v local.z
push.v self.shake2
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v self.shake2
push.d 0.5
sub.d.v
pop.v.v self.shake2

:[4]
push.v self.shake2
call.i random(argc=1)
pushi.e 2
mul.i.v
push.v self.shake2
sub.v.v
pop.v.v local.a
push.v self.sprite_index
pushi.e 240
cmp.i.v EQ
bf [6]

:[5]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.a
add.v.v
push.v self.x
pushloc.v local.a
add.v.v
pushi.e 0
conv.i.v
pushi.e 240
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [7]

:[6]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.a
add.v.v
push.v self.x
pushloc.v local.a
add.v.v
pushi.e 1
conv.i.v
pushi.e 232
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.z
add.v.v
push.v self.x
pushloc.v local.z
add.v.v
pushi.e 0
conv.i.v
pushi.e 232
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
push.v self.fsiner
push.e 1
add.i.v
pop.v.v self.fsiner
push.v self.flash
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.fsiner
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
neg.v
push.d 0.4
mul.d.v
push.d 0.6
add.d.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[9]
push.v self.shake
pushi.e 4
cmp.i.v GT
bf [end]

:[10]
pushi.e 1
conv.i.v
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.z
add.v.v
push.v self.x
pushloc.v local.z
add.v.v
pushi.e 0
conv.i.v
pushi.e 232
conv.i.v
call.i gml_Script_draw_sprite_ext_flash(argc=9)
popz.v

:[end]