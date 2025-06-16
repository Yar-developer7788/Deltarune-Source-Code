.localvar 2 arguments
.localvar 14249 rotation 10783
.localvar 23811 balldirection 10784
.localvar 23812 handx 10785
.localvar 23813 handy 10786
.localvar 376 loop 10787
.localvar 6706 d 10788

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.quizmode
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.quizmode
push.v self.quizmode
conv.v.b
bf [3]

:[2]
pushi.e 0
push.v self.whipball
pushi.e -9
pop.v.b [stacktop]self.active

:[3]
push.v self.damage
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 6
push.v self.whipball
pushi.e -9
pop.v.i [stacktop]self.element
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
bf [5]

:[4]
pushi.e -1
pop.v.i self.state

:[5]
push.v self.quizloop
conv.v.b
bf [7]

:[6]
push.v self.state
pushi.e -1
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 0
pop.v.b self.quizloop
pushi.e 0
pop.v.i self.state

:[10]
push.v self.state
pushi.e -1
cmp.i.v EQ
bf [14]

:[11]
push.v self.lastState
pushi.e -1
cmp.i.v NEQ
bf [13]

:[12]
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

:[13]
exit.i

:[14]
push.v self.lastState
pushi.e -1
cmp.i.v EQ
bf [16]

:[15]
push.v self.state
pushi.e -1
cmp.i.v NEQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
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

:[19]
push.v self.truetimer
push.e 1
add.i.v
pop.v.v self.truetimer
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
pushi.e 45
pop.v.i self.attacktimer
b [22]

:[21]
push.v self.attacktimer
push.v self.animSpeed
add.v.v
pop.v.v self.attacktimer

:[22]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.v self.attacktimer
pushi.e 20
cmp.i.v GTE
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 19
pop.v.i self.attacktimer

:[27]
push.v self.attacktimer
pushi.e 5
cmp.i.v EQ
bf [31]

:[28]
push.v self.quizmode
conv.v.b
not.b
bf [30]

:[29]
push.v 631.x
pushi.e 8
add.i.v
pop.v.v self.targetx
push.v 631.y
pushi.e 8
add.i.v
pop.v.v self.targety

:[30]
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

:[31]
push.v self.zapping
conv.v.b
bf [37]

:[32]
push.v self.zaptimer
pushi.e 5
mod.i.v
pushi.e 1
cmp.i.v LT
bf [37]

:[33]
push.v self.quizmode
conv.v.b
bt [35]

:[34]
push.v self.zaptimer
pushi.e 15
cmp.i.v LT
b [36]

:[35]
push.e 1

:[36]
b [38]

:[37]
push.e 0

:[38]
bf [61]

:[39]
push.v self.attackoffset
pop.v.v local.rotation
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [44]

:[40]
push.v local.rotation
push.v self.zaptimer
pushi.e 5
conv.i.d
div.d.v
pushi.e 15
mul.i.v
push.v self.attackoffset
pushi.e 45
cmp.i.v EQ
bf [42]

:[41]
pushi.e -1
conv.i.v
b [43]

:[42]
pushi.e 1
conv.i.v

:[43]
mul.v.v
add.v.v
pop.v.v local.rotation

:[44]
pushi.e 0
pop.v.i local.balldirection
push.v self.rotateCracker
conv.v.b
bf [46]

:[45]
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

:[46]
push.v self.quizmode
conv.v.b
not.b
bf [56]

:[47]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
pushi.e 8
conv.i.v
b [50]

:[49]
pushi.e 4
conv.i.v

:[50]
pop.v.v local.loop
pushi.e 0
pop.v.i self.i

:[51]
push.v self.i
pushloc.v local.loop
cmp.v.v LT
bf [56]

:[52]
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
pushi.e 3276
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
bf [54]

:[53]
pushi.e 45
conv.i.v
b [55]

:[54]
pushi.e 90
conv.i.v

:[55]
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
push.v self.damage
pushloc.v local.d
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 6
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.element
push.v self.target
pushloc.v local.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [51]

:[56]
push.v self.quizmode
conv.v.b
not.b
bf [58]

:[57]
push.v self.zaptimer
pushi.e 15
cmp.i.v GTE
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 0
pop.v.b self.zapping

:[61]
push.v self.zapping
push.v self.whipball
pushi.e -9
push.v [stacktop]self.active
cmp.v.v NEQ
bf [63]

:[62]
push.v self.quizmode
conv.v.b
not.b
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
push.v self.zapping
push.v self.whipball
pushi.e -9
pop.v.v [stacktop]self.active

:[66]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [70]

:[67]
push.v self.zapping
conv.v.b
not.b
bf [69]

:[68]
pushi.e 0
pop.v.i self.zaptimer
b [70]

:[69]
push.v self.zaptimer
push.v self.animSpeed
add.v.v
pop.v.v self.zaptimer

:[70]
push.v self.state
push.v self.lastState
cmp.v.v NEQ
bf [74]

:[71]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [73]

:[72]
pushi.e 0
pop.v.b self.zapping
pushi.e 0
pop.v.i self.zaptimer
pushi.e 56
pop.v.i self.attacktimer

:[73]
push.v self.state
pop.v.v self.lastState

:[74]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [76]

:[75]
push.v self.attacktimer
pushi.e 59
cmp.i.v GTE
b [77]

:[76]
push.e 0

:[77]
bf [82]

:[78]
push.v self.animConst
pop.v.v self.timer
push.v self.looping
conv.v.b
bf [80]

:[79]
pushi.e 5
conv.i.v
b [81]

:[80]
pushi.e 4
conv.i.v

:[81]
pop.v.v self.state
pushi.e 4
pop.v.i self.lastState

:[82]
push.v self.state
pushi.e 4
cmp.i.v EQ
bf [84]

:[83]
push.v self.attacktimer
pushi.e 65
cmp.i.v GTE
b [85]

:[84]
push.e 0

:[85]
bf [97]

:[86]
pushi.e 0
push.v self.whipball
pushi.e -9
pop.v.i [stacktop]self.dodraw
push.v self.quizmode
conv.v.b
not.b
bf [88]

:[87]
push.v 631.x
pushi.e 8
add.i.v
pop.v.v self.targetx
push.v 631.y
pushi.e 8
add.i.v
pop.v.v self.targety

:[88]
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
bf [90]

:[89]
push.v self.quizloop
conv.v.b
not.b
b [91]

:[90]
push.e 0

:[91]
bf [93]

:[92]
pushi.e -1
pop.v.i self.state
b [96]

:[93]
push.v self.quizloop
conv.v.b
bf [95]

:[94]
pushi.e 0
pop.v.b self.quizloop

:[95]
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.lastState

:[96]
pushi.e 5
pop.v.i self.attacktimer
push.v self.attackoffset
pushi.e 45
add.i.v
pop.v.v self.attackoffset

:[97]
push.v self.state
pushi.e 5
cmp.i.v EQ
bf [99]

:[98]
push.v self.attacktimer
pushi.e 65
cmp.i.v GTE
b [100]

:[99]
push.e 0

:[100]
bf [end]

:[101]
pushi.e 0
push.v self.whipball
pushi.e -9
pop.v.i [stacktop]self.dodraw

:[end]