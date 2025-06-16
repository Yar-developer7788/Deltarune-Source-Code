.localvar 2 arguments
.localvar 6482 xx 11344
.localvar 6483 yy 11345
.localvar 7017 a 11346

:[0]
pushi.e 484
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 484.nitro
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.nitro
b [6]

:[5]
pushi.e 0
pop.v.i self.nitro

:[6]
push.v 502.actcon
pushi.e 1
cmp.i.v EQ
bf [9]

:[7]
push.v 502.timer
push.v 502.timermax
cmp.v.v LT
bf [9]

:[8]
push.v self.bump
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [62]

:[11]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v self.gooffscreen
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bt [23]

:[15]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.gooffscreen
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bt [23]

:[19]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
push.v self.gooffscreen
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
b [24]

:[23]
push.e 1

:[24]
bf [62]

:[25]
push.v self.visible
pushi.e 1
cmp.i.v EQ
bf [62]

:[26]
pushi.e 0
pop.v.i self.bump
pushi.e 3
pop.v.i self.mykeybuffer
pushi.e 1
pop.v.i 502.playerinput
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.v self.sprite_index
pushi.e 1415
cmp.i.v NEQ
b [29]

:[28]
push.e 0

:[29]
bt [35]

:[30]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [33]

:[31]
push.v self.sprite_index
pushi.e 1415
cmp.i.v EQ
bf [33]

:[32]
push.v self.image_index
pushi.e 9
cmp.i.v GT
b [34]

:[33]
push.e 0

:[34]
b [36]

:[35]
push.e 1

:[36]
bf [38]

:[37]
pushi.e 1415
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.i self.forceact
push.d 0.5
pop.v.d self.image_speed

:[38]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
push.v self.sprite_index
pushi.e 1475
cmp.i.v NEQ
b [41]

:[40]
push.e 0

:[41]
bt [47]

:[42]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [45]

:[43]
push.v self.sprite_index
pushi.e 1475
cmp.i.v EQ
bf [45]

:[44]
push.v self.image_index
pushi.e 8
cmp.i.v GT
b [46]

:[45]
push.e 0

:[46]
b [48]

:[47]
push.e 1

:[48]
bf [50]

:[49]
pushi.e 1475
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.i self.forceact
push.d 0.5
pop.v.d self.image_speed

:[50]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [52]

:[51]
push.v self.sprite_index
pushi.e 1502
cmp.i.v NEQ
b [53]

:[52]
push.e 0

:[53]
bt [59]

:[54]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [57]

:[55]
push.v self.sprite_index
pushi.e 1502
cmp.i.v EQ
bf [57]

:[56]
push.v self.image_index
pushi.e 11
cmp.i.v GT
b [58]

:[57]
push.e 0

:[58]
b [60]

:[59]
push.e 1

:[60]
bf [62]

:[61]
pushi.e 1502
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.i self.forceact
push.d 0.5
pop.v.d self.image_speed

:[62]
push.v 502.actcon
pushi.e 0
cmp.i.v NEQ
bf [64]

:[63]
pushi.e 1
pop.v.i self.actoncondelay

:[64]
pushi.e 870
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [66]

:[65]
pushi.e 0
pop.v.i self.actoncondelay

:[66]
push.v 502.actcon
pushi.e 0
cmp.i.v EQ
bf [69]

:[67]
push.v self.actoncondelay
pushi.e 0
cmp.i.v EQ
bf [69]

:[68]
push.v self.endscene
pushi.e 0
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [88]

:[71]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
push.v self.forceact
pushi.e 0
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
push.v 372.sprite_index
pop.v.v self.sprite_index
push.v 372.image_index
pushi.e 1
sub.i.v
pop.v.v self.image_index

:[76]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [79]

:[77]
push.v self.forceact
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
push.v 373.sprite_index
pop.v.v self.sprite_index
push.v 373.image_index
pushi.e 1
sub.i.v
pop.v.v self.image_index

:[82]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [85]

:[83]
push.v self.forceact
pushi.e 0
cmp.i.v EQ
bf [85]

:[84]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
push.v 374.sprite_index
pop.v.v self.sprite_index
push.v 374.image_index
pushi.e 1
sub.i.v
pop.v.v self.image_index

