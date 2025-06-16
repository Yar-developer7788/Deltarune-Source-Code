.localvar 2 arguments
.localvar 6482 xx 12976
.localvar 6483 yy 12977
.localvar 6135 shake 12978
.localvar 11610 aa 12980
.localvar 14829 rand 12981
.localvar 14803 rr 12982
.localvar 7017 a 12983
.localvar 6696 r 12984

:[0]
push.v self.siner
push.d 0.25
add.d.v
pop.v.v self.siner
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
pushi.e 10
sub.i.v
pop.v.v local.xx
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
pushi.e 230
sub.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 21
mul.i.v
add.v.v
pop.v.v local.yy
pushi.e 0
pop.v.i local.shake
push.v self.sprite_index
pushi.e 1980
cmp.i.v EQ
bf [2]

:[1]
pushi.e -4
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v local.shake

:[2]
push.v self.movecon
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
push.v self.movetimer
push.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
pushi.e 10
conv.i.d
div.d.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
pushi.e 10
sub.i.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
pushi.e 70
add.i.v
call.i lerp(argc=3)
pop.v.v local.xx
push.v self.movetimer
pushi.e 10
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.movetimer
pushi.e 1
pop.v.i self.movecon

:[5]
pushglb.v global.turntimer
pushi.e 16
cmp.i.v LT
bf [7]

:[6]
pushi.e 2
pop.v.i self.movecon

:[7]
push.v self.movecon
pushi.e 2
cmp.i.v EQ
bf [10]

:[8]
push.v self.movetimer
push.e 1
add.i.v
pop.v.v self.movetimer
push.v self.movetimer
pushi.e 10
conv.i.d
div.d.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
pushi.e 70
add.i.v
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
pushi.e 10
sub.i.v
call.i lerp(argc=3)
pop.v.v local.xx
push.v self.movetimer
pushi.e 10
cmp.i.v EQ
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.variant
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
push.v self.movecon
pushi.e 1
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [43]

:[14]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [19]

:[15]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v GTE
bf [19]

:[16]
pushi.e 625
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [18]

:[17]
pushi.e 625
conv.i.v
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 60
add.i.v
push.v 872.x
pushi.e 200
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wall
push.d 2.5
push.v self.wall
pushi.e -9
pop.v.d [stacktop]self.image_xscale

:[18]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[19]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [28]

:[20]
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [25]

:[21]
pushi.e 10
conv.i.v
call.i irandom(argc=1)
pushi.e 6
cmp.i.v LT
bf [23]

:[22]
pushi.e 45
conv.i.v
pushloc.v local.yy
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local.xx
pushi.e 5
add.i.v
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
push.d 0.2
pushi.e 3
conv.i.v
call.i random(argc=1)
pushi.e 100
conv.i.d
div.d.v
add.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.gravity
pushi.e -6
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.d -1.8
push.d 1.5
conv.d.v
call.i random(argc=1)
sub.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.depth
pushi.e 1
sub.i.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.directhit
b [24]

:[23]
pushi.e 626
conv.i.v
pushloc.v local.yy
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local.xx
pushi.e 5
add.i.v
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
pushi.e 3
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.type
push.d 0.2
pushi.e 3
conv.i.v
call.i random(argc=1)
pushi.e 100
conv.i.d
div.d.v
add.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.gravity
pushi.e -6
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.d -1.6
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.depth
pushi.e 1
sub.i.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.directhit

:[24]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [21]

:[25]
popz.i
pushi.e 1977
pop.v.i self.sprite_index
pushi.e -180
pushi.e 50
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.angle_final
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [27]

:[26]
pushi.e 659
conv.i.v
pushloc.v local.yy
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local.xx
pushi.e 5
add.i.v
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
push.v self.depth
pushi.e 2
sub.i.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.depth
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [26]

:[27]
popz.i
pushi.e 2
pop.v.i self.con

:[28]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [43]

:[29]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 11
cmp.i.v LT
bf [31]

:[30]
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
push.v self.angle_final
push.v self.image_angle
call.i lerp(argc=3)
pop.v.v self.image_angle

