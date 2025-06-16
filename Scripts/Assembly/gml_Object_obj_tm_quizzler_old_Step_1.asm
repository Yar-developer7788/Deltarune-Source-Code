.localvar 2 arguments
.localvar 23852 nextletter 10896
.localvar 23853 bottomangle 10897
.localvar 23854 topangle 10898
.localvar 23855 targetDirection 10899
.localvar 6229 offset 10900
.localvar 6482 xx 10901
.localvar 6483 yy 10902
.localvar 23856 _letter 10903
.localvar 23802 zaptime 10904

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v self.restart
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [26]

:[4]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.creator
push.v self.animator
pushi.e -9
pop.v.v [stacktop]self.creator
pushi.e 1
push.v self.animator
pushi.e -9
pop.v.i [stacktop]self.quizmode

:[6]
push.v self.dojo
conv.v.b
bf [8]

:[7]
push.v self.difficulty
pushi.e 4
cmp.i.v GTE
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 40
push.v self.difficulty
pushi.e 4
sub.i.v
pushi.e 5
mul.i.v
sub.v.i
pop.v.v self.turnspeed
push.v self.difficulty
pushi.e 2
sub.i.v
pop.v.v self.turns
b [15]

:[11]
push.v self.difficulty
pushi.e 5
cmp.i.v EQ
bf [13]

:[12]
pushi.e 30
pop.v.i self.turnspeed
pushi.e 5
pop.v.i self.turns
b [15]

:[13]
push.v self.difficulty
pushi.e 4
cmp.i.v EQ
bf [15]

:[14]
pushi.e 40
pop.v.i self.turnspeed
pushi.e 4
pop.v.i self.turns

:[15]
pushi.e 1
pop.v.i self.init
pushi.e 0
pop.v.b self.restart
pushi.e 0
pop.v.i self.i

:[16]
push.v self.i
push.v self.turns
cmp.v.v LT
bf [26]

:[17]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [19]

:[18]
push.v self.canrepeat
conv.v.b
not.b
b [20]

:[19]
push.e 0

:[20]
bf [24]

:[21]
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pop.v.v local.nextletter
pushloc.v local.nextletter
push.v self.lastletter
cmp.v.v EQ
bf [23]

:[22]
pushi.e 3
pop.v.i local.nextletter

:[23]
push.i 170434
setowner.e
pushloc.v local.nextletter
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.letters
pushloc.v local.nextletter
pop.v.v self.lastletter
b [25]

:[24]
push.i 170434
setowner.e
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.letters

:[25]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [16]

:[26]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer
push.v self.state
pushi.e -1
cmp.i.v EQ
bf [29]

:[27]
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [29]

:[28]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.state

:[29]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [47]

:[30]
push.v self.currentturn
push.v self.turns
cmp.v.v EQ
bf [32]

:[31]
push.v 872.x
pushi.e 100
add.i.v
push.v self.animator
pushi.e -9
pop.v.v [stacktop]self.targetx
push.v 872.y
push.v self.animator
pushi.e -9
pop.v.v [stacktop]self.targety
pushi.e 1
pop.v.i self.state
pushi.e 1
push.v self.animator
pushi.e -9
pop.v.b [stacktop]self.quizloop
pushi.e 0
pop.v.i self.currentturn
push.v self.turnspeed
pushi.e 10
add.i.v
pop.v.v self.timer
b [46]

:[32]
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [46]

:[33]
push.v self.turns
pushi.e 1
cmp.i.v GT
bf [39]

:[34]
pushi.e 140
pop.v.i local.bottomangle
pushi.e 220
pop.v.i local.topangle
push.v self.turns
pushi.e 2
cmp.i.v EQ
bf [36]

:[35]
pushi.e 170
pop.v.i local.bottomangle
pushi.e 190
pop.v.i local.topangle
b [38]

:[36]
push.v self.turns
pushi.e 3
cmp.i.v EQ
bf [38]