:[88]
push.v self.sprite_index
pushi.e 1415
cmp.i.v EQ
bf [90]

:[89]
push.v self.image_index
pushi.e 10
cmp.i.v GT
b [91]

:[90]
push.e 0

:[91]
bf [93]

:[92]
pushi.e 1422
pop.v.i 372.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 1422
pop.v.i self.sprite_index

:[93]
push.v self.sprite_index
pushi.e 1475
cmp.i.v EQ
bf [95]

:[94]
push.v self.image_index
pushi.e 9
cmp.i.v GT
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
pushi.e 1438
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[98]
push.v self.sprite_index
pushi.e 1441
cmp.i.v EQ
bf [100]

:[99]
push.v self.image_index
pushi.e 9
cmp.i.v GT
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
pushi.e 1438
pop.v.i self.sprite_index

:[103]
push.v self.sprite_index
pushi.e 1502
cmp.i.v EQ
bf [105]

:[104]
push.v self.image_index
pushi.e 11
cmp.i.v GT
b [106]

:[105]
push.e 0

:[106]
bf [108]

:[107]
pushi.e 1512
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.forceact

:[108]
push.v self.sprite_index
pushi.e 1419
cmp.i.v EQ
bf [111]

:[109]
push.v self.forceact
pushi.e 1
cmp.i.v EQ
bf [111]

:[110]
push.v self.introanim
pushi.e 1
cmp.i.v EQ
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
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

:[114]
push.v self.sprite_index
pushi.e 1477
cmp.i.v EQ
bf [117]

:[115]
push.v self.forceact
pushi.e 1
cmp.i.v EQ
bf [117]

:[116]
push.v self.introanim
pushi.e 1
cmp.i.v EQ
b [118]

:[117]
push.e 0

:[118]
bf [120]

:[119]
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

:[120]
push.v self.sprite_index
pushi.e 1506
cmp.i.v EQ
bf [123]

:[121]
push.v self.forceact
pushi.e 1
cmp.i.v EQ
bf [123]

:[122]
push.v self.introanim
pushi.e 1
cmp.i.v EQ
b [124]

:[123]
push.e 0

:[124]
bf [126]

:[125]
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

:[126]
push.v self.sprite_index
pushi.e 1422
cmp.i.v EQ
bf [128]

:[127]
pushi.e 4
pop.v.i local.xx
pushi.e -11
pop.v.i local.yy
b [159]

:[128]
push.v self.sprite_index
pushi.e 1419
cmp.i.v EQ
bf [130]

:[129]
pushi.e 0
pop.v.i local.xx
pushi.e 8
pop.v.i local.yy
b [159]

:[130]
push.v self.sprite_index
pushi.e 1414
cmp.i.v EQ
bf [132]

:[131]
pushi.e 0
pop.v.i local.xx
pushi.e 8
pop.v.i local.yy
b [159]

:[132]
push.v self.sprite_index
pushi.e 1468
cmp.i.v EQ
bf [134]

:[133]
pushi.e 0
pop.v.i local.xx
pushi.e -9
pop.v.i local.yy
b [159]

:[134]
push.v self.sprite_index
pushi.e 1438
cmp.i.v EQ
bf [136]

:[135]
pushi.e 0
pop.v.i local.xx
pushi.e -9
pop.v.i local.yy
b [159]

:[136]
push.v self.sprite_index
pushi.e 1442
cmp.i.v EQ
bf [138]

:[137]
pushi.e 0
pop.v.i local.xx
pushi.e -9
pop.v.i local.yy
b [159]

:[138]
push.v self.sprite_index
pushi.e 1443
cmp.i.v EQ
bf [140]

:[139]
pushi.e 0
pop.v.i local.xx
pushi.e -9
pop.v.i local.yy
b [159]

:[140]
push.v self.sprite_index
pushi.e 1512
cmp.i.v EQ
bf [142]

:[141]
pushi.e -12
pop.v.i local.xx
pushi.e -9
pop.v.i local.yy
b [159]

:[142]
push.v self.sprite_index
pushi.e 1502
cmp.i.v EQ
bf [144]

