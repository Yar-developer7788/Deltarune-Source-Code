.localvar 2 arguments

:[0]
push.v self.grazed
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.grazetimer
pushi.e 1
add.i.v
pop.v.v self.grazetimer
push.v self.grazetimer
pushi.e 30
cmp.i.v GTE
bf [3]

:[2]
pushi.e 0
pop.v.i self.grazetimer
pushi.e 0
pop.v.i self.grazed

:[3]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [59]

:[4]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [19]

:[5]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e -23
pop.v.i self.plugxend
push.d 0.2
conv.d.v
push.v self.plugxend
push.v self.plugx
call.i lerp(argc=3)
pop.v.v self.plugx
b [8]

:[7]
pushi.e 0
pop.v.i self.plugxend
push.d 0.15
conv.d.v
push.v self.plugxend
push.v self.plugx
call.i lerp(argc=3)
pop.v.v self.plugx

:[8]
push.d 0.1
conv.d.v
pushi.e 1
conv.i.v
push.v self.plugalpha
call.i lerp(argc=3)
pop.v.v self.plugalpha
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [10]

:[9]
push.v self.timer
pushi.e 25
cmp.i.v LTE
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.v 872.xstart
pushi.e 35
push.v self.timer
sub.v.i
pushi.e 2
conv.i.d
div.d.v
pushi.e -35
push.v self.timer
add.v.i
pushi.e 2
conv.i.d
div.d.v
call.i random_range(argc=2)
add.v.v
pop.v.v 872.x
push.v 872.ystart
pushi.e 35
push.v self.timer
sub.v.i
pushi.e 2
conv.i.d
div.d.v
pushi.e -35
push.v self.timer
add.v.i
pushi.e 2
conv.i.d
div.d.v
call.i random_range(argc=2)
add.v.v
pop.v.v 872.y

:[13]
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [17]

:[14]
pushi.e 1
pop.v.i self.plugalpha
push.v self.plugxend
pop.v.v self.plugx
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 1
cmp.i.v GTE
bf [16]

:[15]
pushi.e 1
pop.v.i self.active
b [17]

:[16]
pushi.e 0
pop.v.i self.active

:[17]
push.v self.timer
pushi.e 25
cmp.i.v GTE
bf [19]

:[18]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.plugx

:[19]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [58]

:[20]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.shottimer
push.e 1
add.i.v
pop.v.v self.shottimer
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.v self.timer
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.amplitude
mul.v.v
pop.v.v self.moveamount

:[22]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1
pop.v.i self.moveamount

:[24]
pushi.e 8
pop.v.i self.shotthreshold
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 15
pop.v.i self.shotthreshold

:[26]
push.v self.shottimer
push.v self.shotthreshold
cmp.v.v GTE
bf [43]

:[27]
pushi.e 0
pop.v.i self.shottimer
pushi.e 8
conv.i.v
push.v self.y
pushi.e -100
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.lightning
push.v self.lightning
pushi.e -9
pushenv [29]

:[28]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 1
pop.v.i self.destroyonhit

:[29]
popenv [28]
push.v self.speedmode
pushi.e 1
cmp.i.v EQ
bf [39]

:[30]
push.v self.image_angle
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
call.i lengthdir_x(argc=2)
pop.v.v self.wx
push.v self.image_angle
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
call.i lengthdir_y(argc=2)
pop.v.v self.wy
push.v self.moveamount
pushi.e 0
cmp.i.v GT
bf [32]

:[31]
push.v self.x
push.v self.xx
add.v.v
push.v self.wx
add.v.v
push.v self.lightning
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.yy
add.v.v
push.v self.wy
add.v.v
push.v self.lightning
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 180
push.v self.image_angle
add.v.i
push.v self.lightning
pushi.e -9
pop.v.v [stacktop]self.gravity_direction

:[32]
push.v self.moveamount
pushi.e 0
cmp.i.v LT
bf [34]

:[33]
push.v self.x
push.v self.xx
add.v.v
push.v self.wx
sub.v.v
push.v self.lightning
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.yy
add.v.v
push.v self.wy
add.v.v
push.v self.lightning
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.image_angle
push.v self.lightning
pushi.e -9
pop.v.v [stacktop]self.gravity_direction

:[34]
push.v self.lightning
pushi.e -9
push.v [stacktop]self.gravity_direction
pushi.e 180
add.i.v
push.v self.lightning
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 5
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.lightning
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.depth
pushi.e 5
sub.i.v
push.v self.lightning
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
pushi.e 6
pushi.e 1
conv.i.v
call.i random(argc=1)
add.v.i
push.v self.lightning
pushi.e -9
pop.v.v [stacktop]self.speed

:[36]
push.v self.lightning
pushi.e -9
pushenv [38]

:[37]
push.d 1.5
conv.d.v
call.i random(argc=1)
push.v self.direction
pushi.e 270
conv.i.v
pushi.e 90
conv.i.v
call.i choose(argc=2)
add.v.v
call.i motion_add(argc=2)
popz.v

:[38]
popenv [37]

:[39]
push.d 0.3
push.v self.lightning
pushi.e -9
pop.v.d [stacktop]self.gravity
push.d 1.5
push.v self.lightning
pushi.e -9
pop.v.d [stacktop]self.image_xscale
push.d 1.5
push.v self.lightning
pushi.e -9
pop.v.d [stacktop]self.image_yscale
push.v self.lightning
pushi.e -9
pushenv [42]

:[40]
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [42]

:[41]
pushi.e -5
push.v 574.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage

:[42]
popenv [40]
push.v self.lightning
call.i gml_Script_scr_bullet_inherit(argc=1)
popz.v
pushi.e 1
push.v self.lightning
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e 1954
push.v self.lightning
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[43]
push.v self.timer
pushi.e 150
cmp.i.v GTE
bf [47]

:[44]
push.v self.amplitude
pushi.e 0
cmp.i.v GT
bf [46]

:[45]
push.v self.amplitude
pushi.e 2
sub.i.v
pop.v.v self.amplitude

:[46]
b [48]

:[47]
push.d 0.1
conv.d.v
push.v self.maxamplitude
push.v self.amplitude
call.i lerp(argc=3)
pop.v.v self.amplitude

:[48]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
push.v 872.xstart
push.v self.moveamount
add.v.v
pop.v.v 872.x

:[50]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
push.v self.timer
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.amplitude
mul.v.v
pop.v.v self.moveamount
push.v 872.xstart
push.v self.moveamount
add.v.v
pop.v.v 872.x
push.v 872.image_angle
push.d 1.9565217391304348
add.d.v
pop.v.v 872.image_angle

:[52]
push.v self.amplitude
pushi.e 0
cmp.i.v LTE
bf [55]

:[53]
push.v self.timer
pushi.e 230
cmp.i.v GTE
bf [55]

:[54]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v GT
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
pushi.e 2
pop.v.i global.turntimer

:[58]
push.v 872.x
push.v self.xx
sub.v.v
pop.v.v self.x
push.v 872.y
push.v self.yy
sub.v.v
pop.v.v self.y
push.v 872.image_xscale
pop.v.v self.image_xscale
push.v 872.image_yscale
pop.v.v self.image_yscale
push.v 872.image_angle
pop.v.v self.image_angle
b [end]

:[59]
call.i instance_destroy(argc=0)
popz.v

:[end]