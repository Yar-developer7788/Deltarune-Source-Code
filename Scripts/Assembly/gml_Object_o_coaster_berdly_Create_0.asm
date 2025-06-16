.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 1867
pop.v.i self.mask_index
pushi.e 0
pop.v.b self.visible
pushi.e 0
pop.v.i self.damagecon
pushi.e 0
pop.v.i self.damagetimer
pushi.e 0
pop.v.i self.invincible
pushi.e 0
pop.v.i self.siner
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.xshake
pushi.e 0
pop.v.i self.yshake
pushi.e 0
pop.v.i self.shaketimer
pushi.e 0
pop.v.i self.smoketimer
pushi.e 0
pop.v.i self.smokestart
push.v 484.depth
pushi.e 1
add.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.endscene
pushi.e 0
pop.v.i self.endscenetimer
pushi.e 59
pop.v.i self.movetimer
pushi.e 60
pop.v.i self.movethreshold
pushi.e 0
pop.v.i self.movebuffer
pushi.e 6
pop.v.i self.moveframes
pushi.e -1
pop.v.i self.movecon
pushi.e -900
pop.v.i self.idealy
pushi.e 1
pop.v.i self.kiss
pushi.e -1
pop.v.i self.forceypos
pushi.e 0
pop.v.i self.calculated
pushi.e 0
pop.v.i self.premonition
pushi.e 1
pop.v.i self.drawpremonition
push.v 484.premonition
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.premonition
pushi.e 1
pop.v.i self.drawpremonition
b [3]

:[2]
pushi.e 0
pop.v.i self.drawpremonition

:[3]
pushi.e 0
pop.v.i self.knocked
pushi.e 0
pop.v.i self.knockedtimer
pushi.e 0
pop.v.i self.knockedhits
push.v self.y
pop.v.v self.premy
pushi.e 0
pop.v.i self.ycount
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [6]

:[5]
push.i 170183
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.nexty
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
pushi.e 6
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.pick
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [11]

:[8]
pushi.e -1
push.v self.pick
conv.v.i
push.v [array]self.nexty
pushi.e -1
cmp.i.v NEQ
bf [10]

:[9]
pushi.e 6
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.pick
b [8]

:[10]
push.i 170183
setowner.e
push.v self.i
pushi.e -1
push.v self.pick
conv.v.i
pop.v.v [array]self.nexty
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [7]

:[11]
pushi.e 0
pop.v.i self.j

:[12]
push.v self.j
pushi.e 6
cmp.i.v LT
bf [16]

:[13]
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.nexty
pushi.e -1
cmp.i.v EQ
bf [15]

:[14]
push.i 170183
setowner.e
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pushi.e -1
push.v self.j
conv.v.i
pop.v.v [array]self.nexty

:[15]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [12]

:[16]
pushi.e 6
conv.i.v
call.i random(argc=1)
pushi.e 6
add.i.v
call.i floor(argc=1)
pop.v.v self.pick
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [21]

:[18]
pushi.e -1
push.v self.pick
conv.v.i
push.v [array]self.nexty
pushi.e -1
cmp.i.v NEQ
bf [20]

:[19]
pushi.e 6
conv.i.v
call.i random(argc=1)
pushi.e 6
add.i.v
call.i floor(argc=1)
pop.v.v self.pick
b [18]

:[20]
push.i 170183
setowner.e
push.v self.i
pushi.e -1
push.v self.pick
conv.v.i
pop.v.v [array]self.nexty
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [17]

:[21]
pushi.e 6
pop.v.i self.j

:[22]
push.v self.j
pushi.e 12
cmp.i.v LT
bf [26]

:[23]
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.nexty
pushi.e -1
cmp.i.v EQ
bf [25]

:[24]
push.i 170183
setowner.e
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pushi.e -1
push.v self.j
conv.v.i
pop.v.v [array]self.nexty

:[25]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [22]

:[26]
pushi.e 0
pop.v.i self.queenmode
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.mode
pushi.e 484
pushenv [29]

:[27]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 50
cmp.i.v GT
bf [29]

:[28]
pushi.e 1
pop.v.i 496.mode

:[29]
popenv [27]
pushi.e 0
pop.v.i self.modetimer
pushi.e 0
pop.v.i self.movetype
pushi.e 0
pop.v.i self.movesiner
pushi.e 0
pop.v.i self.xx

:[end]