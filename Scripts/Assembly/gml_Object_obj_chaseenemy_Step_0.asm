.localvar 2 arguments
.localvar 9750 _c 8218
.localvar 11665 _s 8219

:[0]
push.v self.encounterflag
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.init
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [53]

:[4]
pushi.e -5
push.v self.encounterflag
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
pushi.e -5
push.v self.encounterflag
conv.v.i
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [52]

:[7]
push.v self.frozensprite
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.touchsprite
pop.v.v self.frozensprite

:[9]
pushi.e 857
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.frozennpc
push.v self.frozensprite
push.v self.frozennpc
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 1
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.fresh
call.i instance_destroy(argc=0)
popz.v
push.v self.sprite_index
pushi.e 1716
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1713
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[11]
pushbltn.v builtin.room
pushi.e 127
cmp.i.v EQ
bf [18]

:[12]
push.v self.extflag
push.s "tutViro"@20085
cmp.s.v EQ
bf [14]

:[13]
pushi.e 224
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 72
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y

:[14]
push.v self.extflag
push.s "leftOma"@20084
cmp.s.v EQ
bf [16]

:[15]
pushi.e 246
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 440
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 1631
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[16]
push.v self.extflag
push.s "rightOma"@20083
cmp.s.v EQ
bf [18]

:[17]
pushi.e 606
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 440
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 1631
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[18]
pushbltn.v builtin.room
pushi.e 124
cmp.i.v EQ
bf [21]

:[19]
push.v self.extflag
push.s "tutViro"@20085
cmp.s.v EQ
bf [21]

:[20]
pushi.e 1000
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 588
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y

:[21]
pushbltn.v builtin.room
pushi.e 129
cmp.i.v EQ
bf [25]

:[22]
push.v self.extflag
push.s "viro"@15788
cmp.s.v EQ
bf [24]

:[23]
pushi.e 510
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 196
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y
b [25]

:[24]
pushi.e 600
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 202
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y

:[25]
pushbltn.v builtin.room
pushi.e 132
cmp.i.v EQ
bf [31]

:[26]
push.v self.extflag
push.s "viro"@15788
cmp.s.v EQ
bf [28]

:[27]
pushi.e 426
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 1000
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y
b [31]

:[28]
push.v self.y
pushi.e 300
cmp.i.v LT
bf [30]

:[29]
pushi.e 1390
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 92
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y
b [31]

:[30]
pushi.e 1420
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 694
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y

:[31]
pushbltn.v builtin.room
pushi.e 104
cmp.i.v EQ
bf [33]

:[32]
pushi.e 120
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y

:[33]
pushbltn.v builtin.room
pushi.e 169
cmp.i.v EQ
bf [35]

:[34]
pushi.e 370
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 140
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y

:[35]
pushbltn.v builtin.room
pushi.e 135
cmp.i.v EQ
bf [37]

:[36]
push.v self.encounterflag
pushi.e 566
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 1190
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 622
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y

:[40]
pushbltn.v builtin.room
pushi.e 170
cmp.i.v EQ
bf [42]

:[41]
pushi.e 320
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 600
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 1812
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[42]
pushbltn.v builtin.room
pushi.e 130
cmp.i.v EQ
bf [44]

:[43]
pushi.e 1240
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 64
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 1675
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[44]
pushbltn.v builtin.room
pushi.e 123
cmp.i.v EQ
bf [48]

:[45]
push.v self.x
pushi.e 1330
cmp.i.v GT
bf [47]

:[46]
pushi.e 1644
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 118
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 1675
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
b [48]

:[47]
pushi.e 852
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 118
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 1631
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[48]
pushbltn.v builtin.room
pushi.e 119
cmp.i.v EQ
bf [52]

:[49]
push.v self.x
pushi.e 680
cmp.i.v GT
bf [51]

:[50]
pushi.e 960
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 118
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 1799
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
b [52]

:[51]
pushi.e 416
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 116
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 1713
push.v self.frozennpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[52]
pushi.e 1
pop.v.i self.init

:[53]
call.i gml_Script_scr_depth_alt(argc=0)
popz.v
push.v 82.x
push.v 82.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.targetx
push.v 82.bbox_bottom
push.v self.sprite_height
sub.v.v
push.v self.sprite_index
call.i sprite_get_yoffset(argc=1)
push.v self.image_yscale
mul.v.v
add.v.v
pop.v.v self.targety
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bt [55]

:[54]
pushglb.v global.interact
pushi.e 4
cmp.i.v EQ
b [56]

:[55]
push.e 1

:[56]
bf [58]

:[57]
pushi.e 0
pop.v.i self.frozen

:[58]
pushi.e 200
conv.i.v
call.i gml_Script_scr_outside_camera(argc=1)
conv.v.b
bf [60]

:[59]
push.v self.offscreen_frozen
pushi.e 1
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
pushi.e 1
pop.v.i self.frozen
b [64]

:[63]
pushi.e 0
pop.v.i self.frozen

:[64]
pushglb.v global.interact
pushi.e 0
cmp.i.v NEQ
bf [66]

:[65]
pushglb.v global.interact
pushi.e 4
cmp.i.v NEQ
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 1
pop.v.i self.frozen

:[69]
push.v self.frozen
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
push.v self.ignorefreeze
pushi.e 0
cmp.i.v EQ
b [72]

:[71]
push.e 0