:[31]
push.v self.timer
push.v self.timervariance
pushi.e 15
sub.i.v
cmp.v.v LT
bf [33]

:[32]
push.v self.eggcount
push.d 0.4
cmp.d.v GT
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
push.v self.timer
push.v self.timervariance
pushi.e 15
sub.i.v
div.v.v
push.d 2.5
conv.d.v
push.d 1.8
conv.d.v
call.i lerp(argc=3)
pop.v.v self.image_xscale

:[36]
push.v self.timer
push.v self.timervariance
pushi.e 15
sub.i.v
cmp.v.v EQ
bf [38]

:[37]
push.v self.eggcount
push.d 0.4
cmp.d.v GT
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 1980
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale

:[41]
push.v self.timer
push.v self.timervariance
cmp.v.v GTE
bf [43]

:[42]
push.v self.eggcount
push.d 0.4
sub.d.v
pop.v.v self.eggcount
pushi.e 60
pushi.e 15
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v self.timervariance
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[43]
push.v self.variant
pushi.e 2
cmp.i.v EQ
bf [45]

:[44]
push.v self.movecon
pushi.e 1
cmp.i.v EQ
b [46]

:[45]
push.e 0

:[46]
bf [119]

:[47]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [52]

:[48]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v GTE
bf [52]

:[49]
pushi.e 625
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [51]

:[50]
pushi.e 625
conv.i.v
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v 872.x
pushi.e 200
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wall
push.d 2.9
push.v self.wall
pushi.e -9
pop.v.d [stacktop]self.image_xscale

:[51]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[52]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [96]

:[53]
pushi.e 1
pop.v.i local.aa
push.v self.pipiscount
push.e 1
add.i.v
pop.v.v self.pipiscount
push.v self.pipiscount
pushi.e 3
cmp.i.v EQ
bt [56]

:[54]
push.v self.pipiscount
pushi.e 5
cmp.i.v EQ
bt [56]

:[55]
push.v self.pipiscount
pushi.e 9
cmp.i.v EQ
b [57]

:[56]
push.e 1

:[57]
bf [59]

:[58]
pushi.e 0
pop.v.i local.aa

:[59]
push.v self.pipiscount
pushi.e 0
cmp.i.v EQ
bt [63]

:[60]
push.v self.pipiscount
pushi.e 4
cmp.i.v EQ
bt [63]

:[61]
push.v self.pipiscount
pushi.e 8
cmp.i.v EQ
bt [63]

:[62]
push.v self.pipiscount
pushi.e 11
cmp.i.v EQ
b [64]

:[63]
push.e 1

:[64]
bf [66]

:[65]
pushi.e 1
pop.v.i local.aa

:[66]
push.v 697.difficulty
pushi.e 0
cmp.i.v EQ
bf [82]

:[67]
push.d 0.8
pop.v.d local.rand
pushglb.v global.turntimer
pushi.e 380
cmp.i.v GT
bf [69]

:[68]
push.d 0.5
pop.v.d local.rand

:[69]
pushi.e 0
pop.v.i local.rr
pushi.e 626
conv.i.v
call.i instance_number(argc=1)
pushi.e 2
cmp.i.v LT
bf [71]

:[70]
pushglb.v global.turntimer
pushi.e 250
cmp.i.v LT
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
pushi.e 1
pop.v.i local.rr

:[74]
pushi.e 626
conv.i.v
call.i instance_number(argc=1)
pushi.e 3
cmp.i.v LT
bf [76]

:[75]
push.v self.pipiscount
push.v self.maxpipis
cmp.v.v LT
b [77]

:[76]
push.e 0

:[77]
bf [81]

:[78]
pushloc.v local.aa
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
pushi.e 626
conv.i.v
pushloc.v local.yy
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local.xx
pushi.e 5
add.i.v
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
pushi.e 2
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.type
push.d 0.5
pushi.e 10
conv.i.v
call.i random(argc=1)
pushi.e 100
conv.i.d
div.d.v
add.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.gravity
pushi.e -14
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.d -1.55
pushloc.v local.rr
sub.v.d
pushloc.v local.rand
call.i random(argc=1)
sub.v.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.depth
pushi.e 1
sub.i.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.depth
b [81]

