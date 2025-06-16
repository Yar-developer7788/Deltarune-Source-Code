.localvar 2 arguments
.localvar 6482 xx 11335
.localvar 6483 yy 11336
.localvar 7017 a 11337

:[0]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 372
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 80
pop.v.i self.depth
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 372.depth

:[5]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 75
pop.v.i self.depth
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth

:[10]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 70
pop.v.i self.depth
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 374.depth

:[15]
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
pop.v.i local.xx
pushi.e 0
pop.v.i local.yy
push.v self.sprite_index
pushi.e 1422
cmp.i.v EQ
bf [17]

:[16]
pushi.e 4
pop.v.i local.xx
pushi.e -11
pop.v.i local.yy
b [52]

:[17]
push.v self.sprite_index
pushi.e 1419
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.i local.xx
pushi.e 8
pop.v.i local.yy
b [52]

:[19]
push.v self.sprite_index
pushi.e 1414
cmp.i.v EQ
bf [21]

:[20]
pushi.e 0
pop.v.i local.xx
pushi.e 8
pop.v.i local.yy
b [52]

:[21]
push.v self.sprite_index
pushi.e 1468
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.i local.xx
pushi.e -9
pop.v.i local.yy
b [52]

:[23]
push.v self.sprite_index
pushi.e 1438
cmp.i.v EQ
bf [25]

:[24]
pushi.e 0
pop.v.i local.xx
pushi.e -9
pop.v.i local.yy
b [52]

:[25]
push.v self.sprite_index
pushi.e 1442
cmp.i.v EQ
bf [27]

:[26]
pushi.e 0
pop.v.i local.xx
pushi.e -9
pop.v.i local.yy
b [52]

:[27]
push.v self.sprite_index
pushi.e 1443
cmp.i.v EQ
bf [29]

:[28]
pushi.e 0
pop.v.i local.xx
pushi.e -9
pop.v.i local.yy
b [52]

:[29]
push.v self.sprite_index
pushi.e 1512
cmp.i.v EQ
bf [31]

:[30]
pushi.e -12
pop.v.i local.xx
pushi.e -9
pop.v.i local.yy
b [52]

:[31]
push.v self.sprite_index
pushi.e 1515
cmp.i.v EQ
bf [33]

:[32]
pushi.e -12
pop.v.i local.xx
pushi.e -9
pop.v.i local.yy
b [52]

:[33]
push.v self.sprite_index
pushi.e 1516
cmp.i.v EQ
bf [35]

:[34]
pushi.e -12
pop.v.i local.xx
pushi.e -9
pop.v.i local.yy
b [52]

:[35]
push.v self.sprite_index
pushi.e 1502
cmp.i.v EQ
bf [37]

:[36]
pushi.e -12
pop.v.i local.xx
pushi.e 0
pop.v.i local.yy
b [52]

:[37]
push.v self.sprite_index
pushi.e 795
cmp.i.v EQ
bf [39]

:[38]
pushi.e 0
pop.v.i local.xx
pushi.e -16
pop.v.i local.yy
b [52]

:[39]
push.v self.sprite_index
pushi.e 797
cmp.i.v EQ
bf [41]

:[40]
pushi.e 0
pop.v.i local.xx
pushi.e -16
pop.v.i local.yy
b [52]

:[41]
push.v self.sprite_index
pushi.e 1411
cmp.i.v EQ
bf [43]

:[42]
pushi.e 0
pop.v.i local.xx
pushi.e -11
pop.v.i local.yy
b [52]

:[43]
push.v self.sprite_index
pushi.e 1517
cmp.i.v EQ
bf [45]

:[44]
pushi.e 0
pop.v.i local.xx
pushi.e -9
pop.v.i local.yy
b [52]

:[45]
push.v self.sprite_index
pushi.e 653
cmp.i.v EQ
bf [47]

