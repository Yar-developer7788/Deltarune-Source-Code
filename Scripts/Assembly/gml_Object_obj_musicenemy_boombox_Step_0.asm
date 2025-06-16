.localvar 2 arguments
.localvar 7017 a 13687

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
push.d 0.1
mul.d.v
sub.v.i
pop.v.v self.image_yscale
push.v self.buffer
push.e 1
sub.i.v
pop.v.v self.buffer
push.v self.makebullet
pushi.e 0
cmp.i.v GT
bf [46]

:[3]
push.v self.makebullet
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
pushi.e 723
conv.i.v
push.v self.y
push.v self.sprite_height
sub.v.v
pushi.e 90
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
push.v 631.y
pushi.e 8
add.i.v
push.v 631.x
pushi.e 8
add.i.v
push.v self.bullet
pushi.e -9
push.v [stacktop]self.y
push.v self.bullet
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction
push.d 3.5
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.speed
push.v self.depth
pushi.e 10
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.grow
pushi.e 1
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.active
push.v self.damage
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 100
conv.i.v
call.i irandom(argc=1)
pushi.e 50
cmp.i.v LT
bf [6]

:[5]
push.v self.bullet
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 70
add.i.v
pop.i.v [stacktop]self.y

:[6]
push.v self.makebullet
pushi.e 2
cmp.i.v EQ
bf [20]

:[7]
push.v self.segmentcountmax
pushi.e 0
cmp.i.v EQ
bf [19]

:[8]
pushi.e 723
conv.i.v
push.v self.y
push.v self.sprite_height
sub.v.v
pushi.e 90
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[9]
push.v self.lightningvary
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.v 872.y
pushi.e 0
conv.i.v
push.v 872.sprite_height
neg.v
pushi.e 2
conv.i.d
div.d.v
call.i random_range(argc=2)
add.v.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.y

:[11]
push.v self.lightningvary
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
call.i random_range(argc=2)
add.v.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.y

:[13]
push.v self.bullet
pushi.e -9
pushenv [15]

:[14]
call.i gml_Script_scr_afterimage_grow(argc=0)
popz.v

:[15]
popenv [14]
pushi.e 1
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.4
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.v self.image_xscale
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.bullet
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.image_xscale
pushi.e 13
mul.i.v
sub.v.v
pop.i.v [stacktop]self.x
push.d -0.15
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e 2041
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.bullet
pushi.e -9
push.v [stacktop]self.direction
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.depth
pushi.e 10
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.growb
pushi.e 90
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 0
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.copymake
pushi.e 1
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.active
push.v self.damage
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.lightningvary
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.i self.lightningvary
b [18]

:[17]
pushi.e 0
pop.v.i self.lightningvary

:[18]
b [20]

:[19]
pushi.e 1
pop.v.i self.makelong

:[20]
push.v self.makebullet
pushi.e 3
cmp.i.v EQ
bf [45]

:[21]
push.v self.singlenote
pushi.e 1
cmp.i.v EQ
bf [42]

:[22]
pushi.e 727
pushenv [24]

:[23]
pushi.e 0
pop.v.i self.bultype

:[24]
popenv [23]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [29]

:[25]
pushi.e 727
pushenv [28]

:[26]
push.v self.headimage
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
pop.v.i self.active

:[28]
popenv [26]

:[29]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [34]

:[30]
pushi.e 727
pushenv [33]

:[31]
push.v self.headimage
pushi.e 5
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1
pop.v.i self.active

:[33]
popenv [31]

:[34]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [39]

:[35]
pushi.e 727
pushenv [38]

:[36]
push.v self.headimage
pushi.e 8
cmp.i.v EQ
bf [38]

:[37]
pushi.e 1
pop.v.i self.active

:[38]
popenv [36]

:[39]
push.v self.type
push.e 1
add.i.v
pop.v.v self.type
push.v self.type
pushi.e 2
cmp.i.v GT
bf [41]

:[40]
pushi.e 0
pop.v.i self.type

:[41]
b [45]

:[42]
pushi.e 727
pushenv [44]

:[43]
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.headframe
pushi.e 1
pop.v.i self.bultype

:[44]
popenv [43]

:[45]
pushi.e 2
pop.v.i self.buffer

:[46]
pushi.e 0
pop.v.i self.makebullet
push.v self.makelong
pushi.e 1
cmp.i.v EQ
bf [end]

:[47]
push.v self.makelongtimer
push.e 1
add.i.v
pop.v.v self.makelongtimer
push.v self.makelongtimer
pushi.e 4
cmp.i.v GTE
bf [end]

:[48]
pushi.e 0
pop.v.i local.a
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [70]

:[49]
pushi.e 724
conv.i.v
push.v self.y
push.v self.sprite_height
sub.v.v
pushi.e 90
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [51]

:[50]
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
push.v 872.sprite_height
neg.v
pushi.e 2
conv.i.d
div.d.v
call.i random_range(argc=2)
add.v.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.y

:[51]
push.d 0.75
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.d 0.2
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.v self.image_xscale
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.bullet
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.image_xscale
pushi.e 13
mul.i.v
sub.v.v
pop.i.v [stacktop]self.x
push.d -0.2
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.friction
push.d 0.37
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.speed
push.v self.y
pushi.e 45
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.depth
pushi.e 10
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.active
push.v self.damage
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.image_xscale
pushi.e 0
cmp.i.v LT
bf [61]

:[52]
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
push.v self.direction
pushi.e 180
add.i.v
push.v self.angleoffset
add.v.v
pushi.e 80
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction

:[54]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
push.v self.direction
pushi.e 180
add.i.v
push.v self.angleoffset
add.v.v
pushi.e 40
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction

:[56]
pushloc.v local.a
pushi.e 2
cmp.i.v EQ
bf [58]

:[57]
push.v self.direction
pushi.e 180
add.i.v
push.v self.angleoffset
add.v.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction

:[58]
pushloc.v local.a
pushi.e 3
cmp.i.v EQ
bf [60]

:[59]
push.v self.direction
pushi.e 180
add.i.v
push.v self.angleoffset
add.v.v
pushi.e 40
add.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction

:[60]
b [69]

:[61]
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
push.v self.direction
push.v self.angleoffset
add.v.v
pushi.e 80
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction

:[63]
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
push.v self.direction
push.v self.angleoffset
add.v.v
pushi.e 40
sub.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction

:[65]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
push.v self.direction
push.v self.angleoffset
add.v.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction

:[67]
pushloc.v local.a
pushi.e 2
cmp.i.v EQ
bf [69]

:[68]
push.v self.direction
push.v self.angleoffset
add.v.v
pushi.e 40
add.i.v
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.direction

:[69]
push.v self.bullet
pushi.e -9
push.v [stacktop]self.direction
push.v self.bullet
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [49]

:[70]
popz.i
push.v self.segmentcount
push.v self.segmentcountmax
cmp.v.v LT
bf [72]

:[71]
push.v self.segmentcount
pushi.e 1
add.i.v
pop.v.v self.segmentcount
pushi.e 0
pop.v.i self.makelongtimer
b [end]

:[72]
pushi.e 0
pop.v.i self.segmentcountmax
pushi.e 0
pop.v.i self.segmentcount
pushi.e 0
pop.v.i self.makelong
pushi.e 0
pop.v.i self.makelongtimer

:[end]