:[72]
bf [75]

:[73]
push.v self.hadfrozen
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
push.v self.speed
pop.v.v self.remspeed
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.hadfrozen

:[75]
push.v self.frozen
pushi.e 0
cmp.i.v EQ
bf [402]

:[76]
push.v self.hadfrozen
pushi.e 1
cmp.i.v EQ
bf [80]

:[77]
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
push.v self.remspeed
pop.v.v self.speed

:[79]
pushi.e 0
pop.v.i self.hadfrozen

:[80]
push.v self.pacecon
pushi.e 0
cmp.i.v EQ
bf [248]

:[81]
push.v self.pacetimer
pushi.e 1
add.i.v
pop.v.v self.pacetimer
push.v self.pacetype
pushi.e 0
cmp.i.v EQ
bf [82]

:[82]
push.v self.pacetype
pushi.e 1
cmp.i.v EQ
bf [93]

:[83]
push.v self.pacetimer
pushi.e 10
cmp.i.v EQ
bf [85]

:[84]
pushi.e 2
pop.v.i self.hspeed

:[85]
push.v self.pacetimer
pushi.e 34
cmp.i.v EQ
bf [87]

:[86]
pushi.e 0
pop.v.i self.hspeed

:[87]
push.v self.pacetimer
pushi.e 50
cmp.i.v EQ
bf [89]

:[88]
pushi.e -2
pop.v.i self.hspeed

:[89]
push.v self.pacetimer
pushi.e 74
cmp.i.v EQ
bf [91]

:[90]
pushi.e 0
pop.v.i self.hspeed

:[91]
push.v self.pacetimer
pushi.e 80
cmp.i.v EQ
bf [93]

:[92]
pushi.e 0
pop.v.i self.pacetimer

:[93]
push.v self.pacetype
pushi.e 2
cmp.i.v EQ
bf [95]

:[94]
push.v self.pacetimer
pushi.e 24
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.hspeed
push.v self.pacetimer
pushi.e 24
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 4
mul.i.v
pop.v.v self.vspeed

:[95]
push.v self.pacetype
pushi.e 5
cmp.i.v EQ
bf [102]

:[96]
push.v self.pacetimer
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
pushi.e 6
pop.v.i self.vspeed

:[98]
push.v self.pacetimer
pushi.e 25
cmp.i.v EQ
bf [100]

:[99]
pushi.e -6
pop.v.i self.vspeed

:[100]
push.v self.y
push.v self.ystart
cmp.v.v LT
bf [102]

:[101]
pushi.e 0
pop.v.i self.pacetimer

:[102]
push.v self.pacetype
pushi.e 6
cmp.i.v EQ
bf [104]

:[103]
pushi.e 1
pop.v.i self.cancelwalk
push.v self.walk_index
push.d 0.25
add.d.v
pop.v.v self.walk_index

:[104]
push.v self.pacetype
pushi.e 7
cmp.i.v EQ
bf [106]

:[105]
push.v self.pacetimer
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 10
mul.i.v
pop.v.v self.hspeed

:[106]
push.v self.pacetype
push.d 7.1
cmp.d.v EQ
bf [108]

:[107]
push.v self.pacetimer
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 10
mul.i.v
pop.v.v self.hspeed

:[108]
push.v self.pacetype
push.d 7.5
cmp.d.v EQ
bf [110]

:[109]
push.v self.pacetimer
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
pop.v.v self.hspeed

:[110]
push.v self.pacetype
pushi.e 8
cmp.i.v EQ
bf [112]

:[111]
push.v self.pacetimer
pushi.e 25
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
push.d 12.5
mul.d.v
pop.v.v self.vspeed

:[112]
push.v self.pacetype
pushi.e 9
cmp.i.v EQ
bf [116]

:[113]
push.v self.float
pushi.e 0
cmp.i.v NEQ
bf [115]

:[114]
push.v self.yy
push.v self.pacetimer
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.float
mul.v.v
sub.v.v
pop.v.v self.y

:[115]
push.v self.pacetimer
push.v self.pacespeed
pushi.e 30
mul.i.v
div.v.v
call.i sin(argc=1)
push.v self.moveradius
pushi.e 20
conv.i.d
div.d.v
mul.v.v
pop.v.v self.hspeed
push.d 0.8
pop.v.d self.pacespeed

:[116]
push.v self.pacetype
push.d 9.5
cmp.d.v EQ
bf [120]

:[117]
push.v self.float
pushi.e 0
cmp.i.v NEQ
bf [119]

:[118]
push.v self.yy
push.v self.pacetimer
push.v self.float
div.v.v
call.i sin(argc=1)
sub.v.v
pop.v.v self.y

:[119]
pushi.e 2
push.v self.pacetimer
pushi.e 24
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.moveradius
pushi.e 20
conv.i.d
div.d.v
mul.v.v
mul.v.i
pop.v.v self.hspeed

:[120]
push.v self.pacetype
pushi.e 10
cmp.i.v EQ
bf [131]

:[121]
push.v self.pacecon2
pushi.e 0
cmp.i.v EQ
bf [129]

:[122]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [124]

:[123]
push.v self.vspeed
push.d 0.9
mul.d.v
pop.v.v self.vspeed

:[124]
push.v self.vspeed
push.d 0.5
cmp.d.v LTE
bf [126]

:[125]
push.v self.pacecon2
pushi.e 0
cmp.i.v EQ
b [127]

