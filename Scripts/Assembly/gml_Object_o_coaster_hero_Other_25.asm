.localvar 2 arguments
.localvar 7017 a 11339
.localvar 6409 hurt 11340
.localvar 21634 xx2 11341
.localvar 24493 yy2 11342

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
pushi.e 1465
cmp.i.v EQ
bf [16]

:[15]
push.d 1.5
pop.v.d local.a

:[16]
push.v self.sprite_index
pushi.e 1476
cmp.i.v EQ
bf [18]

:[17]
push.d 1.5
pop.v.d local.a

:[18]
push.v self.sprite_index
pushi.e 1475
cmp.i.v EQ
bf [20]

:[19]
push.d 1.5
pop.v.d local.a

:[20]
push.v self.sprite_index
pushi.e 1461
cmp.i.v EQ
bf [22]

:[21]
push.d 1.5
pop.v.d local.a

:[22]
push.v self.sprite_index
pushi.e 1477
cmp.i.v EQ
bf [24]

:[23]
push.d 1.5
pop.v.d local.a

:[24]
push.v self.sprite_index
pushi.e 1466
cmp.i.v EQ
bf [26]

:[25]
push.d 1.5
pop.v.d local.a

:[26]
pushi.e 0
pop.v.i local.hurt
push.v self.sprite_index
pushi.e 1420
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
pop.v.i local.hurt

:[28]
push.v self.sprite_index
pushi.e 1467
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i local.hurt

:[30]
push.v self.sprite_index
pushi.e 1444
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i local.hurt

:[32]
push.v self.sprite_index
pushi.e 1511
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.i local.hurt

:[34]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.v 372.hurt
pushi.e 0
cmp.i.v GT
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 1
pop.v.i local.hurt

:[39]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [42]

:[40]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [42]

:[41]
push.v 373.hurt
pushi.e 0
cmp.i.v GT
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 1
pop.v.i local.hurt

:[45]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [48]

:[46]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [48]

:[47]
push.v 374.hurt
pushi.e 0
cmp.i.v GT
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
pushi.e 1
pop.v.i local.hurt

:[51]
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
bf [53]

:[52]
pushi.e -5
pop.v.i local.xx2
pushi.e 5
pop.v.i local.yy2

:[53]
push.v self.sprite_index
pushi.e 1441
cmp.i.v EQ
bf [55]

:[54]
pushi.e -9
pop.v.i local.xx2
pushi.e 7
pop.v.i local.yy2

:[55]
push.v self.userealsprite
pushi.e 0
cmp.i.v EQ
bf [57]

:[56]
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

:[57]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [62]

:[58]
push.v 373.sprite_index
pushi.e 986
cmp.i.v EQ
bf [60]

:[59]
pushi.e 824
pop.v.i 373.sprite_index

:[60]
push.v 373.sprite_index
pushi.e 824
cmp.i.v EQ
bf [62]

:[61]
push.v 373.x
pushi.e 9
add.i.v
pop.v.v 373.x
push.v 373.y
pushi.e 0
add.i.v
pop.v.v 373.y

:[62]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [65]

:[63]
push.v 374.sprite_index
pushi.e 795
cmp.i.v EQ
bf [65]

:[64]
push.v 374.x
pushi.e 7
add.i.v
pop.v.v 374.x
push.v 374.y
pushi.e 3
add.i.v
pop.v.v 374.y

:[65]
pushloc.v local.hurt
pushi.e 0
cmp.i.v EQ
bf [67]

:[66]
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

:[67]
pushloc.v local.hurt
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
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

:[69]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bt [71]

:[70]
push.v self.disabled
pushi.e 1
cmp.i.v EQ
b [72]

:[71]
push.e 1

:[72]
bf [end]

:[73]
push.v self.userealsprite
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
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

:[75]
pushloc.v local.hurt
pushi.e 0
cmp.i.v EQ
bf [77]

:[76]
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

:[77]
pushloc.v local.hurt
pushi.e 1
cmp.i.v EQ
bf [end]

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
pushi.e 8
add.i.v
push.v self.x
push.v self.HeroID
pushi.e 1860
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]