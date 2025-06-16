.localvar 2 arguments
.localvar 23992 nexthole 10993
.localvar 23993 safety 10994
.localvar 6482 xx 10995
.localvar 6483 yy 10996
.localvar 79 side 10997

:[0]
push.v self.preptimer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
exit.i

:[2]
push.v self.preptimer
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.depth
pushi.e 11
sub.i.v
pop.v.v self.depth
pushi.e -1
pop.v.i self.preptimer

:[4]
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [6]

:[5]
push.v self.mausqueue
pushi.e 0
cmp.i.v GT
b [7]

:[6]
push.e 0

:[7]
bf [27]

:[8]
push.v self.mausqueue
push.e 1
sub.i.v
pop.v.v self.mausqueue
pushi.e 7
conv.i.v
call.i irandom(argc=1)
pop.v.v local.nexthole
pushi.e 0
pop.v.i local.safety

:[9]
pushi.e -1
pushloc.v local.nexthole
conv.v.i
push.v [array]self.maushole
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
pushi.e -1
pushloc.v local.nexthole
conv.v.i
push.v [array]self.maushole
pushi.e 50
sub.i.v
pushglb.v global.turntimer
cmp.v.v LT
b [12]

:[11]
push.e 0

:[12]
bf [16]

:[13]
pushi.e 7
conv.i.v
call.i irandom(argc=1)
pop.v.v local.nexthole
push.v local.safety
push.e 1
add.i.v
pop.v.v local.safety
pushloc.v local.safety
pushi.e 8
cmp.i.v GT
bf [15]

:[14]
exit.i

:[15]
b [9]

:[16]
push.i 170488
setowner.e
pushglb.v global.turntimer
pushi.e -1
pushloc.v local.nexthole
conv.v.i
pop.v.v [array]self.maushole
push.v self.timer
pushi.e 10
add.i.v
pop.v.v self.timer
push.v self.x
pop.v.v local.xx
push.v self.y
pop.v.v local.yy
call.i gml_Script_randomsign(argc=0)
pop.v.v local.side
pushloc.v local.nexthole
pushi.e 4
cmp.i.v LT
bf [18]

:[17]
push.v self.x
push.v self.sideoffset
sub.v.v
pushi.e 46
add.i.v
push.v self.holeoffset
pushloc.v local.nexthole
mul.v.v
add.v.v
pop.v.v local.xx
push.v self.y
push.v self.sideoffset
pushloc.v local.side
mul.v.v
add.v.v
pop.v.v local.yy
b [19]

:[18]
push.v self.x
push.v self.sideoffset
pushloc.v local.side
mul.v.v
add.v.v
pop.v.v local.xx
push.v self.y
push.v self.sideoffset
sub.v.v
pushi.e 46
add.i.v
push.v self.holeoffset
pushloc.v local.nexthole
pushi.e 4
sub.i.v
mul.v.v
add.v.v
pop.v.v local.yy

:[19]
push.v self.dontcreatemouse
pushi.e 0
cmp.i.v EQ
bf [26]

:[20]
pushi.e 472
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i gml_Script_scr_childbullet(argc=3)
pop.v.v self.d
pushloc.v local.nexthole
pushi.e 4
cmp.i.v LT
bf [22]

:[21]
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.direction
pushi.e 90
pushloc.v local.side
mul.v.i
add.v.v
pop.i.v [stacktop]self.direction
b [24]

:[22]
pushloc.v local.side
pushi.e 0
cmp.i.v GT
bf [24]

:[23]
pushi.e 180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.direction

:[24]
pushi.e 6
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
push.v self.d
pushi.e -9
push.v [stacktop]self.direction
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.grazepoints
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.grazepoints
push.v self.bigmaus
conv.v.b
bf [26]

:[25]
pushi.e 1
push.v self.d
pushi.e -9
pop.v.b [stacktop]self.big
pushi.e 3349
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133633
setowner.e
pushi.e 22
conv.i.v
push.v self.d
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
push.v self.bigmaus
push.e 1
sub.i.v
pop.v.v self.bigmaus

:[26]
b [end]

:[27]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [end]

:[28]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer

:[end]