:[126]
push.e 0

:[127]
bf [129]

:[128]
pushi.e 1
pop.v.i self.pacecon2

:[129]
push.v self.pacecon2
pushi.e 1
cmp.i.v EQ
bf [131]

:[130]
pushi.e 4
conv.i.v
push.v 82.y
push.v 82.x
call.i move_towards_point(argc=3)
popz.v

:[131]
push.v self.pacetype
pushi.e 11
cmp.i.v EQ
bf [150]

:[132]
pushi.e 1
pop.v.i self.cancelwalk
push.d 0.25
pop.v.d self.image_speed
push.v self.pathSpeed
pushi.e 0
cmp.i.v EQ
bf [140]

:[133]
pushbltn.v builtin.room
pushi.e 129
cmp.i.v EQ
bf [135]

:[134]
pushi.e 6
pop.v.i self.pathSpeed
b [140]

:[135]
pushbltn.v builtin.room
pushi.e 222
cmp.i.v EQ
bf [137]

:[136]
pushi.e 6
pop.v.i self.pathSpeed
b [140]

:[137]
pushbltn.v builtin.room
pushi.e 127
cmp.i.v EQ
bf [139]

:[138]
pushi.e 6
pop.v.i self.pathSpeed
b [140]

:[139]
pushi.e 6
pop.v.i self.pathSpeed

:[140]
push.v self.direction
pushi.e 136
cmp.i.v GTE
bf [142]

:[141]
push.v self.direction
pushi.e 225
cmp.i.v LTE
b [143]

:[142]
push.e 0

:[143]
bf [145]

:[144]
pushi.e 0
pop.v.i self.facing

:[145]
push.v self.direction
pushi.e 306
cmp.i.v GTE
bt [147]

:[146]
push.v self.direction
pushi.e 45
cmp.i.v LTE
b [148]

:[147]
push.e 1

:[148]
bf [150]

:[149]
pushi.e 1
pop.v.i self.facing

:[150]
push.v self.pacetype
pushi.e 12
cmp.i.v EQ
bf [152]

:[151]
push.v self.pacetimer
pushi.e 30
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 10
mul.i.v
pop.v.v self.hspeed
push.v self.pacetimer
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
push.d 12.5
mul.d.v
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.vspeed

:[152]
push.v self.pacetype
pushi.e 13
cmp.i.v EQ
bf [154]

:[153]
push.v self.t
push.v self.increment
add.v.v
pushi.e 360
mod.i.v
pop.v.v self.t
push.v self.amplitude
push.v self.t
call.i dsin(argc=1)
mul.v.v
pop.v.v self.shift
push.v self.yy
push.v self.shift
add.v.v
pop.v.v self.y

:[154]
push.v self.pacetype
pushi.e 14
cmp.i.v EQ
bf [161]

:[155]
push.v self.rotation
call.i dcos(argc=1)
pop.v.v local._c
push.v self.rotation
call.i dsin(argc=1)
pop.v.v local._s
push.v self.xx
pushloc.v local._c
push.v self.distance
mul.v.v
add.v.v
pushloc.v local._s
push.v self.distance
mul.v.v
add.v.v
pop.v.v self.x
push.v self.yy
pushloc.v local._s
neg.v
push.v self.distance
mul.v.v
add.v.v
pushloc.v local._c
push.v self.distance
mul.v.v
add.v.v
pop.v.v self.y
push.v self.rotation
push.v self.spd
add.v.v
pop.v.v self.rotation
push.v self.rotation
pushi.e 359
cmp.i.v GT
bf [157]

:[156]
push.v self.rotation
pushi.e 360
sub.i.v
pop.v.v self.rotation

:[157]
pushbltn.v builtin.room
pushi.e 95
cmp.i.v EQ
bf [161]

:[158]
push.v self.rotation
pushi.e 180
cmp.i.v GT
bf [160]

:[159]
pushi.e 1
pop.v.i self.facing
b [161]

:[160]
pushi.e 0
pop.v.i self.facing

:[161]
push.v self.pacetype
pushi.e 15
cmp.i.v EQ
bf [165]

:[162]
push.v self.float
pushi.e 0
cmp.i.v NEQ
bf [164]

:[163]
push.v self.yy
push.v self.pacetimer
push.v self.float
div.v.v
call.i sin(argc=1)
sub.v.v
pop.v.v self.y

:[164]
push.v self.t
push.v self.increment
add.v.v
pushi.e 360
mod.i.v
pop.v.v self.t
push.v self.amplitude
push.v self.t
call.i dsin(argc=1)
mul.v.v
pop.v.v self.shift
push.v self.xx
push.v self.shift
add.v.v
pop.v.v self.x
push.v self.pacetimer
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
push.d 12.5
mul.d.v
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.vspeed

:[165]
push.v self.pacetype
pushi.e 16
cmp.i.v EQ
bf [178]

:[166]
push.v self.pacecon2
pushi.e 0
cmp.i.v EQ
bf [169]

:[167]
push.v self.hspeed
push.d 1.2
mul.d.v
pop.v.v self.hspeed
pushi.e 12
conv.i.v
pushi.e -12
conv.i.v
push.v self.hspeed
call.i clamp(argc=3)
pop.v.v self.hspeed
push.v self.x
pushi.e 240
cmp.i.v LTE
bf [169]