:[143]
pushi.e -12
pop.v.i local.xx
pushi.e 0
pop.v.i local.yy
b [159]

:[144]
push.v self.sprite_index
pushi.e 795
cmp.i.v EQ
bf [146]

:[145]
pushi.e 0
pop.v.i local.xx
pushi.e -16
pop.v.i local.yy
b [159]

:[146]
push.v self.sprite_index
pushi.e 797
cmp.i.v EQ
bf [148]

:[147]
pushi.e 0
pop.v.i local.xx
pushi.e -16
pop.v.i local.yy
b [159]

:[148]
push.v self.sprite_index
pushi.e 1411
cmp.i.v EQ
bf [150]

:[149]
pushi.e 0
pop.v.i local.xx
pushi.e -11
pop.v.i local.yy
b [159]

:[150]
push.v self.sprite_index
pushi.e 1517
cmp.i.v EQ
bf [152]

:[151]
pushi.e 0
pop.v.i local.xx
pushi.e -9
pop.v.i local.yy
b [159]

:[152]
push.v self.sprite_index
pushi.e 653
cmp.i.v EQ
bf [154]

:[153]
pushi.e 5
pop.v.i local.xx
pushi.e -10
pop.v.i local.yy
b [159]

:[154]
push.v self.sprite_index
pushi.e 829
cmp.i.v EQ
bf [156]

:[155]
pushi.e 10
pop.v.i local.xx
pushi.e -13
pop.v.i local.yy
b [159]

:[156]
push.v self.sprite_index
pushi.e 795
cmp.i.v EQ
bf [158]

:[157]
pushi.e 1
pop.v.i local.xx
pushi.e -2
pop.v.i local.yy
b [159]

:[158]
pushi.e 0
pop.v.i local.xx
pushi.e 0
pop.v.i local.yy

:[159]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [161]

:[160]
pushloc.v local.xx
pushi.e 10
sub.i.v
pop.v.v local.xx

:[161]
pushi.e 2
pop.v.i local.a
push.v self.sprite_index
pushi.e 1440
cmp.i.v EQ
bf [163]

:[162]
push.d 1.5
pop.v.d local.a

:[163]
push.v self.sprite_index
pushi.e 1441
cmp.i.v EQ
bf [165]

:[164]
push.d 1.5
pop.v.d local.a

:[165]
push.v self.sprite_index
pushi.e 1452
cmp.i.v EQ
bf [167]

:[166]
push.d 1.5
pop.v.d local.a

:[167]
push.v self.sprite_index
pushi.e 1449
cmp.i.v EQ
bf [169]

:[168]
push.d 1.5
pop.v.d local.a

:[169]
push.v self.sprite_index
pushi.e 1445
cmp.i.v EQ
bf [171]

:[170]
push.d 1.5
pop.v.d local.a

:[171]
push.v self.sprite_index
pushi.e 1435
cmp.i.v EQ
bf [173]

:[172]
push.d 1.5
pop.v.d local.a

:[173]
push.v self.sprite_index
pushi.e 1464
cmp.i.v EQ
bf [175]

:[174]
push.d 1.5
pop.v.d local.a

:[175]
push.v self.sprite_index
pushi.e 1465
cmp.i.v EQ
bf [177]

:[176]
push.d 1.5
pop.v.d local.a

:[177]
push.v self.sprite_index
pushi.e 1476
cmp.i.v EQ
bf [179]

:[178]
push.d 1.5
pop.v.d local.a

:[179]
push.v self.sprite_index
pushi.e 1475
cmp.i.v EQ
bf [181]

:[180]
push.d 1.5
pop.v.d local.a

:[181]
push.v self.sprite_index
pushi.e 1461
cmp.i.v EQ
bf [183]

:[182]
push.d 1.5
pop.v.d local.a

:[183]
push.v self.sprite_index
pushi.e 1477
cmp.i.v EQ
bf [185]

:[184]
push.d 1.5
pop.v.d local.a

:[185]
push.v self.sprite_index
pushi.e 1466
cmp.i.v EQ
bf [187]

:[186]
push.d 1.5
pop.v.d local.a

:[187]
pushi.e 0
pop.v.i self.userealsprite
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [206]