:[46]
pushi.e 5
pop.v.i local.xx
pushi.e -10
pop.v.i local.yy
b [52]

:[47]
push.v self.sprite_index
pushi.e 829
cmp.i.v EQ
bf [49]

:[48]
pushi.e 10
pop.v.i local.xx
pushi.e -13
pop.v.i local.yy
b [52]

:[49]
push.v self.sprite_index
pushi.e 795
cmp.i.v EQ
bf [51]

:[50]
pushi.e 1
pop.v.i local.xx
pushi.e -2
pop.v.i local.yy
b [52]

:[51]
pushi.e 0
pop.v.i local.xx
pushi.e 0
pop.v.i local.yy

:[52]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
pushloc.v local.xx
pushi.e 10
sub.i.v
pop.v.v local.xx

:[54]
pushi.e 2
pop.v.i local.a
push.v self.sprite_index
pushi.e 1440
cmp.i.v EQ
bf [56]

:[55]
push.d 1.5
pop.v.d local.a

:[56]
push.v self.sprite_index
pushi.e 1441
cmp.i.v EQ
bf [58]

:[57]
push.d 1.5
pop.v.d local.a

:[58]
push.v self.sprite_index
pushi.e 1452
cmp.i.v EQ
bf [60]

:[59]
push.d 1.5
pop.v.d local.a

:[60]
push.v self.sprite_index
pushi.e 1449
cmp.i.v EQ
bf [62]

:[61]
push.d 1.5
pop.v.d local.a

:[62]
push.v self.sprite_index
pushi.e 1445
cmp.i.v EQ
bf [64]

:[63]
push.d 1.5
pop.v.d local.a

:[64]
push.v self.sprite_index
pushi.e 1435
cmp.i.v EQ
bf [66]

:[65]
push.d 1.5
pop.v.d local.a

:[66]
push.v self.sprite_index
pushi.e 1464
cmp.i.v EQ
bf [68]

:[67]
push.d 1.5
pop.v.d local.a

:[68]
push.v self.sprite_index
pushi.e 1465
cmp.i.v EQ
bf [70]

:[69]
push.d 1.5
pop.v.d local.a

:[70]
push.v self.sprite_index
pushi.e 1476
cmp.i.v EQ
bf [72]

:[71]
push.d 1.5
pop.v.d local.a

:[72]
push.v self.sprite_index
pushi.e 1475
cmp.i.v EQ
bf [74]

:[73]
push.d 1.5
pop.v.d local.a

:[74]
push.v self.sprite_index
pushi.e 1461
cmp.i.v EQ
bf [76]

:[75]
push.d 1.5
pop.v.d local.a

:[76]
push.v self.sprite_index
pushi.e 1477
cmp.i.v EQ
bf [78]

:[77]
push.d 1.5
pop.v.d local.a

:[78]
push.v self.sprite_index
pushi.e 1466
cmp.i.v EQ
bf [80]

:[79]
push.d 1.5
pop.v.d local.a

:[80]
pushi.e 0
pop.v.i self.userealsprite
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [103]

:[81]
push.v self.sprite_index
pushi.e 1420
cmp.i.v EQ
bf [83]

:[82]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 372.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 372.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 372.depth
b [103]

:[83]
push.v self.sprite_index
pushi.e 1422
cmp.i.v EQ
bf [85]

:[84]
push.v self.dontshowherosprite
pushi.e 1
cmp.i.v LT
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 372.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 372.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 372.depth
b [103]

:[88]
push.v self.sprite_index
pushi.e 1423
cmp.i.v EQ
bf [90]

:[89]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 372.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 372.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 372.depth
b [103]

:[90]
push.v self.sprite_index
pushi.e 1418
cmp.i.v EQ
bf [92]

:[91]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 372.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 372.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 372.depth
b [103]

:[92]
push.v self.sprite_index
pushi.e 1417
cmp.i.v EQ
bf [94]

:[93]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 372.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 372.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 372.depth
b [103]

