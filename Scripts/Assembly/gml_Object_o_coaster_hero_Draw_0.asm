.localvar 2 arguments
.localvar 7017 a 11348
.localvar 6409 hurt 11349
.localvar 21634 xx2 11350
.localvar 24493 yy2 11351

:[0]
pushi.e 2
pop.v.i local.a
push.v self.sprite_index
pushi.e 1440
cmp.i.v EQ
bf [2]

:[1]
push.d 1.5
pop.v.d local.a

:[2]
push.v self.sprite_index
pushi.e 1441
cmp.i.v EQ
bf [4]

:[3]
push.d 1.5
pop.v.d local.a

:[4]
push.v self.sprite_index
pushi.e 1452
cmp.i.v EQ
bf [6]

:[5]
push.d 1.5
pop.v.d local.a

:[6]
push.v self.sprite_index
pushi.e 1449
cmp.i.v EQ
bf [8]

:[7]
push.d 1.5
pop.v.d local.a

:[8]
push.v self.sprite_index
pushi.e 1445
cmp.i.v EQ
bf [10]

:[9]
push.d 1.5
pop.v.d local.a

:[10]
push.v self.sprite_index
pushi.e 1435
cmp.i.v EQ
bf [12]

:[11]
push.d 1.5
pop.v.d local.a

:[12]
push.v self.sprite_index
pushi.e 1464
cmp.i.v EQ
bf [14]

:[13]
push.d 1.5
pop.v.d local.a

:[14]
push.v self.sprite_index
pushi.e 1439
cmp.i.v EQ
bf [16]

:[15]
push.d 1.5
pop.v.d local.a

:[16]
push.v self.sprite_index
pushi.e 1465
cmp.i.v EQ
bf [18]

:[17]
push.d 1.5
pop.v.d local.a

:[18]
push.v self.sprite_index
pushi.e 1476
cmp.i.v EQ
bf [20]

:[19]
push.d 1.5
pop.v.d local.a

:[20]
push.v self.sprite_index
pushi.e 1475
cmp.i.v EQ
bf [22]

:[21]
push.d 1.5
pop.v.d local.a

:[22]
push.v self.sprite_index
pushi.e 1461
cmp.i.v EQ
bf [24]

:[23]
push.d 1.5
pop.v.d local.a

:[24]
push.v self.sprite_index
pushi.e 1477
cmp.i.v EQ
bf [26]

:[25]
push.d 1.5
pop.v.d local.a

:[26]
push.v self.sprite_index
pushi.e 1466
cmp.i.v EQ
bf [28]

:[27]
push.d 1.5
pop.v.d local.a

:[28]
pushi.e 0
pop.v.i local.hurt
push.v self.sprite_index
pushi.e 1420
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i local.hurt

:[30]
push.v self.sprite_index
pushi.e 1467
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i local.hurt

:[32]
push.v self.sprite_index
pushi.e 1444
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.i local.hurt

:[34]
push.v self.sprite_index
pushi.e 1511
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i local.hurt

:[36]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [38]

:[37]
push.v 372.hurt
pushi.e 0
cmp.i.v GT
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 1
pop.v.i local.hurt

:[41]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [44]

:[42]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [44]

:[43]
push.v 373.hurt
pushi.e 0
cmp.i.v GT
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 1
pop.v.i local.hurt

:[47]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [50]

:[48]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [50]

:[49]
push.v 374.hurt
pushi.e 0
cmp.i.v GT
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 1
pop.v.i local.hurt

:[53]
push.v self.x
push.v self.back
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
pushi.e 8
add.i.v
push.v self.back
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 0
pop.v.i local.xx2
pushi.e 0
pop.v.i local.yy2
push.v self.sprite_index
pushi.e 1475
cmp.i.v EQ
bf [55]

:[54]
pushi.e -5
pop.v.i local.xx2
pushi.e 5
pop.v.i local.yy2

:[55]
push.v self.sprite_index
pushi.e 1441
cmp.i.v EQ
bf [57]

:[56]
pushi.e -9
pop.v.i local.xx2
pushi.e 7
pop.v.i local.yy2

:[57]
push.v self.image_index
pushi.e 0
cmp.i.v LT
bf [59]

:[58]
pushi.e 0
pop.v.i self.image_index

:[59]
push.v self.userealsprite
pushi.e 0
cmp.i.v EQ
bf [61]

:[60]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
push.v self.yy
add.v.v
pushloc.v local.yy2
add.v.v
pushi.e 8
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pushloc.v local.xx2
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[61]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [66]

:[62]
push.v 373.sprite_index
pushi.e 986
cmp.i.v EQ
bf [64]

:[63]
pushi.e 824
pop.v.i 373.sprite_index

:[64]
push.v 373.sprite_index
pushi.e 824
cmp.i.v EQ
bf [66]

:[65]
push.v 373.x
pushi.e 9
add.i.v
pop.v.v 373.x
push.v 373.y
pushi.e 0
add.i.v
pop.v.v 373.y

:[66]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [69]

:[67]
push.v 374.sprite_index
pushi.e 795
cmp.i.v EQ
bf [69]

:[68]
push.v 374.x
pushi.e 7
add.i.v
pop.v.v 374.x
push.v 374.y
pushi.e 3
add.i.v
pop.v.v 374.y

:[69]
pushloc.v local.hurt
pushi.e 0
cmp.i.v EQ
bf [71]

:[70]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.HeroID
pushi.e 1859
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[71]
pushloc.v local.hurt
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.HeroID
pushi.e 1860
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[73]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bt [75]

:[74]
push.v self.disabled
pushi.e 1
cmp.i.v EQ
b [76]

:[75]
push.e 1

:[76]
bf [end]

:[77]
push.v self.userealsprite
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
push.d 0.4
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
push.v self.yy
add.v.v
pushi.e 8
add.i.v
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[79]
pushloc.v local.hurt
pushi.e 0
cmp.i.v EQ
bf [81]

:[80]
push.d 0.4
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.HeroID
pushi.e 1859
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[81]
pushloc.v local.hurt
pushi.e 1
cmp.i.v EQ
bf [end]

:[82]
push.d 0.4
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.HeroID
pushi.e 1860
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]