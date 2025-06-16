.localvar 2 arguments
.localvar 14723 blend_color 6495
.localvar 6692 s 6496

:[0]
push.v self.flashsiner
push.e 1
add.i.v
pop.v.v self.flashsiner
push.d 0.25
push.v self.flashsiner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.25
mul.d.v
add.v.d
push.i 16776960
conv.i.v
push.i 15245824
conv.i.v
call.i merge_color(argc=3)
pop.v.v local.blend_color
push.v self.destroying
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.offset
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [15]

:[4]
push.v self.offset
push.v self.offsetCap
cmp.v.v GT
bf [6]

:[5]
push.v self.offset
pushi.e 20
sub.i.v
pop.v.v self.offset

:[6]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1844
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.crushtimer
pushi.e 10
cmp.i.v GTE
bf [9]

:[7]
push.v self.offset
push.v self.offsetCap
cmp.v.v EQ
bf [9]

:[8]
push.v self.offset
pushi.e 0
cmp.i.v GT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.offset
push.e 1
add.i.v
pop.v.v self.offset
b [14]

:[12]
push.v self.offset
push.v self.offsetCap
cmp.v.v LT
bf [14]

:[13]
push.v self.offsetCap
pop.v.v self.offset

:[14]
push.i 16777215
pop.v.i self.drawcolor

:[15]
push.v self.offset
push.v self.offsetCap
cmp.v.v LTE
bf [20]

:[16]
push.v self.offset
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushloc.v local.blend_color
pop.v.v self.drawcolor

:[18]
push.v self.animtimer
push.e 1
add.i.v
pop.v.v self.animtimer
push.v self.animtimer
pushi.e 1
cmp.i.v GT
bf [20]

:[19]
pushi.e 0
pop.v.i self.animtimer
push.v self.subindex
pushi.e 1
add.i.v
pushi.e 4
mod.i.v
pop.v.v self.subindex

:[20]
push.v self.image_xscale
pop.v.v local.s
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 16
conv.i.v
pushloc.v local.s
pushi.e -1
mul.i.v
push.v self.y
pushi.e 32
sub.i.v
push.v self.offset
sub.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2019
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 16
conv.i.v
pushi.e 0
conv.i.v
pushi.e 326
push.v self.y
pushi.e 32
add.i.v
push.v self.offset
add.v.v
sub.v.i
pushi.e 16
conv.i.d
div.d.v
call.i clamp(argc=3)
pushloc.v local.s
pushi.e 326
conv.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2019
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushloc.v local.s
pushloc.v local.s
pushi.e -1
mul.i.v
push.v self.y
push.v self.offset
sub.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2020
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
push.v self.offset
add.v.v
pushi.e 310
cmp.i.v LT
bf [22]

:[21]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushloc.v local.s
neg.v
pushloc.v local.s
pushi.e -1
mul.i.v
push.v self.y
push.v self.offset
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2020
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[22]
push.v self.flash
conv.v.b
bf [24]

:[23]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_blend
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[24]
pushi.e 1
conv.i.v
push.v self.drawcolor
pushi.e 0
conv.i.v
pushloc.v local.s
pushloc.v local.s
pushi.e -1
mul.i.v
push.v self.y
push.v self.offset
sub.v.v
pushi.e 11
add.i.v
push.v self.x
push.v self.subindex
pushi.e 2015
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
push.v self.offset
add.v.v
pushi.e 326
cmp.i.v LT
bf [26]

:[25]
pushi.e 1
conv.i.v
push.v self.drawcolor
pushi.e 0
conv.i.v
pushloc.v local.s
pushloc.v local.s
pushi.e -1
mul.i.v
push.v self.y
push.v self.offset
add.v.v
pushi.e 11
add.i.v
push.v self.x
push.v self.subindex
pushi.e 2016
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[26]
push.v self.flash
conv.v.b
bf [end]

:[27]
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
pushi.e 0
pop.v.i self.flash

:[end]