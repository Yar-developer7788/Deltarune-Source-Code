.localvar 2 arguments
.localvar 23235 growt 10380
.localvar 23236 gridth 10381

:[0]
push.v self.infection
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_index
pushi.e 1
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
conv.i.v
push.v self.poisoncolor
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.targety
push.v self.targetx
push.v self.targetimage
push.v self.targetsprite
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
push.v self.infection
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.targetx
pop.v.v self.x
push.v self.targety
pop.v.v self.y

:[7]
call.i draw_self(argc=0)
popz.v
push.v self.flash
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.v self.poisoncolor
call.i merge_color(argc=3)
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v
push.v self.flash
pushi.e 5
conv.i.d
div.d.v
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
push.v self.flash
push.e 1
sub.i.v
pop.v.v self.flash

:[9]
push.v 872.x
pop.v.v local.growt
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 10
add.i.v
pop.v.v local.gridth
push.v self.direction
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.v self.x
pushloc.v local.growt
pushloc.v local.gridth
add.v.v
cmp.v.v GT
b [12]

:[11]
push.e 0

:[12]
bt [17]

:[13]
push.v self.direction
pushi.e 180
cmp.i.v EQ
bf [15]

:[14]
push.v self.x
pushloc.v local.growt
pushloc.v local.gridth
sub.v.v
cmp.v.v LT
b [16]

:[15]
push.e 0

:[16]
b [18]

:[17]
push.e 1

:[18]
bf [22]

:[19]
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
b [end]

:[22]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [end]

:[23]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[end]