:[168]
push.d 0.1
pop.v.d self.pacecon2

:[169]
push.v self.pacecon2
push.d 0.1
cmp.d.v EQ
bf [172]

:[170]
push.v self.hspeed
push.d 0.7
mul.d.v
pop.v.v self.hspeed
push.v self.hspeed
call.i abs(argc=1)
push.d 0.5
cmp.d.v LT
bf [172]

:[171]
pushi.e 1
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.pacecon2

:[172]
push.v self.pacecon2
pushi.e 1
cmp.i.v EQ
bf [175]

:[173]
push.v self.hspeed
push.d 1.2
mul.d.v
pop.v.v self.hspeed
pushi.e 12
conv.i.v
pushi.e -12
conv.i.v
push.v self.hspeed
call.i clamp(argc=3)
pop.v.v self.hspeed
push.v self.x
pushi.e 860
cmp.i.v GTE
bf [175]

:[174]
push.d 1.1
pop.v.d self.pacecon2

:[175]
push.v self.pacecon2
push.d 1.1
cmp.d.v EQ
bf [178]

:[176]
push.v self.hspeed
push.d 0.7
mul.d.v
pop.v.v self.hspeed
push.v self.hspeed
call.i abs(argc=1)
push.d 0.5
cmp.d.v LT
bf [178]

:[177]
pushi.e -1
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.pacecon2

:[178]
push.v self.pacetype
pushi.e 17
cmp.i.v EQ
bf [182]

:[179]
push.v self.yy
push.v self.pacetimer
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
sub.v.v
pop.v.v self.y
push.v self.xx
push.v self.pacetimer
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
sub.v.v
pop.v.v self.x
push.v self.x
push.v self.xprevious
cmp.v.v GT
bf [181]

:[180]
pushi.e 1
pop.v.i self.facing
b [182]

:[181]
pushi.e 0
pop.v.i self.facing

:[182]
push.v self.pacetype
pushi.e 18
cmp.i.v EQ
bf [184]

:[183]
push.v self.yy
push.v self.pacetimer
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
sub.v.v
pop.v.v self.y

:[184]
push.v self.pacetype
pushi.e 19
cmp.i.v EQ
bf [188]

:[185]
push.v self.xx
push.v self.pacetimer
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 20
mul.i.v
sub.v.v
pop.v.v self.x
push.v self.x
push.v self.xprevious
cmp.v.v GT
bf [187]

:[186]
pushi.e 1
pop.v.i self.facing
b [188]

:[187]
pushi.e 0
pop.v.i self.facing

:[188]
push.v self.pacetype
pushi.e 20
cmp.i.v EQ
bf [202]

:[189]
push.v self.float
pushi.e 0
cmp.i.v NEQ
bf [191]

:[190]
push.v self.yy
push.v self.pacetimer
push.v self.float
div.v.v
call.i sin(argc=1)
sub.v.v
pop.v.v self.y

:[191]
push.d 0.25
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.cancelwalk
push.v self.pacecon2
pushi.e 0
cmp.i.v EQ
bf [195]

:[192]
push.v self.x
push.v self.xstart
push.v self.moveradius
add.v.v
cmp.v.v LT
bf [194]

:[193]
push.v self.x
push.v self.pacespeed
add.v.v
pop.v.v self.x
b [195]

:[194]
push.v self.xstart
push.v self.moveradius
add.v.v
pop.v.v self.x
pushi.e 1
pop.v.i self.pacecon2

:[195]
push.v self.pacecon2
pushi.e 1
cmp.i.v EQ
bf [199]

:[196]
push.v self.x
push.v self.xstart
push.v self.moveradius
sub.v.v
cmp.v.v GT
bf [198]

:[197]
push.v self.x
push.v self.pacespeed
sub.v.v
pop.v.v self.x
b [199]

:[198]
push.v self.xstart
push.v self.moveradius
sub.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.pacecon2

:[199]
push.v self.x
push.v self.xprevious
cmp.v.v GT
bf [201]

:[200]
pushi.e 1
pop.v.i self.facing
b [202]

:[201]
pushi.e 0
pop.v.i self.facing

:[202]
push.v self.pacetype
pushi.e 21
cmp.i.v EQ
bt [204]

:[203]
push.v self.pacetype
pushi.e 22
cmp.i.v EQ
b [205]

:[204]
push.e 1

:[205]
bf [240]

:[206]
push.v self.paceinit
pushi.e 0
cmp.i.v EQ
bf [233]

:[207]
pushi.e 0
pop.v.i self.leftbound
pushi.e 0
pop.v.i self.leftboundcheck

:[208]
push.v self.leftboundcheck
pushi.e 0
cmp.i.v EQ
bf [218]

:[209]
pushi.e 68
conv.i.v
push.v self.y
push.v self.x
push.v self.leftbound
sub.v.v
call.i place_meeting(argc=3)
conv.v.b
bt [213]

:[210]
pushi.e 250
conv.i.v
push.v self.y
push.v self.x
push.v self.leftbound
sub.v.v
call.i place_meeting(argc=3)
conv.v.b
bt [213]

:[211]
pushi.e 249
conv.i.v
push.v self.y
push.v self.x
push.v self.leftbound
sub.v.v
call.i place_meeting(argc=3)
conv.v.b
bt [213]

:[212]
push.v self.leftbound
pushi.e 480
cmp.i.v GTE
b [214]

