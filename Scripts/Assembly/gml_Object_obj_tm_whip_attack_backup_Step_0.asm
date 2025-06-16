.localvar 2 arguments
.localvar 14249 rotation 10751
.localvar 23811 balldirection 10752
.localvar 23812 handx 10753
.localvar 23813 handy 10754
.localvar 6706 d 10755

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.quizmode
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.quizmode
pushi.e 1
pop.v.i self.init

:[2]
push.v self.truetimer
push.e 1
add.i.v
pop.v.v self.truetimer
push.v self.attacktimer
push.e 1
add.i.v
pop.v.v self.attacktimer
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.attacktimer
pushi.e 20
cmp.i.v GTE
b [5]

:[4]
push.e 0

:[5]
bf [9]

:[6]
pushglb.v global.turntimer
pushi.e 30
cmp.i.v GT
bf [8]

:[7]
pushi.e 1
pop.v.i self.state
b [9]

:[8]
pushi.e 19
pop.v.i self.attacktimer

:[9]
push.v self.attacktimer
pushi.e 5
cmp.i.v EQ
bf [13]

:[10]
push.v self.quizmode
conv.v.b
not.b
bf [12]

:[11]
push.v 631.x
pushi.e 8
add.i.v
pop.v.v self.targetx
push.v 631.y
pushi.e 8
add.i.v
pop.v.v self.targety

:[12]
push.v self.targetx
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.origx
push.v self.targety
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.origy
push.v self.attackoffset
pushi.e 45
add.i.v
pop.v.v self.attackoffset

:[13]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.attacktimer
pushi.e 35
cmp.i.v GTE
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 2
pop.v.i self.state

:[18]
push.v self.attacktimer
pushi.e 35
cmp.i.v GTE
bf [21]

:[19]
push.v self.attacktimer
pushi.e 5
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.v self.attacktimer
pushi.e 45
cmp.i.v LTE
b [22]

:[21]
push.e 0

:[22]
bf [29]

:[23]
push.v self.attackoffset
pop.v.v local.rotation
pushi.e 0
pop.v.i local.balldirection
push.v self.rotateCracker
conv.v.b
bf [25]

:[24]
push.v self.x
pushi.e -1
pushi.e 1
push.v [array]self.xOffset
add.v.v
pop.v.v local.handx
push.v self.y
pushi.e -1
pushi.e 1
push.v [array]self.yOffset
add.v.v
pop.v.v local.handy
pushloc.v local.handy
pushloc.v local.handx
push.v self.targety
push.v self.targetx
call.i point_direction(argc=4)
pop.v.v local.balldirection

:[25]
push.v self.quizmode
conv.v.b
not.b
bf [29]

:[26]
pushi.e 0
pop.v.i self.i

:[27]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [29]

:[28]
pushi.e 369
conv.i.v
push.v self.targety
push.v self.targetx
call.i gml_Script_instance_create(argc=3)
pop.v.v local.d
push.d 0.1
pushloc.v local.d
pushi.e -9
pop.v.d [stacktop]self.speed
push.d -0.5
pushloc.v local.d
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e 1806
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.timepoints
pushloc.v local.rotation
pushi.e 90
push.v self.i
mul.v.i
add.v.v
pushloc.v local.balldirection
add.v.v
pushloc.v local.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushloc.v local.d
pushi.e -9
push.v [stacktop]self.direction
pushi.e 90
add.i.v
pushloc.v local.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [27]

:[29]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [31]

:[30]
push.v self.attacktimer
pushi.e 55
cmp.i.v GT
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 3
pop.v.i self.state

:[34]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [36]

:[35]
push.v self.attacktimer
pushi.e 59
cmp.i.v GTE
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
push.v self.animConst
pop.v.v self.timer
pushi.e 4
pop.v.i self.state

:[39]
push.v self.state
pushi.e 4
cmp.i.v EQ
bf [41]

:[40]
push.v self.attacktimer
pushi.e 65
cmp.i.v GTE
b [42]

:[41]
push.e 0

:[42]
bf [end]

:[43]
pushi.e 0
push.v self.whipball
pushi.e -9
pop.v.i [stacktop]self.dodraw
push.v self.quizmode
conv.v.b
not.b
bf [45]

:[44]
push.v 631.x
pushi.e 8
add.i.v
pop.v.v self.targetx
push.v 631.y
pushi.e 8
add.i.v
pop.v.v self.targety

:[45]
push.v self.targetx
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.origx
push.v self.targety
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.origy
pushi.e 5
pop.v.i self.attacktimer
pushi.e 0
pop.v.i self.state
push.v self.attackoffset
pushi.e 45
add.i.v
pop.v.v self.attackoffset

:[end]