:[80]
pushi.e 626
conv.i.v
pushloc.v local.yy
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local.xx
pushi.e 5
add.i.v
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
pushi.e 2
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.type
push.d 0.063
pushi.e 4
conv.i.v
call.i random(argc=1)
pushi.e 100
conv.i.d
div.d.v
add.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.gravity
push.d -4.25
push.v self.bul
pushi.e -9
pop.v.d [stacktop]self.vspeed
pushi.e -4
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.depth
pushi.e 1
sub.i.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.directhit

:[81]
b [93]

:[82]
pushi.e 0
pop.v.i local.rr
pushi.e 626
conv.i.v
call.i instance_number(argc=1)
pushi.e 2
cmp.i.v LT
bf [84]

:[83]
pushglb.v global.turntimer
pushi.e 250
cmp.i.v LT
b [85]

:[84]
push.e 0

:[85]
bf [87]

:[86]
pushi.e 1
pop.v.i local.rr

:[87]
pushi.e 626
conv.i.v
call.i instance_number(argc=1)
pushi.e 3
cmp.i.v LT
bf [93]

:[88]
push.d -1.6
push.d 0.6
conv.d.v
call.i random(argc=1)
sub.v.d
pop.v.v local.a
pushloc.v local.aa
pushi.e 1
cmp.i.v EQ
bf [92]

:[89]
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [91]

:[90]
pushi.e 626
conv.i.v
pushloc.v local.yy
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local.xx
pushi.e 5
add.i.v
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
pushi.e 2
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.type
push.d 0.5
pushi.e 10
conv.i.v
call.i random(argc=1)
pushi.e 100
conv.i.d
div.d.v
add.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.gravity
pushi.e -14
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.d -1.55
pushloc.v local.rr
sub.v.d
push.d 0.8
conv.d.v
call.i random(argc=1)
sub.v.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.depth
pushi.e 1
sub.i.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.depth
push.d -2.2
push.d 0.6
conv.d.v
call.i random(argc=1)
sub.v.d
pop.v.v local.a
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [90]

:[91]
popz.i
b [93]

:[92]
pushi.e 626
conv.i.v
pushloc.v local.yy
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local.xx
pushi.e 5
add.i.v
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
pushi.e 2
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.type
push.d 0.063
pushi.e 4
conv.i.v
call.i random(argc=1)
pushi.e 100
conv.i.d
div.d.v
add.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.gravity
push.d -4.25
push.v self.bul
pushi.e -9
pop.v.d [stacktop]self.vspeed
pushi.e -4
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.depth
pushi.e 1
sub.i.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.directhit
pushi.e 626
conv.i.v
pushloc.v local.yy
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local.xx
pushi.e 5
add.i.v
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
pushi.e 2
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.type
push.d 0.5
pushi.e 10
conv.i.v
call.i random(argc=1)
pushi.e 100
conv.i.d
div.d.v
add.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.gravity
pushi.e -14
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.d -1.4
push.d 0.4
conv.d.v
call.i random(argc=1)
sub.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.depth
pushi.e 1
sub.i.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.depth
push.d -2.2
push.d 0.6
conv.d.v
call.i random(argc=1)
sub.v.d
pop.v.v local.a

:[93]
pushi.e 1977
pop.v.i self.sprite_index
pushi.e -180
pushi.e 50
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.angle_final
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [95]

:[94]
pushi.e 659
conv.i.v
pushloc.v local.yy
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushloc.v local.xx
pushi.e 5
add.i.v
push.v self.image_angle
pushi.e 270
add.i.v
pushi.e 50
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
push.v self.depth
pushi.e 2
sub.i.v
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.depth
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [94]

:[95]
popz.i
pushi.e 2
pop.v.i self.con

:[96]
pushi.e 1
pop.v.i local.r
pushi.e 626
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v LT
bf [98]

:[97]
pushi.e 3
pop.v.i local.r

:[98]
pushloc.v local.r
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [118]

:[99]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [117]

:[100]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 11
cmp.i.v LT
bf [102]

