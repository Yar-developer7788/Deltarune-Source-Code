.localvar 2 arguments
.localvar 23852 nextletter 10879
.localvar 23853 bottomangle 10880
.localvar 23854 topangle 10881
.localvar 23855 targetDirection 10882
.localvar 6229 offset 10883
.localvar 6482 xx 10884
.localvar 6483 yy 10885
.localvar 23856 _letter 10887
.localvar 23802 zaptime 10888

:[0]
pushi.e 0
pop.v.b self.canrepeat
pushglb.v global.encounterno
pushi.e 89
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.inv
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.hit
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e -4
push.v self.controller
pushi.e -9
pop.v.i [stacktop]self.special
pushi.e 1
pop.v.b self.hit

:[6]
push.v self.init
pushi.e 0
cmp.i.v EQ
bt [8]

:[7]
push.v self.restart
conv.v.b
b [9]

:[8]
push.e 1

:[9]
bf [30]

:[10]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.v self.creator
push.v self.animator
pushi.e -9
pop.v.v [stacktop]self.creator
pushi.e 1
push.v self.animator
pushi.e -9
pop.v.i [stacktop]self.quizmode

:[12]
push.v self.difficulty
pushi.e 4
cmp.i.v GTE
bf [14]

:[13]
pushi.e 40
push.v self.difficulty
pushi.e 4
sub.i.v
pushi.e 5
mul.i.v
sub.v.i
pop.v.v self.turnspeed
push.v self.difficulty
pushi.e 3
sub.i.v
pop.v.v self.turns
b [18]

:[14]
push.v self.difficulty
pushi.e 5
cmp.i.v EQ
bf [16]

:[15]
pushi.e 30
pop.v.i self.turnspeed
pushi.e 5
pop.v.i self.turns
b [18]

:[16]
push.v self.difficulty
pushi.e 4
cmp.i.v EQ
bf [18]

:[17]
pushi.e 40
pop.v.i self.turnspeed
pushi.e 4
pop.v.i self.turns

:[18]
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pop.v.v self.tm
pushi.e 1
pop.v.i self.init
pushi.e 0
pop.v.b self.restart
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
push.v self.turns
cmp.v.v LT
bf [30]

:[20]
push.v self.tm
pushi.e -4
cmp.i.v NEQ
bf [22]

:[21]
push.v self.tm
pushi.e -9
push.v [stacktop]self.lastQuizLetter
pushi.e -1
cmp.i.v NEQ
b [23]

:[22]
push.e 0

:[23]
bf [27]

:[24]
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pop.v.v local.nextletter
pushloc.v local.nextletter
push.v self.tm
pushi.e -9
push.v [stacktop]self.lastQuizLetter
cmp.v.v EQ
bf [26]

:[25]
pushi.e 3
pop.v.i local.nextletter

:[26]
push.i 170434
setowner.e
pushloc.v local.nextletter
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.letters
pushloc.v local.nextletter
push.v self.tm
pushi.e -9
pop.v.v [stacktop]self.lastQuizLetter
b [29]

:[27]
push.i 170434
setowner.e
pushi.e 3
conv.i.v
call.i irandom(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.letters
push.v self.tm
pushi.e -4
cmp.i.v NEQ
bf [29]

:[28]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.letters
push.v self.tm
pushi.e -9
pop.v.v [stacktop]self.lastQuizLetter

:[29]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [19]

:[30]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer
push.v self.state
pushi.e -1
cmp.i.v EQ
bf [33]

:[31]
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [33]

:[32]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.state

:[33]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [51]

:[34]
push.v self.currentturn
push.v self.turns
cmp.v.v EQ
bf [36]

:[35]
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
b [50]

:[36]
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [50]

:[37]
push.v self.turns
pushi.e 1
cmp.i.v GT
bf [43]

:[38]
pushi.e 140
pop.v.i local.bottomangle
pushi.e 220
pop.v.i local.topangle
push.v self.turns
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushi.e 170
pop.v.i local.bottomangle
pushi.e 190
pop.v.i local.topangle
b [42]

:[40]
push.v self.turns
pushi.e 3
cmp.i.v EQ
bf [42]

:[41]
pushi.e 155
pop.v.i local.bottomangle
pushi.e 205
pop.v.i local.topangle

:[42]
push.v self.currentturn
push.v self.turns
pushi.e 1
sub.i.v
div.v.v
pushloc.v local.topangle
pushloc.v local.bottomangle
call.i lerp(argc=3)
pop.v.v local.targetDirection
b [44]

:[43]
pushi.e 180
pop.v.i local.targetDirection

:[44]
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

:[45]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [49]

:[46]
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
bf [48]

:[47]
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

:[48]
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
b [45]

:[49]
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

:[50]
b [end]

:[51]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [end]

:[52]
push.v self.animator
pushi.e -9
push.v [stacktop]self.state
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
push.v self.timer
pushi.e 20
cmp.i.v LT
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 1
push.v self.animator
pushi.e -9
pop.v.i [stacktop]self.state

:[57]
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [end]

:[58]
pushi.e 1
push.v self.animator
pushi.e -9
pop.v.b [stacktop]self.zapping
push.v 872.x
pushi.e 1
add.i.v
pop.v.v local.xx
push.v 872.y
pop.v.v local.yy
push.v self.difficulty
pushi.e 4
cmp.i.v GTE
bf [60]

:[59]
pushi.e 20
conv.i.v
pushi.e 10
conv.i.v
push.v self.turnspeed
pushi.e 20
sub.i.v
call.i clamp(argc=3)
b [61]

:[60]
pushi.e 20
conv.i.v

:[61]
pop.v.v local.zaptime
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
pushi.e 15
pop.v.i local.zaptime
b [65]

:[63]
push.v self.difficulty
pushi.e 2
cmp.i.v EQ
bf [65]

:[64]
pushi.e 15
pop.v.i local.zaptime

:[65]
pushi.e 0
pop.v.i self.i

:[66]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [71]

:[67]
push.v self.i
pushi.e -1
push.v self.currentturn
conv.v.i
push.v [array]self.letters
cmp.v.v EQ
bf [69]

:[68]
b [70]

:[69]
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

:[70]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [66]

:[71]
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
bf [73]

:[72]
push.i 68097
setowner.e
pushloc.v local.zaptime
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 2
pop.v.i self.state
pushi.e 20
pop.v.i self.timer
b [end]

:[73]
push.i 68097
setowner.e
pushloc.v local.zaptime
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]