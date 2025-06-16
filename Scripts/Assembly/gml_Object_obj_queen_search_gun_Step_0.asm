.localvar 2 arguments
.localvar 9183 _xx 11711
.localvar 9185 _yy 11712
.localvar 24058 lasercircle 11713
.localvar 24059 laser_angle 11714

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.firsttime
conv.v.b
bf [3]

:[2]
push.v self.targetTime
pushi.e 2
mul.i.v
pop.v.v self.targetTime

:[3]
pushi.e 1
pop.v.i self.init
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
push.v self.loading
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
exit.i

:[6]
push.v self.smashed
conv.v.b
bf [16]

:[7]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [15]

:[8]
push.v self.x
push.v self.image_angle
pushi.e -20
conv.i.v
pushi.e 64
push.v self.flip
mul.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbitx(argc=5)
add.v.v
pop.v.v local._xx
push.v self.y
push.v self.image_angle
pushi.e -20
conv.i.v
pushi.e 64
push.v self.flip
mul.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbity(argc=5)
add.v.v
pop.v.v local._yy
pushi.e 369
conv.i.v
pushloc.v local._yy
pushloc.v local._xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 2257
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.image_angle
push.v self.flip
conv.v.b
bf [10]

:[9]
pushi.e 0
conv.i.v
b [11]

:[10]
pushi.e 180
conv.i.v

:[11]
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 12
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1
pop.v.i 536.broken
push.v self.image_angle
push.v self.flip
conv.v.b
bf [13]

:[12]
pushi.e 0
conv.i.v
b [14]

:[13]
pushi.e 180
conv.i.v

:[14]
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
call.i instance_destroy(argc=0)
popz.v

:[15]
exit.i

:[16]
push.v self.bufferstate
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.i 8421504
pop.v.i self.image_blend
pushi.e 1
pop.v.i self.bufferstate
b [26]

:[21]
push.v self.bufferstate
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
not.b
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.i 16777215
pop.v.i self.image_blend
pushi.e 2
pop.v.i self.bufferstate

:[26]
push.v self.bufferstate
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
exit.i

:[28]
push.v self.timer
push.v self.targetTime
cmp.v.v LT
bf [31]

:[29]
push.v self.shootcon
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
push.v self.shootmode
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [45]

:[33]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 0
cmp.i.v LT
bf [35]

:[34]
exit.i

:[35]
push.v self.firsttime
conv.v.b
bf [40]

:[36]
push.v self.shottype
pushi.e 0
cmp.i.v EQ
bf [40]

:[37]
push.v 631.x
pushi.e 8
add.i.v
pop.v.v self.targetx
push.v 631.y
pushi.e 8
add.i.v
pop.v.v self.targety
push.v self.targety
push.v self.targetx
push.v self.y
pushi.e 24
sub.i.v
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.targetAngle
push.v self.targetAngle
pushi.e 360
mod.i.v
pop.v.v self.targetAngle
push.v self.flip
conv.v.b
bf [39]

:[38]
push.v self.targetAngle
pushi.e 360
add.i.v
pop.v.v self.targetAngle
b [40]

:[39]
push.v self.targetAngle
pushi.e 540
sub.i.v
pop.v.v self.targetAngle

:[40]
pushi.e -1
conv.i.v
push.v self.timer
push.v self.targetTime
div.v.v
call.i gml_Script_scr_ease_inout(argc=2)
push.v self.targetAngle
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_angle
push.v self.timer
push.v self.targetTime
cmp.v.v GTE
bf [45]

:[41]
push.v self.x
push.v self.image_angle
pushi.e -20
conv.i.v
pushi.e 64
push.v self.flip
mul.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbitx(argc=5)
add.v.v
pop.v.v self.xx
push.v self.y
push.v self.image_angle
pushi.e -20
conv.i.v
pushi.e 64
push.v self.flip
mul.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_orbity(argc=5)
add.v.v
pop.v.v self.yy
push.v self.image_angle
push.v self.flip
conv.v.b
bf [43]

:[42]
pushi.e 0
conv.i.v
b [44]

:[43]
pushi.e 180
conv.i.v

:[44]
add.v.v
pop.v.v self.direction
pushi.e 1
pop.v.i self.shootmode

:[45]
push.v self.shootcon
pushi.e 0
cmp.i.v EQ
bf [47]

:[46]
push.v self.shootmode
pushi.e 1
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [52]

:[49]
pushglb.v global.turntimer
pushi.e 40
cmp.i.v GTE
bf [51]

:[50]
pushi.e 1
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.shoottimer
b [52]

:[51]
pushi.e 5
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.shootmode

:[52]
push.v self.shootcon
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
pushi.e 2
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.shoottimer
pushi.e 0
pop.v.i self.shootcount

:[54]
push.v self.shootcon
pushi.e 2
cmp.i.v EQ
bf [64]

:[55]
push.v self.shoottimer
push.e 1
sub.i.v
pop.v.v self.shoottimer
push.v self.shoottimer
pushi.e 0
cmp.i.v LTE
bf [62]

:[56]
pushi.e 0
pop.v.i self.i

:[57]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [61]

