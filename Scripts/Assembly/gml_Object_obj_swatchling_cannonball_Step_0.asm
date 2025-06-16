.localvar 2 arguments
.localvar 23559 airtime 10572
.localvar 23560 arctime 10573
.localvar 23561 _smokeangle 10574
.localvar 23562 _smoke 10575

:[0]
push.v self.heart_found
conv.v.b
not.b
bf [2]

:[1]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.v 631.x
pop.v.v self.nexttarget
pushi.e 1
pop.v.b self.heart_found

:[6]
push.v self.phase
pushi.e 0
cmp.i.v EQ
bf [13]

:[7]
pushi.e 0
pop.v.i self.active
push.v self.trackplayer
pushi.e 0
cmp.i.v EQ
bf [10]

:[8]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
push.v 631.x
pop.v.v self.nexttarget
pushi.e 1
pop.v.b self.heart_found

:[10]
push.v self.depth
pop.v.v self.defaultdepth
push.v 872.depth
pushi.e 1
add.i.v
pop.v.v self.depth
push.v self.phase
push.e 1
add.i.v
pop.v.v self.phase
pushi.e -7
pop.v.i self.hspeed
push.v self.ystart
push.v 872.y
cmp.v.v GT
bf [12]

:[11]
pushi.e -4
pop.v.i self.hspeed

:[12]
push.d -0.5
pop.v.d self.gravity
b [end]

:[13]
push.v self.phase
pushi.e 1
cmp.i.v EQ
bf [40]

:[14]
push.v self.image_xscale
push.d 0.5
cmp.d.v GT
bf [16]

:[15]
push.v self.image_xscale
push.d 0.02
sub.d.v
pop.v.v self.image_xscale

:[16]
push.v self.image_yscale
push.d 0.5
cmp.d.v GT
bf [18]

:[17]
push.v self.image_yscale
push.d 0.02
sub.d.v
pop.v.v self.image_yscale

:[18]
push.v self.y
push.v self.jumppeak
cmp.v.v LT
bf [20]

:[19]
push.d 0.5
pop.v.d self.gravity
b [24]

:[20]
push.v self.vspeed
pushi.e -6
cmp.i.v LTE
bf [22]

:[21]
pushi.e 0
pop.v.i self.gravity
pushi.e -6
pop.v.i self.vspeed
b [24]

:[22]
push.v self.y
push.v self.jumppeak
cmp.v.v GT
bf [24]

:[23]
push.d -0.5
pop.v.d self.gravity

:[24]
push.v self.heart_found
conv.v.b
bf [27]

:[25]
push.v self.trackplayer
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
push.v self.x
push.v 631.x
pushi.e 50
add.i.v
cmp.v.v LTE
b [28]

:[27]
push.e 0

:[28]
bt [33]

:[29]
push.v self.trackplayer
pushi.e 0
cmp.i.v NEQ
bf [31]

:[30]
push.v self.x
push.v self.nexttarget
pushi.e 50
add.i.v
cmp.v.v LTE
b [32]

:[31]
push.e 0

:[32]
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
push.v self.y
push.v 872.y
pushi.e 80
sub.i.v
cmp.v.v LT
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
push.v self.phase
push.e 1
add.i.v
pop.v.v self.phase
push.v self.hspeed
push.e 1
add.i.v
pop.v.v self.hspeed
pushi.e 1817
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_xscale
push.d 0.5
pop.v.d self.image_yscale
pushi.e 1
pop.v.i self.active
push.d 0.5
push.v self.bouncepower
div.v.d
pop.v.v self.gravity
pushi.e 1
pop.v.i self.bouncespecial

:[39]
b [end]

:[40]
push.v self.phase
pushi.e 2
cmp.i.v EQ
bf [71]

:[41]
push.v self.depth
push.v 872.depth
cmp.v.v GT
bf [43]

:[42]
push.v self.vspeed
pushi.e 0
cmp.i.v GTE
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
push.v self.defaultdepth
pop.v.v self.depth
pushi.e -5
push.v self.creator
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
push.v [stacktop]self.depth
pop.v.v self.defaultdepth

:[46]
push.v self.image_angle
push.v self.currentrotation
add.v.v
pop.v.v self.image_angle
push.v self.y
push.v self.vspeed
add.v.v
push.v self.bouncepoint
cmp.v.v GT
bf [65]

:[47]
pushi.e 0
pop.v.i self.bouncespecial
push.v self.bouncepoint
pop.v.v self.y
pushi.e 45
conv.i.v
call.i random(argc=1)
pop.v.v self.randomdirection
push.v 443.yellow_count
pushi.e 0
cmp.i.v GT
bf [53]

:[48]
pushi.e 439
pushenv [52]

:[49]
push.v self.timer
pushi.e 0
cmp.i.v LT
bf [51]

:[50]
pushi.e 0
pop.v.i self.timer

:[51]
pushi.e 1
pop.v.b self.opened

:[52]
popenv [49]
b [57]

:[53]
push.v self.spawnbullets
conv.v.b
bf [57]

:[54]
pushi.e 0
pop.v.i self.i