:[188]
push.v self.sprite_index
pushi.e 1420
cmp.i.v EQ
bf [190]

:[189]
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
b [206]

:[190]
push.v self.sprite_index
pushi.e 1422
cmp.i.v EQ
bf [192]

:[191]
push.v self.dontshowherosprite
pushi.e 1
cmp.i.v LT
b [193]

:[192]
push.e 0

:[193]
bf [195]

:[194]
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
b [206]

:[195]
push.v self.sprite_index
pushi.e 1423
cmp.i.v EQ
bf [197]

:[196]
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
b [206]

:[197]
push.v self.sprite_index
pushi.e 1418
cmp.i.v EQ
bf [199]

:[198]
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
b [206]

:[199]
push.v self.sprite_index
pushi.e 1417
cmp.i.v EQ
bf [201]

:[200]
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
b [206]

:[201]
push.v self.sprite_index
pushi.e 1416
cmp.i.v EQ
bf [203]

:[202]
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
b [206]

:[203]
push.v self.dontshowherosprite
pushi.e 0
cmp.i.v GT
bf [205]

:[204]
push.v self.dontshowherosprite
push.e 1
sub.i.v
pop.v.v self.dontshowherosprite
pushi.e 0
pop.v.i self.userealsprite
b [206]

:[205]
call.i gml_Script_camerax(argc=0)
pushi.e 300
sub.i.v
pop.v.v 372.x

:[206]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [208]

:[207]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [209]

:[208]
push.e 0

:[209]
bf [240]

:[210]
push.v self.sprite_index
pushi.e 1467
cmp.i.v EQ
bf [212]

:[211]
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
b [240]

:[212]
push.v self.sprite_index
pushi.e 1438
cmp.i.v EQ
bf [214]

:[213]
push.v self.dontshowherosprite
pushi.e 1
cmp.i.v LT
b [215]

:[214]
push.e 0

:[215]
bf [217]

:[216]
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
b [240]

:[217]
push.v self.sprite_index
pushi.e 1444
cmp.i.v EQ
bf [219]

:[218]
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
b [240]

:[219]
push.v 373.hurt
pushi.e 0
cmp.i.v GT
bf [221]

:[220]
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
b [240]

:[221]
push.v self.sprite_index
pushi.e 1445
cmp.i.v EQ
bf [223]

:[222]
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
b [240]

:[223]
push.v self.sprite_index
pushi.e 1435
cmp.i.v EQ
bf [225]

:[224]
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
b [240]

:[225]
pushi.e 860
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [227]

:[226]
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
pushi.e 8
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
pushi.e 8
add.i.v
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [240]

:[227]
push.v self.sprite_index
pushi.e 1464
cmp.i.v EQ
bf [229]

:[228]
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
b [240]

:[229]
push.v self.sprite_index
pushi.e 1465
cmp.i.v EQ
bf [231]

:[230]
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
b [240]

:[231]
push.v self.sprite_index
pushi.e 1440
cmp.i.v EQ
bf [233]

:[232]
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
b [240]

:[233]
push.v self.sprite_index
pushi.e 1442
cmp.i.v EQ
bf [235]

:[234]
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
b [240]

:[235]
push.v self.sprite_index
pushi.e 1443
cmp.i.v EQ
bf [237]

:[236]
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
b [240]

:[237]
push.v self.dontshowherosprite
pushi.e 0
cmp.i.v GT
bf [239]

:[238]
push.v self.dontshowherosprite
push.e 1
sub.i.v
pop.v.v self.dontshowherosprite
pushi.e 0
pop.v.i self.userealsprite
b [240]

:[239]
call.i gml_Script_camerax(argc=0)
pushi.e 300
sub.i.v
pop.v.v 373.x

:[240]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [242]

:[241]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [243]

:[242]
push.e 0

:[243]
bf [260]

:[244]
push.v self.sprite_index
pushi.e 1512
cmp.i.v EQ
bf [246]

:[245]
push.v self.dontshowherosprite
pushi.e 1
cmp.i.v LT
b [247]

:[246]
push.e 0

:[247]
bf [249]

:[248]
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
b [260]

:[249]
push.v self.sprite_index
pushi.e 1511
cmp.i.v EQ
bf [251]