:[58]
pushi.e 475
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v local.lasercircle
push.v self.damage
pushloc.v local.lasercircle
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
pushloc.v local.lasercircle
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.depth
pushi.e 1
sub.i.v
pushloc.v local.lasercircle
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.direction
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v local.laser_angle
pushloc.v local.laser_angle
pushi.e 5
sub.i.v
pushi.e 5
push.v self.i
mul.v.i
add.v.v
pushloc.v local.lasercircle
pushi.e -9
pop.v.v [stacktop]self.my_angle
pushi.e -1
push.v self.i
add.v.i
push.d 0.8
mul.d.v
push.v self.m
mul.v.v
pushloc.v local.lasercircle
pushi.e -9
pop.v.v [stacktop]self.my_angle_change
pushloc.v local.lasercircle
pushi.e -9
pushenv [60]

:[59]
pushi.e 4
pop.v.i self.my_speed
push.d 0.2
pop.v.d self.my_accel
pushi.e 4
pop.v.i self.my_length

:[60]
popenv [59]
push.d 0.4
pushloc.v local.lasercircle
pushi.e -9
pop.v.d [stacktop]self.my_accel
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [57]

:[61]
pushi.e 10
conv.i.d
push.v self.m
div.v.d
pop.v.v self.shoottimer
push.v self.shootcount
pushi.e 1
add.i.v
pop.v.v self.shootcount

:[62]
push.v self.shootcount
pushi.e 3
cmp.i.v GTE
bf [64]

:[63]
pushi.e 5
pop.v.i self.shootcon
pushi.e 20
pop.v.i self.shoottimer

:[64]
push.v self.shootcon
pushi.e 3
cmp.i.v EQ
bf [66]

:[65]
push.i 170532
setowner.e
pushi.e -24
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.bx1
pushi.e -40
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.bx1
pushi.e -48
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.bx1
pushi.e -46
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.bx1
pushi.e -26
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.bx1
push.i 170533
setowner.e
pushi.e -54
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.by1
pushi.e -30
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.by1
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.by1
pushi.e 46
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.by1
pushi.e 72
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.by1
push.v 631.y
pushi.e 8
add.i.v
push.v 631.x
pushi.e 8
add.i.v
push.v self.y
pushi.e -1
pushi.e 2
push.v [array]self.by1
add.v.v
push.v self.x
pushi.e -1
pushi.e 2
push.v [array]self.bx1
add.v.v
call.i point_direction(argc=4)
pushi.e 10
sub.i.v
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.bullet_angle
pushi.e 4
pop.v.i self.shootcon

:[66]
push.v self.shootcon
pushi.e 4
cmp.i.v EQ
bf [86]

:[67]
push.v self.shoottimer
pushi.e 1
add.i.v
pop.v.v self.shoottimer
push.v self.shoottimer
pushi.e 15
conv.i.d
push.v self.m
div.v.d
cmp.v.v GTE
bf [86]

:[68]
push.v self.image_index
push.d 0.25
push.v self.m
mul.v.d
add.v.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [70]

:[69]
push.v self.image_index
pushi.e 3
cmp.i.v LTE
b [71]

:[70]
push.e 0

:[71]
bf [77]

:[72]
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [76]

:[73]
push.v self.shootcount
pushi.e 5
cmp.i.v LT
bf [75]

:[74]
push.i 167278
setowner.e
pushi.e 474
conv.i.v
push.v self.y
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.by1
add.v.v
push.v self.x
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bx1
add.v.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.shootcount
conv.v.i
pop.v.v [array]self.bullet
push.i 231467
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.damage
push.i 133642
setowner.e
pushi.e 1745
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 236041
setowner.e
pushi.e 0
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.stretch
push.i 133655
setowner.e
push.d 0.2
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133650
setowner.e
pushi.e 4
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133651
setowner.e
pushi.e 4
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 133625
setowner.e
push.v self.bullet_angle
pushi.e 28
sub.i.v
push.v self.shootcount
pushi.e 14
mul.i.v
add.v.v
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133652
setowner.e
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
push.v [stacktop]self.direction
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.i 133626
setowner.e
pushi.e 9
push.v self.initid
sub.v.i
push.v self.werewerewire
sub.v.v
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.v [stacktop]self.speed
push.i 133627
setowner.e
pushi.e 1
pushi.e -1
push.v self.shootcount
conv.v.i
push.v [array]self.bullet
pushi.e -9
pop.v.i [stacktop]self.friction
push.v self.shootcount
pushi.e 1
add.i.v
pop.v.v self.shootcount

:[75]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [73]

:[76]
popz.i

:[77]
push.v self.image_index
pushi.e 4
cmp.i.v GTE
bf [86]

:[78]
pushi.e 0
pop.v.i self.i

:[79]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [85]

:[80]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bullet
pushi.e -9
pushenv [84]

:[81]
push.v self.speed
pushi.e 0
cmp.i.v LTE
bf [83]

:[82]
push.d 0.2
pop.v.d self.speed

:[83]
push.d -0.25
pop.v.d self.friction

:[84]
popenv [81]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [79]

:[85]
pushi.e 0
pop.v.i self.shootcon
pushi.e 0
pop.v.i self.image_index
pushi.e 1710
pop.v.i self.sprite_index
push.d 0.16
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.stop_anim

:[86]
push.v self.shootcon
pushi.e 5
cmp.i.v EQ
bf [end]

:[87]
push.v self.shoottimer
push.e 1
sub.i.v
pop.v.v self.shoottimer
push.v self.shoottimer
pushi.e 0
cmp.i.v LTE
bf [end]

:[88]
pushi.e 5
push.v self.parentwindow
pushi.e -9
pop.v.i [stacktop]self.state
call.i instance_destroy(argc=0)
popz.v

:[end]