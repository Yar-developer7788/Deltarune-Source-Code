.localvar 2 arguments
.localvar 23997 _inbounds 11009
.localvar 6229 offset 11010
.localvar 23998 _changeDist 11011
.localvar 23999 eyeframe 11012

:[0]
push.v self.init
pushi.e 2
cmp.i.v GTE
bf [47]

:[1]
push.v self.x
push.v 872.x
pushi.e 50
sub.i.v
cmp.v.v GT
bf [5]

:[2]
push.v self.x
push.v 872.y
pushi.e 50
add.i.v
cmp.v.v LT
bf [5]

:[3]
push.v self.y
push.v 872.y
pushi.e 50
sub.i.v
cmp.v.v GT
bf [5]

:[4]
push.v self.y
push.v 872.y
pushi.e 50
add.i.v
cmp.v.v LT
b [6]

:[5]
push.e 0

:[6]
pop.v.b local._inbounds
pushi.e 0
pop.v.i local.offset
pushi.e -1
pushi.e 0
push.v [array]self.alarm
conv.v.b
bf [8]

:[7]
push.v self.speed
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [16]

:[10]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 4
mod.i.v
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i local.offset
b [14]

:[12]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 4
mod.i.v
pushi.e 0
cmp.i.v GT
bf [14]

:[13]
pushi.e 2
pop.v.i local.offset

:[14]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 4
cmp.i.v LT
bf [16]

:[15]
push.v local.offset
pushi.e -1
mul.i.v
pop.v.v local.offset

:[16]
pushloc.v local._inbounds
conv.v.b
not.b
bf [18]

:[17]
pushi.e 26
conv.i.v
pushi.e 26
conv.i.v
call.i gml_Script_scr_draw_in_box_ext_begin(argc=2)
popz.v

:[18]
push.v self.big
conv.v.b
bf [20]

:[19]
push.v self.sprite_index
pushi.e 3349
cmp.i.v NEQ
b [21]

:[20]
push.e 0

:[21]
bf [41]

:[22]
pushi.e 60
pop.v.i local._changeDist
push.v self.direction
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.v self.x
push.v 872.x
pushloc.v local._changeDist
add.v.v
cmp.v.v GT
b [25]

:[24]
push.e 0

:[25]
bt [38]

:[26]
push.v self.direction
pushi.e 90
cmp.i.v EQ
bf [28]

:[27]
push.v self.y
push.v 872.y
pushloc.v local._changeDist
sub.v.v
cmp.v.v LT
b [29]

:[28]
push.e 0

:[29]
bt [38]

:[30]
push.v self.direction
pushi.e 180
cmp.i.v EQ
bf [32]

:[31]
push.v self.x
push.v 872.x
pushloc.v local._changeDist
sub.v.v
cmp.v.v LT
b [33]

:[32]
push.e 0

:[33]
bt [38]

:[34]
push.v self.direction
pushi.e 270
cmp.i.v EQ
bf [36]

:[35]
push.v self.y
push.v 872.y
pushloc.v local._changeDist
add.v.v
cmp.v.v GT
b [37]

:[36]
push.e 0

:[37]
b [39]

:[38]
push.e 1

:[39]
bf [41]

:[40]
pushi.e 3349
pop.v.i self.sprite_index

:[41]
push.v self.direction
pushi.e 180
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushloc.v local.offset
push.v self.direction
pushi.e 135
sub.i.v
call.i sign(argc=1)
mul.v.v
add.v.v
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
b [44]

:[43]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushloc.v local.offset
push.v self.direction
pushi.e 135
sub.i.v
call.i sign(argc=1)
mul.v.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[44]
pushloc.v local._inbounds
conv.v.b
not.b
bf [46]

:[45]
call.i gml_Script_scr_draw_in_box_end(argc=0)
popz.v

:[46]
b [end]

:[47]
pushi.e 0
pop.v.i local.eyeframe
push.v self.eyetimer
pushi.e 18
cmp.i.v LT
bf [54]

:[48]
push.v self.eyetimer
pushi.e 0
cmp.i.v GTE
bf [50]

:[49]
push.v local.eyeframe
push.e 1
add.i.v
pop.v.v local.eyeframe

:[50]
push.v self.eyetimer
pushi.e 2
cmp.i.v GTE
bf [52]

:[51]
push.v local.eyeframe
push.e 1
add.i.v
pop.v.v local.eyeframe

:[52]
push.v self.eyetimer
pushi.e 16
cmp.i.v GTE
bf [54]

:[53]
push.v local.eyeframe
push.e 1
add.i.v
pop.v.v local.eyeframe

:[54]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.direction
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushloc.v local.eyeframe
pushi.e 1755
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.eyetimer
push.e 1
add.i.v
pop.v.v self.eyetimer
push.v self.eyetimer
pushi.e 20
cmp.i.v GTE
bf [end]

:[55]
pushi.e 1
pop.v.i self.active
pushi.e 2
pop.v.i self.init
push.v self.initialspeed
pop.v.v self.speed

:[end]