:[101]
push.v self.timer
pushi.e 10
conv.i.d
div.d.v
push.v self.angle_final
push.v self.image_angle
call.i lerp(argc=3)
pop.v.v self.image_angle

:[102]
push.v self.timer
push.v self.timervariance
pushi.e 15
sub.i.v
cmp.v.v LT
bf [104]

:[103]
push.v self.eggcount
push.d 0.4
cmp.d.v GT
b [105]

:[104]
push.e 0

:[105]
bf [107]

:[106]
push.v self.timer
push.v self.timervariance
pushi.e 15
sub.i.v
div.v.v
push.d 2.5
conv.d.v
push.d 1.8
conv.d.v
call.i lerp(argc=3)
pop.v.v self.image_xscale

:[107]
push.v self.timer
push.v self.timervariance
pushi.e 15
sub.i.v
cmp.v.v EQ
bf [110]

:[108]
push.v self.eggcount
push.d 0.4
cmp.d.v GT
bf [110]

:[109]
push.v self.pipiscount
push.v self.maxpipis
cmp.v.v LT
b [111]

:[110]
push.e 0

:[111]
bf [113]

:[112]
pushi.e 1980
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale

:[113]
push.v self.timer
push.v self.timervariance
cmp.v.v GTE
bf [117]

:[114]
push.v self.eggcount
push.d 0.4
sub.d.v
pop.v.v self.eggcount
pushi.e 30
pushi.e 15
conv.i.v
call.i irandom(argc=1)
add.v.i
pop.v.v self.timervariance
push.v self.eggcount
pushi.e 0
cmp.i.v GT
bf [116]

:[115]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
b [117]

:[116]
call.i instance_destroy(argc=0)
popz.v

:[117]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [99]

:[118]
popz.i

:[119]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 20
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local.yy
pushi.e 20
add.i.v
pushloc.v local.xx
pushi.e 0
conv.i.v
pushi.e 1976
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.image_angle
pushloc.v local.shake
add.v.v
pushi.e 2
conv.i.v
push.v self.image_xscale
pushloc.v local.yy
pushi.e 11
add.i.v
pushloc.v local.shake
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushloc.v local.xx
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local.yy
pushi.e 20
add.i.v
pushloc.v local.xx
pushi.e 0
conv.i.v
pushi.e 1981
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
pushi.e 26
add.i.v
pushi.e 1
conv.i.v
pushi.e 3322
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.pipiscount
push.v self.maxpipis
cmp.v.v GTE
bf [122]

:[120]
pushglb.v global.turntimer
pushi.e 10
cmp.i.v GT
bf [122]

:[121]
pushi.e 626
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [123]

:[122]
push.e 0

:[123]
bf [125]

:[124]
pushi.e 10
pop.v.i global.turntimer

:[125]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [127]

:[126]
call.i instance_destroy(argc=0)
popz.v

:[127]
push.v self.variant
pushi.e 0
cmp.i.v EQ
bf [142]

:[128]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [133]

:[129]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [131]

:[130]
push.v 872.x
pushi.e 220
add.i.v
pushi.e 80
sub.i.v
pushi.e 160
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.savex
pushi.e 625
conv.i.v
push.v 872.y
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.v
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.savex
call.i gml_Script_instance_create(argc=3)
popz.v

:[131]
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [133]

:[132]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[133]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [135]

:[134]
pushi.e 626
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 20
sub.i.v
push.v self.savex
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
push.d 0.2
pushi.e 10
conv.i.v
call.i random(argc=1)
pushi.e 100
conv.i.d
div.d.v
add.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.gravity
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 2
pop.v.i self.con

:[135]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [142]

:[136]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 50
cmp.i.v GTE
bf [142]

:[137]
push.v self.eggcount
push.e 1
sub.i.v
pop.v.v self.eggcount
push.v self.eggcount
pushi.e 0
cmp.i.v GT
bf [141]

:[138]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 625
pushenv [140]

:[139]
pushi.e 1
pop.v.i self.con

:[140]
popenv [139]
b [142]

:[141]
call.i instance_destroy(argc=0)
popz.v

:[142]
push.v self.variant
pushi.e 1
cmp.i.v EQ
bf [end]