:[213]
push.e 1

:[214]
bf [216]

:[215]
pushi.e 1
pop.v.i self.leftboundcheck
push.s "leftbound:"@20096
push.v self.leftbound
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
b [217]

:[216]
push.v self.leftbound
push.e 1
add.i.v
pop.v.v self.leftbound

:[217]
b [208]

:[218]
pushi.e 0
pop.v.i self.rightbound
pushi.e 0
pop.v.i self.rightboundcheck

:[219]
push.v self.rightboundcheck
pushi.e 0
cmp.i.v EQ
bf [229]

:[220]
pushi.e 68
conv.i.v
push.v self.y
push.v self.x
push.v self.rightbound
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bt [224]

:[221]
pushi.e 250
conv.i.v
push.v self.y
push.v self.x
push.v self.rightbound
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bt [224]

:[222]
pushi.e 249
conv.i.v
push.v self.y
push.v self.x
push.v self.rightbound
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bt [224]

:[223]
push.v self.rightbound
pushi.e 480
cmp.i.v GTE
b [225]

:[224]
push.e 1

:[225]
bf [227]

:[226]
pushi.e 1
pop.v.i self.rightboundcheck
push.s "rightbound:"@20099
push.v self.rightbound
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
b [228]

:[227]
push.v self.rightbound
push.e 1
add.i.v
pop.v.v self.rightbound

:[228]
b [219]

:[229]
push.v self.leftbound
push.v self.rightbound
cmp.v.v LT
bf [231]

:[230]
push.v self.leftbound
pushi.e 8
sub.i.v
pop.v.v self.moveradius
b [232]

:[231]
push.v self.rightbound
pushi.e 8
sub.i.v
pop.v.v self.moveradius

:[232]
push.s "moveradius:"@20100
push.v self.moveradius
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
pushi.e 0
pop.v.i self.siner
push.v self.moveradius
push.v self.pacespeed
pushi.e 3
mul.i.v
div.v.v
pop.v.v self.pacesinspeed
pushi.e 1
pop.v.i self.paceinit

:[233]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.pacetype
pushi.e 21
cmp.i.v EQ
bf [235]

:[234]
push.v self.xx
push.v self.siner
push.v self.pacesinspeed
div.v.v
call.i sin(argc=1)
push.v self.moveradius
mul.v.v
sub.v.v
pop.v.v self.x

:[235]
push.v self.pacetype
pushi.e 22
cmp.i.v EQ
bf [237]

:[236]
push.v self.xx
push.v self.siner
push.v self.pacesinspeed
div.v.v
call.i sin(argc=1)
push.v self.moveradius
mul.v.v
add.v.v
pop.v.v self.x

:[237]
push.v self.x
push.v self.xprevious
cmp.v.v GT
bf [239]

:[238]
pushi.e 1
pop.v.i self.facing
b [240]

:[239]
pushi.e 0
pop.v.i self.facing

:[240]
push.v self.pacetype
pushi.e 23
cmp.i.v EQ
bf [244]

:[241]
push.v self.yy
push.v self.pacetimer
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
sub.v.v
pop.v.v self.y
push.v self.xx
push.v self.pacetimer
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.moveradius
mul.v.v
sub.v.v
pop.v.v self.x
push.v self.x
push.v self.xprevious
cmp.v.v GT
bf [243]

:[242]
pushi.e 1
pop.v.i self.facing
b [244]

:[243]
pushi.e 0
pop.v.i self.facing

:[244]
push.v self.pacetype
pushi.e 24
cmp.i.v EQ
bf [248]

:[245]
pushi.e 25
pop.v.i self.pacespeed
push.v self.yy
push.v self.pacetimer
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
pop.v.v self.y
push.v self.xx
push.v self.pacetimer
push.v self.pacespeed
div.v.v
call.i sin(argc=1)
push.v self.moveradius
mul.v.v
sub.v.v
pop.v.v self.x
push.v self.x
push.v self.xprevious
cmp.v.v GT
bf [247]

:[246]
pushi.e 1
pop.v.i self.facing
b [248]

:[247]
pushi.e 0
pop.v.i self.facing

:[248]
pushi.e 0
pop.v.i self.viewblocked
push.v self.bbox_left
push.v self.bbox_right
add.v.v
pushi.e 2
conv.i.d
div.d.v
push.v self.detectpointxoffset
add.v.v
pop.v.v self.viewpointx
push.v self.bbox_bottom
push.v self.detectpointyoffset
add.v.v
pop.v.v self.viewpointy
push.v self.canAlertThroughWalls
pushi.e 0
cmp.i.v EQ
bf [255]

:[249]
push.v 82.bbox_left
push.v 82.bbox_right
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.mcx
push.v 82.bbox_bottom
pop.v.v self.mcy
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 68
conv.i.v
push.v self.mcy
push.v self.mcx
push.v self.viewpointy
push.v self.viewpointx
call.i collision_line(argc=7)
pushi.e 0
cmp.i.v GT
bf [251]

:[250]
pushi.e 1
pop.v.i self.viewblocked

:[251]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 69
conv.i.v
push.v self.mcy
push.v self.mcx
push.v self.viewpointy
push.v self.viewpointx
call.i collision_line(argc=7)
pushi.e 0
cmp.i.v GT
bf [253]

:[252]
pushi.e 1
pop.v.i self.viewblocked

