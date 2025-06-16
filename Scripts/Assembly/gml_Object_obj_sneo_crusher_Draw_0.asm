.localvar 2 arguments
.localvar 14723 blend_color 12560
.localvar 25590 emailColor 12561
.localvar 25591 bombflash 12562
.localvar 25592 bomb_color 12563
.localvar 6692 s 12564
.localvar 25593 destroycrop 12565
.localvar 25594 bottomcrop 12566
.localvar 6706 d 12567

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
bf [32]

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
push.v self.crushedObj
pushi.e 0
cmp.i.v GT
bf [22]

:[7]
push.v self.crushedObj
pushi.e 1
cmp.i.v EQ
bf [14]

:[8]
push.v self.active
conv.v.b
bf [10]

:[9]
pushloc.v local.blend_color
b [11]

:[10]
push.i 16777215
conv.i.v

:[11]
pop.v.v local.emailColor
push.v self.hp
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
pushi.e 1
conv.i.v
pushloc.v local.emailColor
pushi.e 0
conv.i.v
push.v self.hp
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1844
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
b [21]

:[14]
push.v self.crushtimer
pushi.e 10
cmp.i.v GT
bf [16]

:[15]
push.v self.crushtimer
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
pop.v.b local.bombflash
pushloc.v local.bombflash
conv.v.b
bf [19]

:[18]
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

:[19]
push.d 0.25
push.v self.flashsiner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.25
mul.d.v
add.v.d
push.i 4235519
conv.i.v
pushi.e 255
conv.i.v
call.i merge_color(argc=3)
pop.v.v local.bomb_color
pushi.e 1
conv.i.v
pushloc.v local.bomb_color
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2004
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushloc.v local.bombflash
conv.v.b
bf [21]

:[20]
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

:[21]
b [23]

:[22]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1844
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[23]
push.v self.crushtimer
pushi.e 10
cmp.i.v GTE
bf [26]

:[24]
push.v self.offset
push.v self.offsetCap
cmp.v.v EQ
bf [26]

:[25]
push.v self.offset
pushi.e 0
cmp.i.v GT
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.v self.offset
push.e 1
add.i.v
pop.v.v self.offset
b [31]

:[29]
push.v self.offset
push.v self.offsetCap
cmp.v.v LT
bf [31]

:[30]
push.v self.offsetCap
pop.v.v self.offset

:[31]
push.i 16777215
pop.v.i self.drawcolor

:[32]
push.v self.offset
push.v self.offsetCap
cmp.v.v LTE
bf [37]

:[33]
push.v self.offset
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
pushloc.v local.blend_color
pop.v.v self.drawcolor

:[35]
push.v self.animtimer
push.e 1
add.i.v
pop.v.v self.animtimer
push.v self.animtimer
pushi.e 1
cmp.i.v GT
bf [37]

:[36]
pushi.e 0
pop.v.i self.animtimer
push.v self.subindex
pushi.e 1
add.i.v
pushi.e 4
mod.i.v
pop.v.v self.subindex

:[37]
push.v self.image_xscale
pop.v.v local.s
push.v self.destroying
pushi.e 60
sub.i.v
pop.v.v local.destroycrop
push.v self.y
pushi.e 326
sub.i.v
pop.v.v local.bottomcrop
pushloc.v local.destroycrop
pushi.e 0
cmp.i.v LTE
bf [40]

:[38]
push.v self.difficulty
pushi.e 3
cmp.i.v NEQ
bf [40]

:[39]
push.v self.difficulty
pushi.e 5
cmp.i.v NEQ
b [41]

:[40]
push.e 0

:[41]
bt [50]

:[42]
pushloc.v local.destroycrop
pushi.e -45
cmp.i.v LTE
bf [44]

:[43]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bt [50]

:[46]
pushloc.v local.destroycrop
pushi.e -45
cmp.i.v LTE
bf [48]

:[47]
push.v self.difficulty
pushi.e 5
cmp.i.v EQ
b [49]

:[48]
push.e 0

:[49]
b [51]

:[50]
push.e 1

:[51]
bf [61]

:[52]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 16
conv.i.v
pushloc.v local.s
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
bf [54]

:[53]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushloc.v local.s
neg.v
pushloc.v local.s
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

:[54]
push.v self.flash
conv.v.b
bf [56]

:[55]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_blend
pushi.e 1
conv.b.v
call.i gml_Script_d3d_set_fog(argc=4)
popz.v

:[56]
pushi.e 1
conv.i.v
push.v self.drawcolor
pushi.e 0
conv.i.v
pushloc.v local.s
pushloc.v local.s
push.v self.y
push.v self.offset
sub.v.v
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
bf [58]