:[143]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [148]

:[144]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [146]

:[145]
pushi.e 625
conv.i.v
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v 872.x
pushi.e 190
add.i.v
pushi.e 50
sub.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wall
pushi.e 1
push.v self.wall
pushi.e -9
pop.v.i [stacktop]self.type

:[146]
push.v self.timer
pushi.e 10
cmp.i.v GTE
bf [148]

:[147]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[148]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [150]

:[149]
pushi.e 626
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 20
sub.i.v
push.v self.wall
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
push.d 0.2
pushi.e 10
conv.i.v
call.i random(argc=1)
pushi.e 100
conv.i.d
div.d.v
add.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.gravity
pushi.e 1
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.wall
pushi.e -9
push.v [stacktop]self.id
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.parent
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 2
pop.v.i self.con

:[150]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [157]

:[151]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 50
cmp.i.v GTE
bf [157]

:[152]
push.v self.eggcount
push.e 1
sub.i.v
pop.v.v self.eggcount
push.v self.eggcount
pushi.e 0
cmp.i.v GT
bf [156]

:[153]
pushi.e 0
pop.v.i self.con
pushi.e -40
pop.v.i self.timer
push.v self.wall
pushi.e -9
pushenv [155]

:[154]
pushi.e 1
pop.v.i self.con

:[155]
popenv [154]
b [157]

:[156]
call.i instance_destroy(argc=0)
popz.v

:[157]
push.v self.con2
pushi.e 0
cmp.i.v EQ
bf [162]

:[158]
push.v self.timer2
push.e 1
add.i.v
pop.v.v self.timer2
push.v self.timer2
pushi.e 40
cmp.i.v EQ
bf [160]

:[159]
pushi.e 625
conv.i.v
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v 872.x
pushi.e 280
add.i.v
pushi.e 50
sub.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.wall2
pushi.e 1
push.v self.wall2
pushi.e -9
pop.v.i [stacktop]self.type

:[160]
push.v self.timer2
pushi.e 50
cmp.i.v GTE
bf [162]

:[161]
pushi.e 1
pop.v.i self.con2
pushi.e 0
pop.v.i self.timer2

:[162]
push.v self.con2
pushi.e 1
cmp.i.v EQ
bf [164]

:[163]
pushi.e 626
conv.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
pushi.e 20
add.i.v
push.v self.wall2
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
push.d 0.2
pushi.e 10
conv.i.v
call.i random(argc=1)
pushi.e 100
conv.i.d
div.d.v
add.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.gravity
pushi.e 90
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.gravity_direction
pushi.e 1
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.wall2
pushi.e -9
push.v [stacktop]self.id
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.parent
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 2
pop.v.i self.con2

:[164]
push.v self.con2
pushi.e 2
cmp.i.v EQ
bf [171]

:[165]
push.v self.timer2
push.e 1
add.i.v
pop.v.v self.timer2
push.v self.timer2
pushi.e 50
cmp.i.v GTE
bf [171]

:[166]
push.v self.eggcount
push.e 1
sub.i.v
pop.v.v self.eggcount
push.v self.eggcount
pushi.e 0
cmp.i.v GT
bf [170]

:[167]
pushi.e 0
pop.v.i self.con2
pushi.e 0
pop.v.i self.timer2
push.v self.wall2
pushi.e -9
pushenv [169]

:[168]
pushi.e 1
pop.v.i self.con

:[169]
popenv [168]
b [171]

:[170]
call.i instance_destroy(argc=0)
popz.v

:[171]
push.v self.timer3
push.e 1
add.i.v
pop.v.v self.timer3
push.v self.timer3
pushi.e 150
cmp.i.v EQ
bf [end]

:[172]
pushi.e 626
conv.i.v
push.v 872.y
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bul
push.d 0.6
pushi.e 10
conv.i.v
call.i random(argc=1)
pushi.e 100
conv.i.d
div.d.v
add.v.d
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.gravity
pushi.e 180
push.v self.bul
pushi.e -9
pop.v.i [stacktop]self.gravity_direction
push.v self.target
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.bul
pushi.e -9
pop.v.v [stacktop]self.damage

:[end]