:[253]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 250
conv.i.v
push.v self.mcy
push.v self.mcx
push.v self.viewpointy
push.v self.viewpointx
call.i collision_line(argc=7)
pushi.e 0
cmp.i.v GT
bf [255]

:[254]
pushi.e 1
pop.v.i self.viewblocked

:[255]
push.v self.alerted
pushi.e 0
cmp.i.v EQ
bf [293]

:[256]
push.v self.alerttype
pushi.e 0
cmp.i.v EQ
bf [262]

:[257]
call.i gml_Script_charaHeartY(argc=0)
call.i gml_Script_charaHeartX(argc=0)
push.v self.viewpointy
push.v self.viewpointx
call.i point_distance(argc=4)
push.v self.radius
cmp.v.v LTE
bf [259]

:[258]
push.v self.blind
pushi.e 0
cmp.i.v EQ
b [260]

:[259]
push.e 0

:[260]
bf [262]

:[261]
pushi.e 1
pop.v.i self.alerted

:[262]
push.v self.alerttype
pushi.e 1
cmp.i.v EQ
bf [293]

:[263]
push.v self.direction
pushi.e 45
cmp.i.v GTE
bf [265]

:[264]
push.v self.direction
pushi.e 135
cmp.i.v LTE
b [266]

:[265]
push.e 0

:[266]
bf [269]

:[267]
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.radius
pushi.e 3
mul.i.v
pushi.e 4
conv.i.d
div.d.v
sub.v.v
push.v self.x
push.v self.radius
add.v.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
push.v self.radius
sub.v.v
push.v 82.y
pushi.e 35
add.i.v
push.v 82.x
pushi.e 20
add.i.v
call.i point_in_rectangle(argc=6)
conv.v.b
bf [269]

:[268]
pushi.e 1
pop.v.i self.alerted

:[269]
push.v self.direction
pushi.e 225
cmp.i.v GTE
bf [271]

:[270]
push.v self.direction
pushi.e 315
cmp.i.v LTE
b [272]

:[271]
push.e 0

:[272]
bf [275]

:[273]
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.radius
pushi.e 3
mul.i.v
pushi.e 4
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.radius
add.v.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
push.v self.radius
sub.v.v
push.v 82.y
pushi.e 35
add.i.v
push.v 82.x
pushi.e 20
add.i.v
call.i point_in_rectangle(argc=6)
conv.v.b
bf [275]

:[274]
pushi.e 1
pop.v.i self.alerted

:[275]
push.v self.direction
pushi.e 315
cmp.i.v GTE
bf [277]

:[276]
push.v self.direction
pushi.e 405
cmp.i.v LTE
b [278]

:[277]
push.e 0

:[278]
bt [283]

:[279]
push.v self.direction
pushi.e -45
cmp.i.v GTE
bf [281]

:[280]
push.v self.direction
pushi.e 45
cmp.i.v LTE
b [282]

:[281]
push.e 0

:[282]
b [284]

:[283]
push.e 1

:[284]
bf [287]

:[285]
push.v self.y
push.v self.radius
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
push.v self.radius
add.v.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.radius
sub.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v 82.y
pushi.e 35
add.i.v
push.v 82.x
pushi.e 20
add.i.v
call.i point_in_rectangle(argc=6)
conv.v.b
bf [287]

:[286]
pushi.e 1
pop.v.i self.alerted

:[287]
push.v self.direction
pushi.e 135
cmp.i.v GTE
bf [289]

:[288]
push.v self.direction
pushi.e 225
cmp.i.v LTE
b [290]

:[289]
push.e 0

:[290]
bf [293]

:[291]
push.v self.y
push.v self.radius
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.radius
sub.v.v
push.v self.x
push.v self.radius
sub.v.v
push.v 82.y
pushi.e 35
add.i.v
push.v 82.x
pushi.e 20
add.i.v
call.i point_in_rectangle(argc=6)
conv.v.b
bf [293]

:[292]
pushi.e 1
pop.v.i self.alerted

:[293]
push.v self.viewblocked
pushi.e 1
cmp.i.v EQ
bf [295]

:[294]
pushi.e 0
pop.v.i self.alerted

:[295]
push.v self.alerted
pushi.e 1
cmp.i.v EQ
bf [306]

:[296]
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.pacecon
pushi.e 0
pop.v.i self.alerttimer
pushi.e 1
pop.v.i self.alertcon
push.v self.pacetype
pushi.e 11
cmp.i.v EQ
bf [298]

:[297]
call.i path_end(argc=0)
popz.v

:[298]
push.v self.alertskip
pushi.e 0
cmp.i.v EQ
bf [304]

:[299]
push.v self.noAlertSound
pushi.e 0
cmp.i.v EQ
bf [301]

:[300]
pushi.e 164
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[301]
pushi.e 20
pop.v.i self.targalarm
push.v self.chasetype
pushi.e 8
cmp.i.v EQ
bf [303]

:[302]
pushi.e 8
pop.v.i self.targalarm

:[303]
pushi.e 273
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.excl
push.i 133633
setowner.e
push.v self.targalarm
push.v self.excl
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
push.i 68097
setowner.e
push.v self.targalarm
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
b [305]

:[304]
pushi.e 2
pop.v.i self.alertcon

:[305]
pushi.e 2
pop.v.i self.alerted

:[306]
push.v self.alertcon
pushi.e 2
cmp.i.v EQ
bf [381]

