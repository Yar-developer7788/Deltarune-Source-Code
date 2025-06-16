.localvar 2 arguments

:[0]
push.v self.sleeptimer
push.e 1
add.i.v
pop.v.v self.sleeptimer
push.v self.movecon
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v self.movecon
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [20]

:[4]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [11]

:[5]
push.v self.movecon
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e -4
pop.v.i self.hspeed
push.v self.lsprite
pop.v.v self.sprite_index

:[7]
push.v self.movecon
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 4
pop.v.i self.hspeed
push.v self.rsprite
pop.v.v self.sprite_index

:[9]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.contimer
pushi.e 30
pop.v.i self.contimermax
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.flipchance
push.v self.flipchance
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1292
conv.i.v
push.v self.dsprite
call.i choose(argc=2)
pop.v.v self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[11]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [20]

:[12]
pushi.e 0
pop.v.i self.stop
push.v self.contimer
push.e 1
add.i.v
pop.v.v self.contimer
push.v self.x
push.v self.minx
cmp.v.v LT
bf [14]

:[13]
pushi.e 1
pop.v.i self.stop

:[14]
push.v self.x
push.v self.maxx
cmp.v.v GT
bf [16]

:[15]
pushi.e 1
pop.v.i self.stop

:[16]
push.v self.contimer
push.v self.contimermax
cmp.v.v GT
bf [18]

:[17]
pushi.e 1
pop.v.i self.stop

:[18]
push.v self.stop
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 0
pop.v.i self.hspeed
pushi.e 1292
conv.i.v
push.v self.dsprite
push.v self.dsprite
call.i choose(argc=3)
pop.v.v self.sprite_index
push.d 0.25
pop.v.d self.image_speed
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 2
pop.v.i self.con

:[20]
push.v self.movecon
pushi.e 2
cmp.i.v EQ
bt [22]

:[21]
push.v self.movecon
pushi.e 3
cmp.i.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [47]

:[24]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [28]

:[25]
push.v self.movecon
pushi.e 3
cmp.i.v EQ
bf [27]

:[26]
pushi.e -8
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.gravity
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
call.i random_range(argc=2)
pop.v.v self.hspeed

:[27]
pushi.e 0
pop.v.i self.spincount
pushi.e 0
pop.v.i self.spintimer
pushi.e 8
pop.v.i self.spinmax
pushi.e 1
pop.v.i self.con
push.v self.dsprite
pop.v.v self.sprite_index

:[28]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [47]

:[29]
push.v self.y
push.v self.maxy
cmp.v.v GTE
bf [31]

:[30]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed

:[31]
push.v self.x
push.v self.minx
cmp.v.v LTE
bf [33]

:[32]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[33]
push.v self.x
push.v self.maxx
cmp.v.v GTE
bf [35]

:[34]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[35]
push.v self.spintimer
push.e 1
add.i.v
pop.v.v self.spintimer
push.v self.spintimer
pushi.e 3
cmp.i.v GTE
bf [45]

:[36]
push.v self.sprite_index
push.v self.dsprite
cmp.v.v EQ
bf [38]

:[37]
push.v self.lsprite
pop.v.v self.sprite_index
b [44]

:[38]
push.v self.sprite_index
push.v self.lsprite
cmp.v.v EQ
bf [40]

:[39]
push.v self.usprite
pop.v.v self.sprite_index
b [44]

:[40]
push.v self.sprite_index
push.v self.usprite
cmp.v.v EQ
bf [42]

:[41]
push.v self.rsprite
pop.v.v self.sprite_index
b [44]

:[42]
push.v self.sprite_index
push.v self.rsprite
cmp.v.v EQ
bf [44]

:[43]
push.v self.dsprite
pop.v.v self.sprite_index

:[44]
push.v self.spincount
push.e 1
add.i.v
pop.v.v self.spincount
pushi.e 0
pop.v.i self.spintimer

:[45]
push.v self.spincount
pushi.e 8
cmp.i.v GTE
bf [47]

:[46]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 2
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[47]
push.v self.movecon
pushi.e 4
cmp.i.v EQ
bf [55]

:[48]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1288
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.wavetimer
pushi.e 1
pop.v.i self.con

:[50]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [55]

:[51]
push.v self.wavetimer
push.e 1
add.i.v
pop.v.v self.wavetimer
push.v self.wavetimer
pushi.e 16
cmp.i.v GTE
bf [53]

:[52]
pushi.e 0
pop.v.i self.image_speed

:[53]
push.v self.wavetimer
pushi.e 40
cmp.i.v GTE
bf [55]

:[54]
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 2
pop.v.i self.con

:[55]
push.v self.movecon
pushi.e 10
cmp.i.v EQ
bf [57]

:[56]
pushi.e 1287
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.gravity

:[57]
push.v self.movecon
pushi.e 11
cmp.i.v EQ
bf [59]

:[58]
pushi.e 193
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.gravity

:[59]
pushglb.v global.submenu
pushi.e 4
cmp.i.v NEQ
bt [61]

:[60]
pushglb.v global.interact
pushi.e 5
cmp.i.v NEQ
b [62]

:[61]
push.e 1

:[62]
bf [end]

:[63]
call.i instance_destroy(argc=0)
popz.v

:[end]