:[250]
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
b [260]

:[251]
push.v self.sprite_index
pushi.e 1508
cmp.i.v EQ
bf [253]

:[252]
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
b [260]

:[253]
push.v self.sprite_index
pushi.e 1513
cmp.i.v EQ
bf [255]

:[254]
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
b [260]

:[255]
push.v self.sprite_index
pushi.e 1514
cmp.i.v EQ
bf [257]

:[256]
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
b [260]

:[257]
push.v self.dontshowherosprite
pushi.e 0
cmp.i.v GT
bf [259]

:[258]
push.v self.dontshowherosprite
push.e 1
sub.i.v
pop.v.v self.dontshowherosprite
pushi.e 0
pop.v.i self.userealsprite
b [260]

:[259]
call.i gml_Script_camerax(argc=0)
pushi.e 300
sub.i.v
pop.v.v 374.x

:[260]
push.v self.endscene
pushi.e 1
cmp.i.v EQ
bf [262]

:[261]
pushi.e 952
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [263]

:[262]
push.e 0

:[263]
bf [273]

:[264]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [266]

:[265]
push.v 952.coaster_kris
pushi.e -9
push.v [stacktop]self.x
push.v 952.coaster_kris
pushi.e -9
push.v [stacktop]self.sinerx
add.v.v
push.v 952.coaster_kris
pushi.e -9
push.v [stacktop]self.coaster_offset_x
add.v.v
pop.v.v local.xx
push.v 952.coaster_kris
pushi.e -9
push.v [stacktop]self.y
pushi.e 37
add.i.v
push.v 952.coaster_kris
pushi.e -9
push.v [stacktop]self.sinery
add.v.v
push.v 952.coaster_kris
pushi.e -9
push.v [stacktop]self.coaster_offset_y
add.v.v
pop.v.v local.yy

:[266]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [268]

:[267]
push.v 952.coaster_susie
pushi.e -9
push.v [stacktop]self.x
push.v 952.coaster_susie
pushi.e -9
push.v [stacktop]self.sinerx
add.v.v
push.v 952.coaster_susie
pushi.e -9
push.v [stacktop]self.coaster_offset_x
add.v.v
pop.v.v local.xx
push.v 952.coaster_susie
pushi.e -9
push.v [stacktop]self.y
pushi.e 37
add.i.v
push.v 952.coaster_susie
pushi.e -9
push.v [stacktop]self.sinery
add.v.v
push.v 952.coaster_susie
pushi.e -9
push.v [stacktop]self.coaster_offset_y
add.v.v
pop.v.v local.yy

:[268]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [270]

:[269]
push.v 952.coaster_ralsei
pushi.e -9
push.v [stacktop]self.x
pushi.e 8
add.i.v
push.v 952.coaster_ralsei
pushi.e -9
push.v [stacktop]self.sinerx
add.v.v
push.v 952.coaster_ralsei
pushi.e -9
push.v [stacktop]self.coaster_offset_x
add.v.v
pop.v.v local.xx
push.v 952.coaster_ralsei
pushi.e -9
push.v [stacktop]self.y
pushi.e 44
add.i.v
push.v 952.coaster_ralsei
pushi.e -9
push.v [stacktop]self.sinery
add.v.v
push.v 952.coaster_ralsei
pushi.e -9
push.v [stacktop]self.coaster_offset_y
add.v.v
pop.v.v local.yy

:[270]
push.v self.endscenetimer
pushi.e 10
cmp.i.v LT
bf [272]

:[271]
push.v self.endscenetimer
push.e 1
add.i.v
pop.v.v self.endscenetimer

:[272]
push.v self.endscenetimer
pushi.e 10
conv.i.d
div.d.v
pushloc.v local.xx
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x
push.v self.endscenetimer
pushi.e 10
conv.i.d
div.d.v
pushloc.v local.yy
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y

:[273]
push.v self.disabled
pushi.e 1
cmp.i.v EQ
bf [276]

:[274]
push.v self.disabledtimer
push.e 1
sub.i.v
pop.v.v self.disabledtimer
push.v self.disabledtimer
pushi.e 0
cmp.i.v LTE
bf [276]

