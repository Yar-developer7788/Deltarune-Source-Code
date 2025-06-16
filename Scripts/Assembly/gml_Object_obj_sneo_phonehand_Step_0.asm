.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [7]

:[1]
push.v self.boss
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [7]

:[2]
push.v self.orientation
push.s "top"@6226
cmp.s.v EQ
bf [4]

:[3]
push.v self.boss
pushi.e -9
push.v [stacktop]self.x
pushi.e 10
sub.i.v
pop.v.v self.jointx
push.v self.y
pushi.e 30
sub.i.v
pop.v.v self.jointy

:[4]
push.v self.orientation
push.s "bottom"@4636
cmp.s.v EQ
bf [6]

:[5]
pushi.e -1
pop.v.i self.image_yscale
push.v self.boss
pushi.e -9
push.v [stacktop]self.x
pushi.e 10
sub.i.v
pop.v.v self.jointx
push.v self.y
pushi.e 30
add.i.v
pop.v.v self.jointy

:[6]
push.v self.jointy
pop.v.v self.remjointy
pushi.e 1
pop.v.i self.init

:[7]
push.v self.btimer
pushi.e 13
cmp.i.v EQ
bf [12]

:[8]
push.v self.image_yscale
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
pushi.e 2
pop.v.i self.image_yscale

:[10]
push.v self.image_yscale
pushi.e 0
cmp.i.v LT
bf [12]

:[11]
pushi.e -2
pop.v.i self.image_yscale

:[12]
push.v self.image_yscale
pushi.e 1
cmp.i.v GT
bf [14]

:[13]
push.v self.image_yscale
push.d 0.2
sub.d.v
pop.v.v self.image_yscale

:[14]
push.v self.image_yscale
pushi.e -1
cmp.i.v LT
bf [16]

:[15]
push.v self.image_yscale
push.d 0.2
add.d.v
pop.v.v self.image_yscale

:[16]
pushi.e 0
pop.v.i self.movingcheck
push.v self.alt
pushi.e 0
cmp.i.v EQ
bf [25]

:[17]
push.v self.crawlsiner
push.e 1
add.i.v
pop.v.v self.crawlsiner
push.v self.orientation
push.s "top"@6226
cmp.s.v EQ
bf [20]

:[18]
push.v self.crawlsiner
push.v self.period
div.v.v
call.i sin(argc=1)
pushi.e 0
cmp.i.v LT
bf [20]

:[19]
pushi.e 1
pop.v.i self.wasmoving
pushi.e 1
pop.v.i self.movingcheck
push.v self.y
push.v self.crawlsiner
push.v self.period
div.v.v
call.i cos(argc=1)
push.v self.amplitude
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y
push.v self.x
push.v self.crawlsiner
push.v self.period
div.v.v
call.i sin(argc=1)
push.v self.amplitude
mul.v.v
add.v.v
pop.v.v self.x

:[20]
push.v self.orientation
push.s "bottom"@4636
cmp.s.v EQ
bf [23]

:[21]
push.v self.crawlsiner
push.v self.period
div.v.v
push.d 1.5707963267948966
add.d.v
call.i cos(argc=1)
pushi.e 0
cmp.i.v LT
bf [23]

:[22]
pushi.e 1
pop.v.i self.wasmoving
pushi.e 1
pop.v.i self.movingcheck
push.v self.y
push.v self.crawlsiner
push.v self.period
div.v.v
push.d 1.5707963267948966
add.d.v
call.i sin(argc=1)
push.v self.amplitude
mul.v.v
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y
push.v self.x
push.v self.crawlsiner
push.v self.period
div.v.v
push.d 1.5707963267948966
add.d.v
call.i cos(argc=1)
push.v self.amplitude
mul.v.v
add.v.v
pop.v.v self.x

:[23]
push.v self.boss
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [25]

:[24]
push.v self.x
push.v self.boss
pushi.e -9
push.v [stacktop]self.x
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.jointx
push.v self.remjointy
push.v self.y
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.jointy

:[25]
push.v self.alt
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.v self.boss
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [28]

