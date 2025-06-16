.localvar 2 arguments
.localvar 14922 x_offset 14795
.localvar 14921 y_offset 14796

:[0]
pushi.e -5
pop.v.i local.x_offset
pushi.e -5
pop.v.i local.y_offset
pushi.e 777
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [12]

:[1]
push.v 777.drawflip
pushi.e 0
cmp.i.v EQ
bf [6]

:[2]
push.v 777.sprite_index
pushi.e 2153
cmp.i.v EQ
bf [5]

:[3]
push.v 777.image_index
pushi.e 4
cmp.i.v EQ
bf [5]

:[4]
pushi.e 22
pop.v.i local.x_offset
pushi.e -5
pop.v.i local.y_offset

:[5]
b [9]

:[6]
push.v 777.sprite_index
pushi.e 2153
cmp.i.v EQ
bf [9]

:[7]
push.v 777.image_index
pushi.e 4
cmp.i.v EQ
bf [9]

:[8]
pushi.e -22
pop.v.i local.x_offset
pushi.e -5
pop.v.i local.y_offset

:[9]
push.v 777.sprite_index
pushi.e 2153
cmp.i.v EQ
bf [12]

:[10]
push.v 777.image_index
pushi.e 6
cmp.i.v EQ
bf [12]

:[11]
pushi.e -12
pop.v.i local.x_offset
pushi.e 2
pop.v.i local.y_offset

:[12]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.y_offset
add.v.v
push.v self.x
pushloc.v local.x_offset
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]