:[275]
pushi.e 0
pop.v.i self.disabled

:[276]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [289]

:[277]
push.v self.siner
push.d 0.4
add.d.v
pop.v.v self.siner
push.v self.gooffscreen
pushi.e 0
cmp.i.v EQ
bf [279]

:[278]
push.v self.endscene
pushi.e 0
cmp.i.v EQ
b [280]

:[279]
push.e 0

:[280]
bf [282]

:[281]
push.v self.xstart
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.x

:[282]
push.v self.mykeybuffer
pushi.e 0
cmp.i.v GT
bf [284]

:[283]
push.v self.disabled
pushi.e 0
cmp.i.v EQ
b [285]

:[284]
push.e 0

:[285]
bf [289]

:[286]
pushi.e 1
pop.v.i self.con
pushi.e 1
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.i
pushi.e 186
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 0
pop.v.i self.dashtimer
pushi.e 0
pop.v.i self.damaged
pushi.e 502
pushenv [288]

:[287]
push.v self.buttonspressed
pushi.e 1
add.i.v
pop.v.v self.buttonspressed

:[288]
popenv [287]

:[289]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [307]

:[290]
push.v self.nitro
pushi.e 0
cmp.i.v EQ
bf [297]

:[291]
push.v 484.bumpactfast
pushi.e 1
cmp.i.v EQ
bf [295]

:[292]
push.v self.hspeed
pushi.e 6
add.i.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 45
cmp.i.v GT
bf [294]

:[293]
pushi.e 45
pop.v.i self.hspeed

:[294]
b [297]

:[295]
push.v self.hspeed
pushi.e 4
add.i.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 30
cmp.i.v GT
bf [297]

:[296]
pushi.e 30
pop.v.i self.hspeed

:[297]
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [300]

:[298]
push.v self.hspeed
pushi.e 8
add.i.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 60
cmp.i.v GT
bf [300]

:[299]
pushi.e 60
pop.v.i self.hspeed

:[300]
push.v self.smoketimer
pushi.e 2
add.i.v
pop.v.v self.smoketimer
push.v self.smoketimer
pushi.e 3
cmp.i.v GTE
bf [302]

:[301]
pushi.e 0
pop.v.i self.smoketimer

:[302]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 200
add.i.v
cmp.v.v GTE
bf [304]

:[303]
pushi.e 2
pop.v.i self.con

:[304]
push.v self.damaged
pushi.e 1
cmp.i.v EQ
bf [307]

:[305]
pushi.e 5
pop.v.i self.con
pushi.e -48
pop.v.i self.hspeed
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [307]

:[306]
pushi.e -200
pop.v.i self.hspeed

:[307]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [320]

:[308]
push.v self.damaged
pushi.e 1
cmp.i.v EQ
bf [310]

:[309]
pushi.e 5
pop.v.i self.con

:[310]
push.v self.hspeed
pushi.e -6
cmp.i.v GTE
bf [312]

:[311]
push.v self.hspeed
pushi.e 2
sub.i.v
pop.v.v self.hspeed

:[312]
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [318]

:[313]
push.v self.hspeed
pushi.e 1
sub.i.v
pop.v.v self.hspeed
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 400
add.i.v
cmp.v.v GTE
bf [315]

:[314]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [316]

:[315]
push.e 0

:[316]
bf [318]

:[317]
pushi.e -2
pop.v.i self.hspeed

:[318]
push.v self.x
push.v self.xstart
pushi.e 10
add.i.v
cmp.v.v LTE
bf [320]

:[319]
pushi.e 0
pop.v.i self.damaged
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con

:[320]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [325]

:[321]
pushi.e -30
pop.v.i self.hspeed
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [323]

:[322]
pushi.e -100
pop.v.i self.hspeed

:[323]
push.v self.x
push.v self.xstart
push.v self.hspeed
sub.v.v
cmp.v.v LTE
bf [325]

:[324]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.damaged
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con

:[325]
push.v self.mykeybuffer
pushi.e 1
sub.i.v
pop.v.v self.mykeybuffer
push.v self.gooffscreen
pushi.e 2
cmp.i.v EQ
bf [end]

:[326]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [end]

:[327]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x

:[end]