:[27]
push.e 0

:[28]
bf [44]

:[29]
push.v self.orientation
push.s "top"@6226
cmp.s.v EQ
bf [31]

:[30]
push.v self.crawlsiner
push.e 1
add.i.v
pop.v.v self.crawlsiner
b [32]

:[31]
push.v self.crawlsiner
push.e 1
sub.i.v
pop.v.v self.crawlsiner

:[32]
call.i gml_Script_camerax(argc=0)
pushi.e 200
add.i.v
pop.v.v self.xx
push.v self.boss
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
sub.i.v
pop.v.v self.endx
push.v self.xx
push.v self.endx
push.v self.xx
sub.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.crawlsiner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.v self.endx
push.v self.xx
sub.v.v
pushi.e 2
conv.i.d
div.d.v
mul.v.v
add.v.v
pop.v.v self.x
push.v self.btimer
push.e 1
add.i.v
pop.v.v self.btimer
pushi.e 18
pop.v.i self.threshold
push.v self.orientation
push.s "top"@6226
cmp.s.v EQ
bf [34]

:[33]
pushi.e 28
pop.v.i self.threshold

:[34]
push.v self.btimer
push.v self.threshold
cmp.v.v GTE
bf [42]

:[35]
pushi.e 593
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shot
push.v self.orientation
push.s "top"@6226
cmp.s.v EQ
bf [37]

:[36]
pushi.e 270
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
add.v.i
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.direction

:[37]
push.v self.orientation
push.s "bottom"@4636
cmp.s.v EQ
bf [39]

:[38]
pushi.e 90
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
add.v.i
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.direction

:[39]
pushi.e 3
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 2050
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.shot
pushi.e -9
push.v [stacktop]self.direction
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 3
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.target
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 0
pop.v.i self.btimer
push.v self.orientation
push.s "top"@6226
cmp.s.v EQ
bf [41]

:[40]
pushi.e 10
pop.v.i self.btimer
b [42]

:[41]
pushi.e 0
pop.v.i self.btimer

:[42]
push.v self.boss
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [44]

:[43]
push.v self.x
push.v self.boss
pushi.e -9
push.v [stacktop]self.x
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.jointx
push.v self.remjointy
push.v self.y
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.jointy

:[44]
push.v self.difficulty
pushi.e 99
cmp.i.v EQ
bf [56]

:[45]
push.v self.movingcheck
pushi.e 0
cmp.i.v EQ
bf [47]

:[46]
push.v self.wasmoving
pushi.e 1
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [56]

:[49]
pushi.e 0
pop.v.i self.wasmoving
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [55]

:[50]
pushi.e 593
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shot
push.v self.orientation
push.s "top"@6226
cmp.s.v EQ
bf [52]

:[51]
pushi.e 270
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
add.v.i
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.direction

:[52]
push.v self.orientation
push.s "bottom"@4636
cmp.s.v EQ
bf [54]

:[53]
pushi.e 90
pushi.e 10
conv.i.v
pushi.e -10
conv.i.v
call.i random_range(argc=2)
add.v.i
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.direction

:[54]
pushi.e 8
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 2050
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.shot
pushi.e -9
push.v [stacktop]self.direction
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.target
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 3
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [50]

:[55]
popz.i

:[56]
push.v self.difficulty
pushi.e 99
cmp.i.v EQ
bf [end]

:[57]
push.v self.btimer
pushi.e 6
cmp.i.v GTE
bf [end]

:[58]
pushi.e 593
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shot
push.v self.orientation
push.s "top"@6226
cmp.s.v EQ
bf [60]

:[59]
pushi.e 270
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
call.i random_range(argc=2)
add.v.i
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.direction

:[60]
push.v self.orientation
push.s "bottom"@4636
cmp.s.v EQ
bf [62]

:[61]
pushi.e 90
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
call.i random_range(argc=2)
add.v.i
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.direction

:[62]
pushi.e 4
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 2050
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.shot
pushi.e -9
push.v [stacktop]self.direction
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.target
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 3
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 0
pop.v.i self.btimer

:[end]