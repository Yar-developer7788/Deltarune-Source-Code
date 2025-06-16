.localvar 2 arguments
.localvar 14249 rotation 10811
.localvar 23811 balldirection 10812
.localvar 23812 handx 10813
.localvar 23813 handy 10814
.localvar 376 loop 10815
.localvar 6706 d 10816

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.quizmode
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.quizmode
push.v self.damage
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 1
pop.v.i self.init
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
push.v [stacktop]self.depth
pop.v.v self.depth
push.v self.quizmode
conv.v.b
bf [3]

:[2]
pushi.e -1
pop.v.i self.state

:[3]
push.v self.quizloop
conv.v.b
bf [5]

:[4]
push.v self.state
pushi.e -1
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 0
pop.v.b self.quizloop
pushi.e 0
pop.v.i self.state

:[8]
push.v self.state
pushi.e -1
cmp.i.v EQ
bf [12]

:[9]
push.v self.lastState
pushi.e -1
cmp.i.v NEQ
bf [11]

:[10]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.attacktimer
pushi.e 0
pop.v.i self.visible
push.i 133635
setowner.e
pushi.e 1
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e -1
pop.v.i self.lastState

:[11]
exit.i

:[12]
push.v self.lastState
pushi.e -1
cmp.i.v EQ
bf [14]

:[13]
push.v self.state
pushi.e -1
cmp.i.v NEQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 1
pop.v.i self.visible
pushi.e 0
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.state
pop.v.v self.lastState

:[17]
push.v self.truetimer
push.e 1
add.i.v
pop.v.v self.truetimer
push.v self.attacktimer
push.v self.animSpeed
add.v.v
pop.v.v self.attacktimer
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.v self.attacktimer
pushi.e 20
cmp.i.v GTE
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 19
pop.v.i self.attacktimer

:[22]
push.v self.attacktimer
pushi.e 5
cmp.i.v EQ
bf [26]

:[23]
push.v self.quizmode
conv.v.b
not.b
bf [25]

:[24]
push.v 631.x
pushi.e 8
add.i.v
pop.v.v self.targetx
push.v 631.y
pushi.e 8
add.i.v
pop.v.v self.targety

:[25]
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

:[26]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
push.v self.lastState
pushi.e 1
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 2
pop.v.i self.lastState
pushi.e 35
pop.v.i self.attacktimer

:[31]
push.v self.attacktimer
pushi.e 35
cmp.i.v GTE
bf [34]

:[32]
push.v self.attacktimer
pushi.e 5
mod.i.v
pushi.e 1
cmp.i.v LT
bf [34]

:[33]
push.v self.attacktimer
pushi.e 45
cmp.i.v LTE
b [35]

:[34]
push.e 0

:[35]
bf [53]

:[36]
push.v self.attackoffset
pop.v.v local.rotation
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [41]

:[37]
push.v local.rotation
push.v self.attacktimer
pushi.e 5
conv.i.d
div.d.v
pushi.e 7
sub.i.v
pushi.e 15
mul.i.v
push.v self.attackoffset
pushi.e 45
cmp.i.v EQ
bf [39]

:[38]
pushi.e -1
conv.i.v
b [40]

:[39]
pushi.e 1
conv.i.v

:[40]
mul.v.v
add.v.v
pop.v.v local.rotation

:[41]
pushi.e 0
pop.v.i local.balldirection
push.v self.rotateCracker
conv.v.b
bf [43]

:[42]
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

:[43]
push.v self.quizmode
conv.v.b
not.b
bf [53]

:[44]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
pushi.e 8
conv.i.v
b [47]

:[46]
pushi.e 4
conv.i.v

:[47]
pop.v.v local.loop
pushi.e 0
pop.v.i self.i

:[48]
push.v self.i
pushloc.v local.loop
cmp.v.v LT
bf [53]

:[49]
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
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
pushi.e 45
conv.i.v
b [52]

:[51]
pushi.e 90
conv.i.v

:[52]
push.v self.i
mul.v.v
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
b [48]

:[53]
push.v self.state
push.v self.lastState
cmp.v.v NEQ
bf [62]

:[54]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
push.v self.lastState
pushi.e 2
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
pushi.e 34
pop.v.i self.attacktimer
push.v self.animConst
pushi.e 5
mul.i.v
pop.v.v self.timer

:[59]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [61]

:[60]
pushi.e 56
pop.v.i self.attacktimer

:[61]
push.v self.state
pop.v.v self.lastState

:[62]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [64]

:[63]
push.v self.attacktimer
pushi.e 59
cmp.i.v GTE
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
push.v self.animConst
pop.v.v self.timer
pushi.e 4
pop.v.i self.state
pushi.e 4
pop.v.i self.lastState

:[67]
push.v self.state
pushi.e 4
cmp.i.v EQ
bf [69]

:[68]
push.v self.attacktimer
pushi.e 65
cmp.i.v GTE
b [70]

:[69]
push.e 0

:[70]
bf [end]

:[71]
pushi.e 0
push.v self.whipball
pushi.e -9
pop.v.i [stacktop]self.dodraw
push.v self.quizmode
conv.v.b
not.b
bf [73]

:[72]
push.v 631.x
pushi.e 8
add.i.v
pop.v.v self.targetx
push.v 631.y
pushi.e 8
add.i.v
pop.v.v self.targety

:[73]
push.v self.targetx
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.origx
push.v self.targety
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.origy
push.v self.quizmode
conv.v.b
bf [75]

:[74]
push.v self.quizloop
conv.v.b
not.b
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
pushi.e -1
pop.v.i self.state
b [81]

:[78]
push.v self.quizloop
conv.v.b
bf [80]

:[79]
pushi.e 0
pop.v.b self.quizloop

:[80]
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.lastState

:[81]
pushi.e 5
pop.v.i self.attacktimer
push.v self.attackoffset
pushi.e 45
add.i.v
pop.v.v self.attackoffset

:[end]