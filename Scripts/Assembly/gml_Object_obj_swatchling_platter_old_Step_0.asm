.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

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
pushi.e 1
pop.v.i self.init

:[2]
push.v self.hasCandy
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 442
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
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
pushi.e 0
pop.v.i self.hasCandy

:[4]
push.v self.swatchbc
pushi.e -9
push.v [stacktop]self.red_count
push.v self.swatchbc
pushi.e -9
push.v [stacktop]self.blue_count
cmp.v.v GT
bf [6]

:[5]
push.v self.lidOff
conv.v.b
b [7]

:[6]
push.e 0

:[7]
bf [12]

:[8]
push.v self.lidOff
conv.v.b
bf [11]

:[9]
push.v self.platterLid
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.lidSpeed
add.v.v
pop.i.v [stacktop]self.y
push.v self.lidSpeed
push.d 0.685
add.d.v
pop.v.v self.lidSpeed
push.v self.platterLid
pushi.e -9
push.v [stacktop]self.y
push.v self.ystart
cmp.v.v GTE
bf [11]

:[10]
pushi.e 0
pop.v.b self.lidOff
push.v self.y
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e -20
pop.v.i self.timer

:[11]
push.v self.y
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.y
b [23]

:[12]
push.v self.lidOff
conv.v.b
not.b
bf [23]

:[13]
push.v self.timer
pushi.e 0
cmp.i.v GTE
bf [17]

:[14]
push.v self.opened
conv.v.b
not.b
bf [16]

:[15]
pushi.e 1
pop.v.b self.opened

:[16]
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
push.v self.y
push.v self.lidOffset
pushi.e 10
mul.i.v
add.v.v
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.y
push.v self.lidOffset
pushi.e 60
mul.i.v
sub.v.v
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.y
b [23]

:[17]
push.v self.timer
pushi.e -10
cmp.i.v LT
bf [19]

:[18]
push.v self.opened
conv.v.b
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
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
push.v self.y
push.v self.lidOffset
pushi.e 20
mul.i.v
add.v.v
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.y
push.v self.lidOffset
pushi.e 20
mul.i.v
add.v.v
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.y
b [23]

:[22]
push.v self.y
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.y
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.y

:[23]
push.v self.x
push.v self.platterPlate
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.x
push.v self.platterLid
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.swatchbc
pushi.e -9
push.v [stacktop]self.red_count
push.v self.swatchbc
pushi.e -9
push.v [stacktop]self.blue_count
cmp.v.v LTE
bt [25]

:[24]
push.v self.timer
pushi.e -1
cmp.i.v LT
b [26]

:[25]
push.e 1

:[26]
bf [31]

:[27]
push.v self.swatchbc
pushi.e -9
push.v [stacktop]self.blue_count
pushi.e 0
cmp.i.v EQ
bt [29]

:[28]
push.v self.timer
pushi.e -1
cmp.i.v NEQ
b [30]

:[29]
push.e 1

:[30]
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[34]
push.v self.timer
pushi.e 40
cmp.i.v GTE
bf [end]

:[35]
pushi.e -20
pop.v.i self.timer

:[end]