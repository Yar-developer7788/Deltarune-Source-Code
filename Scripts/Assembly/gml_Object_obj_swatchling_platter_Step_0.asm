.localvar 2 arguments
.localvar 23575 offbird 10592
.localvar 23576 _bird_index 10593
.localvar 6483 yy 10594

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.platterLid
call.i gml_Script_scr_bullet_inherit(argc=1)
popz.v
push.v self.platterPlate
call.i gml_Script_scr_bullet_inherit(argc=1)
popz.v
push.v self.startColor
pop.v.v self.targetColor
push.v self.startColor
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.startColor
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.image_angle
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.image_angle
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.image_angle
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.platterLid
pushi.e -9
dup.i 4
push.v [stacktop]self.image_xscale
pushi.e -1
mul.i.v
pop.i.v [stacktop]self.image_xscale

:[3]
pushi.e 1
pop.v.i self.init

:[4]
push.v self.hasCandy
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 442
conv.i.v
push.v self.y
push.v self.x
pushi.e 20
push.v self.side
neg.v
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
call.i @@This@@(argc=0)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.sourcePlatter
push.v self.target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.side
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.side
pushi.e -1
pop.v.i self.hasCandy

:[6]
push.v self.lidOff
conv.v.b
not.b
bf [41]

:[7]
push.v self.timer
pushi.e 0
cmp.i.v GTE
bf [35]

:[8]
push.v self.opened
conv.v.b
not.b
bf [32]

:[9]
push.v self.firstOpen
conv.v.b
bf [11]

:[10]
pushi.e 0
pop.v.b self.firstOpen

:[11]
pushi.e 1
pop.v.b self.opened
push.v self.birds
pushi.e 1
cmp.i.v GT
pop.v.b self.birdfork
pushi.e 1
pop.v.i local.offbird
push.v self.hasCandy
pushi.e -1
cmp.i.v EQ
bf [13]

:[12]
push.v self.birds
push.e 1
sub.i.v
pop.v.v self.birds

:[13]
push.v self.birds
pushi.e 2
cmp.i.v GT
bt [15]

:[14]
push.v self.hasCandy
pushi.e -1
cmp.i.v EQ
b [16]

:[15]
push.e 1

:[16]
bf [18]

:[17]
push.v self.birds
pushi.e 1
sub.i.v
call.i irandom(argc=1)
pop.v.v local.offbird

:[18]
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
push.v self.birds
cmp.v.v LT
bf [31]

:[20]
push.v self.swatchbc
pushi.e -9
push.v [stacktop]self.bird_count
pushi.e 1
sub.i.v
push.v self.i
sub.v.v
pop.v.v local._bird_index
pushloc.v local._bird_index
pushi.e 0
cmp.i.v LT
bf [22]

:[21]
b [31]

:[22]
push.v self.y
pushi.e 10
add.i.v
pop.v.v local.yy
push.v self.birdfork
conv.v.b
bf [26]

:[23]
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.v self.y
pushi.e 10
sub.i.v
pop.v.v self.y
b [26]

:[25]
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y

:[26]
pushi.e 446
conv.i.v
pushloc.v local.yy
push.v self.x
pushi.e 20
push.v self.side
neg.v
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.image_xscale
pushi.e -1
mul.i.v
pop.i.v [stacktop]self.image_xscale

:[28]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.platter_spawn
push.v self.swatchbc
pushi.e -9
push.v self.i
conv.v.i
push.v [array]self.bird_color
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.swatchbc
pushi.e -9
push.v self.i
conv.v.i
push.v [array]self.red_damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.swatchbc
pushi.e -9
push.v self.i
conv.v.i
push.v [array]self.red_target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 4
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.i
pushloc.v local.offbird
cmp.v.v EQ
bf [30]

:[29]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.fixed_angle

:[30]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [19]

:[31]
pushi.e 0
pop.v.i self.birds

:[32]
pushi.e 1
push.v self.timer
pushi.e 20
sub.i.v
call.i abs(argc=1)
pushi.e 20
conv.i.d
div.d.v
sub.v.i
pop.v.v self.lidLerp
pushi.e -1
push.v self.lidLerp
mul.v.i
push.v self.lidLerp
pushi.e 2
sub.i.v
mul.v.v
pop.v.v self.lidOffset
push.v self.firstOpen
conv.v.b
bf [34]

:[33]
pushi.e 0
conv.i.v
push.v self.lidOffset
call.i min(argc=2)
pop.v.v self.lidOffset

:[34]
push.v self.x
push.v self.lidOffset
pushi.e 10
mul.i.v
push.v self.side
mul.v.v
add.v.v
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.x
push.v self.lidOffset
pushi.e 60
mul.i.v
push.v self.side
mul.v.v
sub.v.v
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.x
b [41]

:[35]
push.v self.timer
pushi.e -10
cmp.i.v LT
bf [37]

:[36]
push.v self.opened
conv.v.b
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 1
push.v self.timer
pushi.e 15
add.i.v
call.i abs(argc=1)
pushi.e 5
conv.i.d
div.d.v
sub.v.i
pop.v.v self.lidLerp
pushi.e -1
push.v self.lidLerp
mul.v.i
push.v self.lidLerp
pushi.e 2
sub.i.v
mul.v.v
pop.v.v self.lidOffset
push.v self.x
push.v self.lidOffset
pushi.e 20
mul.i.v
push.v self.side
mul.v.v
add.v.v
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.x
push.v self.lidOffset
pushi.e 20
mul.i.v
push.v self.side
mul.v.v
add.v.v
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.x
b [41]

:[40]
push.v self.x
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.x
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.x

:[41]
push.v self.y
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.y
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.timer
pushi.e 40
cmp.i.v GTE
bf [43]

:[42]
pushi.e -20
pop.v.i self.timer
b [end]

:[43]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[end]