:[94]
push.v self.sprite_index
pushi.e 1416
cmp.i.v EQ
bf [96]

:[95]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 372.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 372.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 372.depth
b [103]

:[96]
push.v self.sprite_index
pushi.e 1414
cmp.i.v EQ
bf [98]

:[97]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 372.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 372.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 372.depth
b [103]

:[98]
push.v self.sprite_index
pushi.e 1419
cmp.i.v EQ
bf [100]

:[99]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 372.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 372.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 372.depth
b [103]

:[100]
push.v self.dontshowherosprite
pushi.e 0
cmp.i.v GT
bf [102]

:[101]
push.v self.dontshowherosprite
push.e 1
sub.i.v
pop.v.v self.dontshowherosprite
pushi.e 0
pop.v.i self.userealsprite
b [103]

:[102]
call.i gml_Script_camerax(argc=0)
pushi.e 300
sub.i.v
pop.v.v 372.x

:[103]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [106]

:[105]
push.e 0

:[106]
bf [141]

:[107]
push.v self.sprite_index
pushi.e 1467
cmp.i.v EQ
bf [109]

:[108]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 373.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [141]

:[109]
push.v self.sprite_index
pushi.e 1438
cmp.i.v EQ
bf [111]

:[110]
push.v self.dontshowherosprite
pushi.e 1
cmp.i.v LT
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 373.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [141]

:[114]
push.v self.sprite_index
pushi.e 1444
cmp.i.v EQ
bf [116]

:[115]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 373.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [141]

:[116]
push.v 373.hurt
pushi.e 0
cmp.i.v GT
bf [118]

:[117]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 373.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [141]

:[118]
push.v self.sprite_index
pushi.e 1445
cmp.i.v EQ
bf [120]

:[119]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 373.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [141]

:[120]
push.v self.sprite_index
pushi.e 1435
cmp.i.v EQ
bf [122]

:[121]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 373.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [141]

:[122]
pushi.e 860
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [124]

:[123]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 860.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 64
add.i.v
pop.v.v 860.y
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 373.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 24
add.i.v
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [141]

:[124]
push.v self.sprite_index
pushi.e 1439
cmp.i.v EQ
bf [126]

:[125]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 373.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 64
add.i.v
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [141]

:[126]
push.v self.sprite_index
pushi.e 1437
cmp.i.v EQ
bf [128]

:[127]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 373.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 27
add.i.v
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [141]

:[128]
push.v self.sprite_index
pushi.e 1440
cmp.i.v EQ
bf [130]

:[129]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 373.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [141]

:[130]
push.v self.sprite_index
pushi.e 1442
cmp.i.v EQ
bf [132]

:[131]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 373.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [141]

:[132]
push.v self.sprite_index
pushi.e 1443
cmp.i.v EQ
bf [134]

:[133]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 373.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [141]

:[134]
push.v self.sprite_index
pushi.e 1452
cmp.i.v EQ
bf [136]

:[135]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 373.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [141]

:[136]
push.v self.sprite_index
pushi.e 1449
cmp.i.v EQ
bf [138]

:[137]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 373.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [141]

:[138]
push.v self.dontshowherosprite
pushi.e 0
cmp.i.v GT
bf [140]

:[139]
push.v self.dontshowherosprite
push.e 1
sub.i.v
pop.v.v self.dontshowherosprite
pushi.e 0
pop.v.i self.userealsprite
b [141]

:[140]
call.i gml_Script_camerax(argc=0)
pushi.e 300
sub.i.v
pop.v.v 373.x

:[141]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [143]

:[142]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [144]

:[143]
push.e 0

:[144]
bf [170]

:[145]
push.v self.sprite_index
pushi.e 1512
cmp.i.v EQ
bf [147]

:[146]
push.v self.dontshowherosprite
pushi.e 1
cmp.i.v LT
b [148]

:[147]
push.e 0