:[55]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [57]

:[56]
pushi.e 441
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
call.i gml_Script_scr_childbullet(argc=3)
pop.v.v self.d
push.v self.childgraze
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.grazepoints
pushi.e 1827
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 5
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.speed
push.v self.randomdirection
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
push.v self.randomdirection
pushi.e 90
add.i.v
pop.v.v self.randomdirection
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [55]

:[57]
pushi.e 2
push.v self.y
push.v self.jumppeak
sub.v.v
mul.v.i
push.v self.gravity
div.v.v
call.i sqrt(argc=1)
pushi.e 2
push.v self.ystart
push.v self.jumppeak
sub.v.v
mul.v.i
push.v self.gravity
div.v.v
call.i sqrt(argc=1)
add.v.v
pop.v.v local.airtime
pushloc.v local.airtime
pushi.e 20
add.i.v
pushglb.v global.turntimer
cmp.v.v GT
bf [61]

:[58]
push.v self.phase
push.e 1
add.i.v
pop.v.v self.phase
push.v self.gravity
pushi.e 2
mul.i.v
push.v self.y
push.v self.jumppeak
sub.v.v
mul.v.v
call.i sqrt(argc=1)
neg.v
pop.v.v self.vspeed
push.v self.xstart
push.v self.x
sub.v.v
pushloc.v local.airtime
div.v.v
pop.v.v self.hspeed
push.v self.image_angle
pushi.e 360
mod.i.v
pop.v.v self.currentrotation
push.v self.x
pop.v.v self.nexttarget
pushglb.v global.turntimer
pushloc.v local.airtime
cmp.v.v LT
bf [60]

:[59]
pushloc.v local.airtime
pop.v.v global.turntimer

:[60]
b [65]

:[61]
pushi.e 10
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
neg.v
push.v self.bouncepower
mul.v.v
pop.v.v self.vspeed
push.v self.trackplayer
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
push.v 631.x
pop.v.v self.nexttarget
b [64]

:[63]
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v 872.sprite_width
call.i random(argc=1)
add.v.v
pop.v.v self.nexttarget

:[64]
push.v self.vspeed
neg.v
push.v self.gravity
div.v.v
pushi.e 2
mul.i.v
pop.v.v local.arctime
push.v self.nexttarget
push.v self.x
sub.v.v
pushloc.v local.arctime
div.v.v
pop.v.v self.hspeed
pushi.e 4
conv.i.v
call.i random(argc=1)
pushi.e 90
mul.i.v
pushloc.v local.arctime
div.v.v
push.v self.hspeed
call.i sign(argc=1)
neg.v
mul.v.v
pop.v.v self.currentrotation

:[65]
push.v self.bouncespecial
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
push.v self.hspeed
pushi.e -1
cmp.i.v LT
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
push.v self.hspeed
push.e 1
add.i.v
pop.v.v self.hspeed

:[70]
b [end]

:[71]
push.v self.phase
pushi.e 3
cmp.i.v EQ
bf [94]

:[72]
push.v self.x
push.v self.nexttarget
sub.v.v
push.v self.xstart
push.v self.nexttarget
sub.v.v
div.v.v
pushi.e -360
conv.i.v
push.v self.currentrotation
call.i lerp(argc=3)
pop.v.v self.image_angle
push.v self.x
push.v self.xstart
pushi.e 30
sub.i.v
cmp.v.v GT
bf [74]

:[73]
push.v self.depth
push.v self.defaultdepth
cmp.v.v NEQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
push.v self.defaultdepth
pop.v.v self.depth

:[77]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [79]

:[78]
push.v self.animindex
pushi.e 0
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [85]

:[81]
pushi.e 1816
pop.v.i self.sprite_index
pushi.e 90
conv.i.v
call.i irandom(argc=1)
pop.v.v local._smokeangle
pushi.e 0
pop.v.i self.i

:[82]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [84]

:[83]
pushi.e 459
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local._smoke
push.v self.i
pushi.e 90
mul.i.v
pushloc.v local._smokeangle
add.v.v
pushloc.v local._smoke
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e 1823
pushloc.v local._smoke
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
sub.i.v
pushloc.v local._smoke
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 3
pushloc.v local._smoke
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 3
pushloc.v local._smoke
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [82]

:[84]
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.active
pushi.e 3
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.animindex

:[85]
push.v self.x
push.v self.hspeed
add.v.v
push.v self.xstart
cmp.v.v GTE
bt [90]

:[86]
push.v self.animindex
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
push.v self.y
push.v self.vspeed
add.v.v
push.v self.ystart
cmp.v.v GT
b [89]

:[88]
push.e 0

:[89]
b [91]

:[90]
push.e 1

:[91]
bf [93]

:[92]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y
push.v self.phase
push.e 1
add.i.v
pop.v.v self.phase
pushi.e 0
pop.v.i self.image_angle
pushi.e 0
pop.v.i self.image_index

:[93]
b [end]

:[94]
push.v self.phase
pushi.e 4
cmp.i.v EQ
bf [end]

:[95]
call.i instance_destroy(argc=0)
popz.v

:[end]