:[57]
pushi.e 1
conv.i.v
push.v self.drawcolor
pushi.e 0
conv.i.v
pushloc.v local.s
pushloc.v local.s
push.v self.y
push.v self.offset
add.v.v
push.v self.x
push.v self.subindex
pushi.e 2016
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[58]
push.v self.flash
conv.v.b
bf [60]

:[59]
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

:[60]
b [64]

:[61]
pushloc.v local.destroycrop
pushi.e 36
cmp.i.v LT
bf [63]

:[62]
pushi.e 1
conv.i.v
push.v self.image_blend
pushloc.v local.s
pushloc.v local.s
push.v self.y
push.v self.offset
sub.v.v
push.v self.x
pushi.e 16
pushloc.v local.destroycrop
pushi.e 2
conv.i.d
div.d.v
sub.v.i
pushi.e 32
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2020
conv.i.v
call.i gml_Script_scr_draw_sprite_crop_ext(argc=12)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushloc.v local.s
neg.v
pushloc.v local.s
push.v self.y
push.v self.offset
add.v.v
push.v self.x
pushi.e 16
pushloc.v local.destroycrop
pushi.e 2
conv.i.d
div.d.v
sub.v.i
pushi.e 32
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2020
conv.i.v
call.i gml_Script_scr_draw_sprite_crop_ext(argc=12)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushloc.v local.s
pushloc.v local.s
push.v self.y
push.v self.offset
sub.v.v
push.v self.x
pushi.e 18
pushloc.v local.destroycrop
pushi.e 2
conv.i.d
div.d.v
sub.v.i
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2015
conv.i.v
call.i gml_Script_scr_draw_sprite_crop_ext(argc=12)
popz.v
pushi.e 1
conv.i.v
push.v self.image_blend
pushloc.v local.s
pushloc.v local.s
push.v self.y
push.v self.offset
sub.v.v
push.v self.x
pushi.e 18
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local.destroycrop
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2016
conv.i.v
call.i gml_Script_scr_draw_sprite_crop_ext(argc=12)
popz.v

:[63]
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
pushloc.v local.destroycrop
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
pushi.e 16
conv.i.v
pushloc.v local.s
push.v self.y
pushi.e 32
sub.i.v
pushloc.v local.destroycrop
sub.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2019
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[64]
push.v self.destroying
pushi.e 0
cmp.i.v GT
bf [67]

:[65]
push.v self.difficulty
pushi.e 3
cmp.i.v NEQ
bf [67]

:[66]
push.v self.difficulty
pushi.e 5
cmp.i.v NEQ
b [68]

:[67]
push.e 0

:[68]
bt [79]

:[69]
push.v self.destroying
pushi.e 0
cmp.i.v GT
bf [72]

:[70]
push.v self.destroying
pushi.e 30
cmp.i.v LT
bf [72]

:[71]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
b [73]

:[72]
push.e 0

:[73]
bt [79]

:[74]
push.v self.destroying
pushi.e 0
cmp.i.v GT
bf [77]

:[75]
push.v self.destroying
pushi.e 30
cmp.i.v LT
bf [77]

:[76]
push.v self.difficulty
pushi.e 5
cmp.i.v EQ
b [78]

:[77]
push.e 0

:[78]
b [80]

:[79]
push.e 1

:[80]
bf [end]

:[81]
pushi.e 459
conv.i.v
push.v self.y
push.v self.destroying
add.v.v
push.v self.x
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.d
pushi.e 2071
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
sub.i.v
pushloc.v local.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.y
push.v self.destroying
add.v.v
call.i gml_Script_cameray(argc=0)
pushi.e 280
add.i.v
cmp.v.v GT
bf [83]

:[82]
push.v 631.depth
pushi.e 100
add.i.v
pushloc.v local.d
pushi.e -9
pop.v.v [stacktop]self.depth

:[83]
pushi.e 180
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 459
conv.i.v
push.v self.y
push.v self.destroying
sub.v.v
push.v self.x
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.d
pushi.e 2071
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
sub.i.v
pushloc.v local.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.y
push.v self.destroying
sub.v.v
call.i gml_Script_cameray(argc=0)
pushi.e 280
add.i.v
cmp.v.v GT
bf [85]

:[84]
push.v 631.depth
pushi.e 100
add.i.v
pushloc.v local.d
pushi.e -9
pop.v.v [stacktop]self.depth

:[85]
push.v self.crushedObj
pushi.e 2
cmp.i.v EQ
bf [end]

:[86]
pushi.e 459
conv.i.v
push.v self.y
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
add.v.v
push.v self.x
push.v self.destroying
pushi.e 2
mul.i.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.d
pushi.e 2071
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
sub.i.v
pushloc.v local.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e -90
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 459
conv.i.v
push.v self.y
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
add.v.v
push.v self.x
push.v self.destroying
pushi.e 3
mul.i.v
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.d
pushi.e 2071
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
sub.i.v
pushloc.v local.d
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 90
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.image_angle

:[end]