:[307]
push.v self.chasetype
pushi.e -1
cmp.i.v EQ
bf [309]

:[308]
pushi.e 0
pop.v.i self.alerttimer
pushi.e 0
pop.v.i self.alertcon
pushi.e 0
pop.v.i self.pacecon

:[309]
push.v self.chasetype
pushi.e 0
cmp.i.v EQ
bf [315]

:[310]
push.v self.speed
pushi.e 4
cmp.i.v LT
bf [312]

:[311]
pushi.e 4
pop.v.i self.speed

:[312]
push.v self.speed
pushi.e 7
cmp.i.v LT
bf [314]

:[313]
push.v self.speed
push.d 0.5
add.d.v
pop.v.v self.speed

:[314]
push.v self.speed
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v

:[315]
push.v self.chasetype
pushi.e 1
cmp.i.v EQ
bf [324]

:[316]
push.v self.alerttimer
pushi.e 0
cmp.i.v EQ
bf [318]

:[317]
pushi.e 10
conv.i.v
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v

:[318]
push.v self.alerttimer
pushi.e 1
add.i.v
pop.v.v self.alerttimer
push.v self.alerttimer
pushi.e 20
cmp.i.v GTE
bf [320]

:[319]
push.v self.speed
push.d 0.75
mul.d.v
pop.v.v self.speed

:[320]
push.v self.alerttimer
pushi.e 25
cmp.i.v GTE
bf [322]

:[321]
pushi.e 0
pop.v.i self.speed

:[322]
push.v self.alerttimer
pushi.e 27
cmp.i.v GTE
bf [324]

:[323]
pushi.e 0
pop.v.i self.alerttimer

:[324]
push.v self.chasetype
pushi.e 2
cmp.i.v EQ
bf [341]

:[325]
push.v self.alerttimer
pushi.e 0
cmp.i.v EQ
bf [335]

:[326]
pushi.e 0
pop.v.i self.xnext
pushi.e 0
pop.v.i self.ynext
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [328]

:[327]
pushi.e 132
pop.v.i self.xnext

:[328]
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [330]

:[329]
pushi.e -132
pop.v.i self.xnext

:[330]
call.i gml_Script_down_h(argc=0)
conv.v.b
bf [332]

:[331]
pushi.e 132
pop.v.i self.ynext

:[332]
call.i gml_Script_up_h(argc=0)
conv.v.b
bf [334]

:[333]
pushi.e -132
pop.v.i self.ynext

:[334]
pushi.e 10
conv.i.v
push.v self.targety
push.v self.ynext
add.v.v
push.v self.targetx
push.v self.xnext
add.v.v
call.i move_towards_point(argc=3)
popz.v

:[335]
push.v self.alerttimer
pushi.e 1
add.i.v
pop.v.v self.alerttimer
push.v self.alerttimer
pushi.e 20
cmp.i.v GTE
bf [337]

:[336]
push.v self.speed
push.d 0.75
mul.d.v
pop.v.v self.speed

:[337]
push.v self.alerttimer
pushi.e 25
cmp.i.v GTE
bf [339]

:[338]
pushi.e 0
pop.v.i self.speed

:[339]
push.v self.alerttimer
pushi.e 27
cmp.i.v GTE
bf [341]

:[340]
pushi.e 0
pop.v.i self.alerttimer

:[341]
push.v self.chasetype
pushi.e 3
cmp.i.v EQ
bf [347]

:[342]
push.v self.speed
pushi.e 2
cmp.i.v LT
bf [344]

:[343]
pushi.e 2
pop.v.i self.speed

:[344]
push.v self.speed
pushi.e 4
cmp.i.v LT
bf [346]

:[345]
push.v self.speed
push.d 0.5
add.d.v
pop.v.v self.speed

:[346]
push.v self.speed
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v

:[347]
push.v self.chasetype
pushi.e 4
cmp.i.v EQ
bf [353]

:[348]
push.v self.speed
pushi.e 6
cmp.i.v LT
bf [350]

:[349]
pushi.e 6
pop.v.i self.speed

:[350]
push.v self.speed
pushi.e 14
cmp.i.v LT
bf [352]

:[351]
push.v self.speed
push.d 0.5
add.d.v
pop.v.v self.speed

:[352]
push.v self.speed
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v

:[353]
push.v self.chasetype
pushi.e 5
cmp.i.v EQ
bf [361]

:[354]
push.v self.hspeed
push.v self.targety
push.v self.targetx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
push.d 0.5
conv.d.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.hspeed
push.v self.vspeed
push.v self.targety
push.v self.targetx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
push.d 0.5
conv.d.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.vspeed
push.v self.speed
pushi.e 4
cmp.i.v LT
bf [356]

:[355]
pushi.e 4
pop.v.i self.speed

:[356]
push.v self.speed
pushi.e 7
cmp.i.v LT
bf [358]

:[357]
push.v self.speed
push.d 0.5
add.d.v
pop.v.v self.speed

:[358]
push.v self.speed
pushi.e 7
cmp.i.v GTE
bf [360]

:[359]
pushi.e 7
pop.v.i self.speed

:[360]
push.v self.speed
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v

:[361]
push.v self.chasetype
push.d 5.5
cmp.d.v EQ
bf [367]

