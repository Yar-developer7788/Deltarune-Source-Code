.localvar 2 arguments
.localvar 36689 ballY 19704
.localvar 36688 ballX 19705

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.idealString
call.i string_length(argc=1)
pop.v.v self.idealLength
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.idealLength
cmp.v.v LT
bf [4]

:[3]
push.i 174452
setowner.e
pushi.e 1
push.v self.i
add.v.i
push.v self.idealString
call.i string_char_at(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.idealLetter
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 1
pop.v.i self.init

:[5]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
pushi.e 0
pop.v.i self.timer
pushi.e 11
pop.v.i self.con
pushi.e 1
pop.v.i self.lost

:[10]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [27]

:[11]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [13]

:[12]
pushi.e 152
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[13]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [21]

:[14]
push.v self.lastPressedTile
pushi.e -9
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.bouncecon

:[16]
popenv [15]
pushi.e 160
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 544
conv.i.v
push.v 82.y
push.v 82.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.ball
push.d 0.5
push.v self.ball
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 100
push.v self.ball
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.krisStartY
pop.v.v local.ballY
push.v self.krisStartX
pop.v.v local.ballX
push.v self.ball
pushi.e -9
pushenv [18]

:[17]
pushi.e 20
conv.i.v
pushi.e 30
conv.i.v
pushloc.v local.ballY
pushloc.v local.ballX
call.i gml_Script_scr_jump_to_point(argc=4)
popz.v

:[18]
popenv [17]
pushi.e 82
pushenv [20]

:[19]
pushi.e 0
pop.v.i self.visible

:[20]
popenv [19]
pushi.e 0
pop.v.i self.letterCount
push.s ""@157
pop.v.s self.addString
push.s ""@157
pop.v.s self.currentString
pushi.e 0
pop.v.i self.lost

:[21]
push.v self.timer
pushi.e 80
cmp.i.v EQ
bf [27]

:[22]
push.v self.krisStartX
pop.v.v 82.x
push.v self.krisStartY
pop.v.v 82.y
pushi.e 0
pop.v.i global.facing
push.v self.ball
pushi.e -9
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]
pushi.e 82
pushenv [26]

:[25]
pushi.e 1
pop.v.i self.visible

:[26]
popenv [25]
pushi.e 0
pop.v.i global.interact

:[27]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [29]

:[28]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
pushi.e 0
pop.v.i self.timer
pushi.e 21
pop.v.i self.con

:[32]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [end]

:[33]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [40]

:[34]
pushi.e 1
pop.v.i self.won
pushi.e 58
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[35]
push.v self.i
pushi.e 15
cmp.i.v LT
bf [37]

:[36]
pushi.e 551
conv.i.v
pushi.e 200
conv.i.v
pushi.e 180
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 350
conv.i.v
pushi.e 310
conv.i.v
call.i random_range(argc=2)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 20
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.height
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [35]

:[37]
pushi.e 0
pop.v.i self.i

:[38]
push.v self.i
pushi.e 15
cmp.i.v LT
bf [40]

:[39]
pushi.e 551
conv.i.v
pushi.e 200
conv.i.v
pushi.e 480
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 230
conv.i.v
pushi.e 190
conv.i.v
call.i random_range(argc=2)
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 20
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.height
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [38]

:[40]
push.v self.timer
pushi.e 90
cmp.i.v EQ
bf [end]

:[41]
pushi.e 0
pop.v.i self.con
pushi.e 1122
pushenv [43]

:[42]
pushi.e 1
pop.v.i self.pressed
pushi.e 0
pop.v.i self.pressable

:[43]
popenv [42]
pushi.e 0
pop.v.i global.facing
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.timer

:[end]