:[148]
bf [150]

:[149]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 374.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 374.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 374.depth
b [165]

:[150]
push.v self.sprite_index
pushi.e 1511
cmp.i.v EQ
bf [152]

:[151]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 374.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 374.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 374.depth
b [165]

:[152]
push.v self.sprite_index
pushi.e 1508
cmp.i.v EQ
bf [154]

:[153]
push.v self.x
pushi.e 10
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 374.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 374.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 374.depth
b [165]

:[154]
push.v self.sprite_index
pushi.e 1513
cmp.i.v EQ
bf [156]

:[155]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 374.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 374.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 374.depth
b [165]

:[156]
push.v self.sprite_index
pushi.e 1514
cmp.i.v EQ
bf [158]

:[157]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 374.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 374.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 374.depth
b [165]

:[158]
push.v self.sprite_index
pushi.e 1515
cmp.i.v EQ
bf [160]

:[159]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 374.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 374.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 374.depth
b [165]

:[160]
push.v self.sprite_index
pushi.e 1516
cmp.i.v EQ
bf [162]

:[161]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 374.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pushi.e 8
add.i.v
pop.v.v 374.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 374.depth
b [165]

:[162]
push.v self.dontshowherosprite
pushi.e 0
cmp.i.v GT
bf [164]

:[163]
push.v self.dontshowherosprite
push.e 1
sub.i.v
pop.v.v self.dontshowherosprite
pushi.e 0
pop.v.i self.userealsprite
b [165]

:[164]
call.i gml_Script_camerax(argc=0)
pushi.e 300
sub.i.v
pop.v.v 374.x

:[165]
push.v 374.sprite_index
pushi.e 1512
cmp.i.v EQ
bf [167]

:[166]
push.v self.sprite_index
pushi.e 1515
cmp.i.v EQ
b [168]

:[167]
push.e 0

:[168]
bf [170]

:[169]
push.v self.x
pushi.e 20
add.i.v
pushloc.v local.xx
add.v.v
pop.v.v 374.x
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushloc.v local.a
mul.v.v
sub.v.v
pushloc.v local.yy
add.v.v
pop.v.v 374.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 374.depth

:[170]
push.v self.sprite_index
pushi.e 1419
cmp.i.v EQ
bf [174]

:[171]
push.v self.image_index
push.d 6.5
cmp.d.v GT
bf [174]

:[172]
push.v self.forceact
pushi.e 1
cmp.i.v EQ
bf [174]

:[173]
push.v self.introanim
pushi.e 1
cmp.i.v EQ
b [175]

:[174]
push.e 0

:[175]
bf [177]

:[176]
pushi.e 1422
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.forceact
pushi.e 0
pop.v.i self.introanim

:[177]
push.v self.sprite_index
pushi.e 1477
cmp.i.v EQ
bf [181]

:[178]
push.v self.image_index
push.d 3.5
cmp.d.v GT
bf [181]

:[179]
push.v self.forceact
pushi.e 1
cmp.i.v EQ
bf [181]

:[180]
push.v self.introanim
pushi.e 1
cmp.i.v EQ
b [182]

:[181]
push.e 0

:[182]
bf [184]

:[183]
pushi.e 1438
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.forceact
pushi.e 0
pop.v.i self.introanim

:[184]
push.v self.sprite_index
pushi.e 1506
cmp.i.v EQ
bf [188]

:[185]
push.v self.image_index
pushi.e 10
cmp.i.v GT
bf [188]

:[186]
push.v self.forceact
pushi.e 1
cmp.i.v EQ
bf [188]

:[187]
push.v self.introanim
pushi.e 1
cmp.i.v EQ
b [189]

:[188]
push.e 0

:[189]
bf [end]

:[190]
pushi.e 1512
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 9
pop.v.i self.image_index
pushi.e 0
pop.v.i self.forceact
pushi.e 0
pop.v.i self.introanim

:[end]