:[362]
push.v self.hspeed
push.v self.targety
push.v self.targetx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
push.d 0.5
conv.d.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.hspeed
push.v self.vspeed
push.v self.targety
push.v self.targetx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
push.d 0.5
conv.d.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.vspeed
push.v self.speed
push.v self.startchasespeed
cmp.v.v LT
bf [364]

:[363]
push.v self.startchasespeed
pop.v.v self.speed

:[364]
push.v self.speed
push.v self.topchasespeed
cmp.v.v NEQ
bf [366]

:[365]
push.v self.chaseaccel
push.v self.topchasespeed
push.v self.speed
call.i lerp(argc=3)
pop.v.v self.speed

:[366]
push.v self.speed
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v

:[367]
push.v self.chasetype
pushi.e 6
cmp.i.v EQ
bf [369]

:[368]
pushi.e 8
pop.v.i self.speed
push.v self.speed
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v

:[369]
push.v self.chasetype
pushi.e 7
cmp.i.v EQ
bf [375]

:[370]
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [372]

:[371]
pushi.e 6
pop.v.i self.speed

:[372]
push.v self.speed
pushi.e 10
cmp.i.v LT
bf [374]

:[373]
push.v self.speed
push.d 1.1
mul.d.v
pop.v.v self.speed

:[374]
push.d 0.25
pop.v.d self.image_speed
push.v self.speed
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v

:[375]
push.v self.chasetype
pushi.e 8
cmp.i.v EQ
bf [379]

:[376]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.mymidx
push.v self.y
push.v self.bbox_bottom
push.v self.y
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.mymidy
call.i gml_Script_charaHeartY(argc=0)
call.i gml_Script_charaHeartX(argc=0)
push.v self.mymidy
push.v self.mymidx
call.i point_distance(argc=4)
pushi.e 50
cmp.i.v GT
bf [378]

:[377]
call.i gml_Script_charaHeartY(argc=0)
call.i gml_Script_charaHeartX(argc=0)
push.v self.mymidy
push.v self.mymidx
call.i point_direction(argc=4)
pushi.e 180
add.i.v
pop.v.v self.direction

:[378]
pushi.e 6
pop.v.i self.speed

:[379]
push.v self.chasetype
pushi.e 9
cmp.i.v EQ
bf [381]

:[380]
push.v self.hspeed
push.v self.targety
push.v self.targetx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
push.d 0.5
conv.d.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.hspeed
push.v self.vspeed
push.v self.targety
push.v self.targetx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
push.d 0.5
conv.d.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.vspeed
push.v self.maxspeed
push.v self.minspeed
push.v self.speed
call.i clamp(argc=3)
pop.v.v self.speed
push.v self.speed
push.v self.targety
push.v self.targetx
call.i move_towards_point(argc=3)
popz.v

:[381]
push.v self.facetimer
pushi.e 1
add.i.v
pop.v.v self.facetimer
push.v self.facetimer
pushi.e 10
cmp.i.v GTE
bf [392]

:[382]
push.v self.hspeed
push.d -0.2
cmp.d.v LTE
bf [384]

:[383]
push.v self.facing
pushi.e 1
cmp.i.v EQ
b [385]

:[384]
push.e 0

:[385]
bf [387]

:[386]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.facetimer

:[387]
push.v self.hspeed
push.d 0.2
cmp.d.v GTE
bf [389]

:[388]
push.v self.facing
pushi.e 0
cmp.i.v EQ
b [390]

:[389]
push.e 0

:[390]
bf [392]

:[391]
pushi.e 1
pop.v.i self.facing
pushi.e 0
pop.v.i self.facetimer

:[392]
push.v self.cancelwalk
pushi.e 0
cmp.i.v EQ
bf [396]

:[393]
push.v self.walk_index
push.v self.speed
pushi.e 20
conv.i.d
div.d.v
add.v.v
pop.v.v self.walk_index
push.v self.speed
pushi.e 0
cmp.i.v EQ
bf [395]

:[394]
pushi.e 0
pop.v.i self.walk_index

:[395]
b [397]

:[396]
push.v self.image_index
pop.v.v self.walk_index

:[397]
push.v self.test_release_bullet
pushi.e 1
cmp.i.v EQ
bf [402]

:[398]
push.v self.test_release_bullet_timer
push.e 1
add.i.v
pop.v.v self.test_release_bullet_timer
push.v self.test_release_bullet_timer
pushi.e 20
cmp.i.v GT
bf [402]

:[399]
pushi.e 243
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
push.v self.id
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.creator
push.v self.bullet
pushi.e -9
pushenv [401]

:[400]
pushi.e 4
conv.i.v
push.v 82.y
pushi.e 20
add.i.v
push.v 82.x
pushi.e 20
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[401]
popenv [400]
pushi.e 0
pop.v.i self.test_release_bullet_timer

:[402]
push.v self.sprite_index
pushi.e 1716
cmp.i.v EQ
bf [404]

:[403]
pushi.e -88
pop.v.i self.detectpointyoffset
pushi.e 1
pop.v.i self.customhitbox
pushi.e -2
pop.v.i self.hitx1
pushi.e 66
pop.v.i self.hitx2
pushi.e 42
pop.v.i self.hity1
pushi.e 130
pop.v.i self.hity2

:[404]
push.v self.sprite_index
pushi.e 1797
cmp.i.v EQ
bf [end]

:[405]
pushi.e -50
pop.v.i self.detectpointyoffset

:[end]