:[37]
pushi.e 155
pop.v.i local.bottomangle
pushi.e 205
pop.v.i local.topangle

:[38]
push.v self.currentturn
push.v self.turns
pushi.e 1
sub.i.v
div.v.v
pushloc.v local.topangle
pushloc.v local.bottomangle
call.i lerp(argc=3)
pop.v.v local.targetDirection
b [40]

:[39]
pushi.e 180
pop.v.i local.targetDirection

:[40]
pushi.e 36
pop.v.i local.offset
push.v self.x
pushi.e 80
add.i.v
pushloc.v local.targetDirection
pushloc.v local.offset
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v local.xx
push.v self.y
pushi.e 40
add.i.v
pushloc.v local.targetDirection
pushloc.v local.offset
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v local.yy
pushi.e 0
pop.v.i self.i

:[41]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [45]

:[42]
pushi.e 460
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.temp
pushi.e 1704
push.v self.temp
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.temp
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e -1
push.v self.currentturn
conv.v.i
push.v [array]self.letters
pop.v.v local._letter
pushloc.v local._letter
push.v self.temp
pushi.e -9
pop.v.v [stacktop]self.image_index
pushloc.v local.targetDirection
push.v self.temp
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 10
push.v self.temp
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1
push.v self.temp
pushi.e -9
pop.v.i [stacktop]self.friction
push.v self.turnspeed
pushi.e 20
sub.i.v
pop.v.v self.timer
push.v self.i
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
pushi.e 1
push.v self.temp
pushi.e -9
pop.v.i [stacktop]self.outline
push.v self.temp
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
push.e 1
add.i.v
pop.i.v [stacktop]self.depth

:[44]
push.i 133633
setowner.e
pushi.e 20
push.v self.turns
push.v self.currentturn
sub.v.v
mul.v.i
push.v self.turns
pushi.e 1
sub.i.v
push.v self.currentturn
sub.v.v
pushi.e 2
mul.i.v
sub.v.v
push.v self.temp
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [41]

:[45]
push.v self.currentturn
push.e 1
add.i.v
pop.v.v self.currentturn
pushi.e -1
pushloc.v local._letter
conv.v.i
push.v [array]self.voiceclips
call.i gml_Script_snd_play(argc=1)
popz.v

:[46]
b [end]

:[47]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [end]

:[48]
push.v self.animator
pushi.e -9
push.v [stacktop]self.state
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
push.v self.timer
pushi.e 20
cmp.i.v LT
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 1
push.v self.animator
pushi.e -9
pop.v.i [stacktop]self.state

:[53]
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [end]

:[54]
push.v 872.x
pushi.e 1
add.i.v
pop.v.v local.xx
push.v 872.y
pop.v.v local.yy
push.v self.difficulty
pushi.e 4
cmp.i.v GTE
bf [56]

:[55]
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
push.v self.turnspeed
pushi.e 20
sub.i.v
call.i clamp(argc=3)
b [57]

:[56]
pushi.e 20
conv.i.v

:[57]
pop.v.v local.zaptime
pushi.e 0
pop.v.i self.i

:[58]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [63]

:[59]
push.v self.i
pushi.e -1
push.v self.currentturn
conv.v.i
push.v [array]self.letters
cmp.v.v EQ
bf [61]

:[60]
b [62]

:[61]
pushi.e 463
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
push.i 133633
setowner.e
pushloc.v local.zaptime
push.v self.d
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
push.v self.i
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.letter

:[62]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [58]

:[63]
push.v self.currentturn
push.e 1
add.i.v
pop.v.v self.currentturn
pushi.e 2
push.v self.animator
pushi.e -9
pop.v.i [stacktop]self.state
push.v self.turnspeed
pop.v.v self.timer
push.v self.currentturn
push.v self.turns
cmp.v.v EQ
bf [65]

:[64]
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 2
pop.v.i self.state
pushi.e 20
pop.v.i self.timer
b [end]

:[65]
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]