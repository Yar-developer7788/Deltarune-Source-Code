.localvar 2 arguments
.localvar 7017 a 11410

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
bf [8]

:[7]
push.v 502.timer
push.v 502.timermax
cmp.v.v LT
b [9]

:[8]
push.e 0

:[9]
bf [79]

:[10]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [13]

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
bt [25]

:[15]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [18]

:[16]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.v self.gooffscreen
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bt [25]

:[20]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [23]

:[21]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
push.v self.gooffscreen
pushi.e 0
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
b [26]

:[25]
push.e 1

:[26]
bf [79]

:[27]
push.v self.visible
pushi.e 1
cmp.i.v EQ
bf [79]

:[28]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [30]

:[29]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 0
pop.v.i self.draw_button_press

:[33]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [35]

:[34]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [38]

:[37]
pushi.e 0
pop.v.i self.draw_button_press

:[38]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [40]

:[39]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 0
pop.v.i self.draw_button_press

:[43]
pushi.e 3
pop.v.i self.mykeybuffer
pushi.e 1
pop.v.i 502.playerinput
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
push.v self.sprite_index
pushi.e 1415
cmp.i.v NEQ
b [46]

:[45]
push.e 0

:[46]
bt [52]

:[47]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [50]

:[48]
push.v self.sprite_index
pushi.e 1415
cmp.i.v EQ
bf [50]

:[49]
push.v self.image_index
pushi.e 9
cmp.i.v GT
b [51]

:[50]
push.e 0

:[51]
b [53]

:[52]
push.e 1

:[53]
bf [55]

:[54]
pushi.e 1415
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.i self.forceact
push.d 0.5
pop.v.d self.image_speed

:[55]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
push.v self.sprite_index
pushi.e 1475
cmp.i.v NEQ
b [58]

:[57]
push.e 0

:[58]
bt [64]

:[59]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [62]

:[60]
push.v self.sprite_index
pushi.e 1475
cmp.i.v EQ
bf [62]

:[61]
push.v self.image_index
pushi.e 8
cmp.i.v GT
b [63]

:[62]
push.e 0

:[63]
b [65]

:[64]
push.e 1

:[65]
bf [67]

:[66]
pushi.e 1475
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.i self.forceact
push.d 0.5
pop.v.d self.image_speed

:[67]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [69]

:[68]
push.v self.sprite_index
pushi.e 1502
cmp.i.v NEQ
b [70]

:[69]
push.e 0

:[70]
bt [76]

:[71]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [74]

:[72]
push.v self.sprite_index
pushi.e 1502
cmp.i.v EQ
bf [74]

:[73]
push.v self.image_index
pushi.e 11
cmp.i.v GT
b [75]

:[74]
push.e 0

:[75]
b [77]

:[76]
push.e 1

:[77]
bf [79]

:[78]
pushi.e 1502
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.i self.forceact
push.d 0.5
pop.v.d self.image_speed

:[79]
push.v 502.actcon
pushi.e 0
cmp.i.v NEQ
bf [81]

:[80]
pushi.e 1
pop.v.i self.actoncondelay

:[81]
pushi.e 870
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [83]

:[82]
pushi.e 0
pop.v.i self.actoncondelay

:[83]
push.v 502.actcon
pushi.e 0
cmp.i.v EQ
bf [85]

:[84]
push.v self.actoncondelay
pushi.e 0
cmp.i.v EQ
b [86]

:[85]
push.e 0

:[86]
bf [104]

:[87]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [89]

:[88]
push.v self.forceact
pushi.e 0
cmp.i.v EQ
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
push.v 372.sprite_index
pop.v.v self.sprite_index
push.v 372.image_index
pushi.e 1
sub.i.v
pop.v.v self.image_index

:[92]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [95]

:[93]
push.v self.forceact
pushi.e 0
cmp.i.v EQ
bf [95]

:[94]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
push.v 373.sprite_index
pop.v.v self.sprite_index
push.v 373.image_index
pushi.e 1
sub.i.v
pop.v.v self.image_index

:[98]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [101]

:[99]
push.v self.forceact
pushi.e 0
cmp.i.v EQ
bf [101]

:[100]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [102]

:[101]
push.e 0

:[102]
bf [104]

:[103]
push.v 374.sprite_index
pop.v.v self.sprite_index
push.v 374.image_index
pushi.e 1
sub.i.v
pop.v.v self.image_index

:[104]
push.v self.sprite_index
pushi.e 1415
cmp.i.v EQ
bf [106]

:[105]
push.v self.image_index
pushi.e 10
cmp.i.v GT
b [107]

:[106]
push.e 0

:[107]
bf [109]

:[108]
pushi.e 1422
pop.v.i 372.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 1422
pop.v.i self.sprite_index

:[109]
push.v self.sprite_index
pushi.e 1475
cmp.i.v EQ
bf [111]

:[110]
push.v self.image_index
pushi.e 9
cmp.i.v GT
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
pushi.e 1438
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[114]
push.v self.sprite_index
pushi.e 1441
cmp.i.v EQ
bf [116]

:[115]
push.v self.image_index
pushi.e 9
cmp.i.v GT
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
pushi.e 1438
pop.v.i self.sprite_index

:[119]
push.v self.sprite_index
pushi.e 1502
cmp.i.v EQ
bf [121]

:[120]
push.v self.image_index
pushi.e 11
cmp.i.v GT
b [122]

:[121]
push.e 0

:[122]
bf [124]

:[123]
pushi.e 1512
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.forceact

:[124]
push.v self.sprite_index
pushi.e 1419
cmp.i.v EQ
bf [127]

:[125]
push.v self.forceact
pushi.e 1
cmp.i.v EQ
bf [127]

:[126]
push.v self.introanim
pushi.e 1
cmp.i.v EQ
b [128]

:[127]
push.e 0

:[128]
bf [130]

:[129]
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

:[130]
push.v self.sprite_index
pushi.e 1477
cmp.i.v EQ
bf [133]

:[131]
push.v self.forceact
pushi.e 1
cmp.i.v EQ
bf [133]

:[132]
push.v self.introanim
pushi.e 1
cmp.i.v EQ
b [134]

:[133]
push.e 0

:[134]
bf [136]

:[135]
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

:[136]
push.v self.sprite_index
pushi.e 1506
cmp.i.v EQ
bf [139]

:[137]
push.v self.forceact
pushi.e 1
cmp.i.v EQ
bf [139]

:[138]
push.v self.introanim
pushi.e 1
cmp.i.v EQ
b [140]

:[139]
push.e 0

:[140]
bf [142]

:[141]
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

:[142]
push.v self.sprite_index
pushi.e 1422
cmp.i.v EQ
bf [144]

:[143]
pushi.e 4
pop.v.i self.xx
pushi.e -11
pop.v.i self.yy
b [171]

:[144]
push.v self.sprite_index
pushi.e 1419
cmp.i.v EQ
bf [146]

:[145]
pushi.e 0
pop.v.i self.xx
pushi.e 8
pop.v.i self.yy
b [171]

:[146]
push.v self.sprite_index
pushi.e 1414
cmp.i.v EQ
bf [148]

:[147]
pushi.e 0
pop.v.i self.xx
pushi.e 8
pop.v.i self.yy
b [171]

:[148]
push.v self.sprite_index
pushi.e 1468
cmp.i.v EQ
bf [150]

:[149]
pushi.e 0
pop.v.i self.xx
pushi.e -9
pop.v.i self.yy
b [171]

:[150]
push.v self.sprite_index
pushi.e 1438
cmp.i.v EQ
bf [152]

:[151]
pushi.e 0
pop.v.i self.xx
pushi.e -9
pop.v.i self.yy
b [171]

:[152]
push.v self.sprite_index
pushi.e 1512
cmp.i.v EQ
bf [154]

:[153]
pushi.e -12
pop.v.i self.xx
pushi.e -9
pop.v.i self.yy
b [171]

:[154]
push.v self.sprite_index
pushi.e 1502
cmp.i.v EQ
bf [156]

:[155]
pushi.e -12
pop.v.i self.xx
pushi.e 0
pop.v.i self.yy
b [171]

:[156]
push.v self.sprite_index
pushi.e 795
cmp.i.v EQ
bf [158]

:[157]
pushi.e 0
pop.v.i self.xx
pushi.e -16
pop.v.i self.yy
b [171]

:[158]
push.v self.sprite_index
pushi.e 797
cmp.i.v EQ
bf [160]

:[159]
pushi.e 0
pop.v.i self.xx
pushi.e -16
pop.v.i self.yy
b [171]

:[160]
push.v self.sprite_index
pushi.e 1411
cmp.i.v EQ
bf [162]

:[161]
pushi.e 0
pop.v.i self.xx
pushi.e -11
pop.v.i self.yy
b [171]

:[162]
push.v self.sprite_index
pushi.e 1517
cmp.i.v EQ
bf [164]

:[163]
pushi.e 0
pop.v.i self.xx
pushi.e -9
pop.v.i self.yy
b [171]

:[164]
push.v self.sprite_index
pushi.e 653
cmp.i.v EQ
bf [166]

:[165]
pushi.e 5
pop.v.i self.xx
pushi.e -10
pop.v.i self.yy
b [171]

:[166]
push.v self.sprite_index
pushi.e 829
cmp.i.v EQ
bf [168]

:[167]
pushi.e 10
pop.v.i self.xx
pushi.e -13
pop.v.i self.yy
b [171]

:[168]
push.v self.sprite_index
pushi.e 795
cmp.i.v EQ
bf [170]

:[169]
pushi.e 1
pop.v.i self.xx
pushi.e -2
pop.v.i self.yy
b [171]

:[170]
pushi.e 0
pop.v.i self.xx
pushi.e 0
pop.v.i self.yy

:[171]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [173]

:[172]
push.v self.xx
pushi.e 10
sub.i.v
pop.v.v self.xx

:[173]
pushi.e 2
pop.v.i local.a
push.v self.sprite_index
pushi.e 1440
cmp.i.v EQ
bf [175]

:[174]
push.d 1.5
pop.v.d local.a

:[175]
push.v self.sprite_index
pushi.e 1441
cmp.i.v EQ
bf [177]

:[176]
push.d 1.5
pop.v.d local.a

:[177]
push.v self.sprite_index
pushi.e 1452
cmp.i.v EQ
bf [179]

:[178]
push.d 1.5
pop.v.d local.a

:[179]
push.v self.sprite_index
pushi.e 1449
cmp.i.v EQ
bf [181]

:[180]
push.d 1.5
pop.v.d local.a

:[181]
push.v self.sprite_index
pushi.e 1445
cmp.i.v EQ
bf [183]

:[182]
push.d 1.5
pop.v.d local.a

:[183]
push.v self.sprite_index
pushi.e 1435
cmp.i.v EQ
bf [185]

:[184]
push.d 1.5
pop.v.d local.a

:[185]
push.v self.sprite_index
pushi.e 1464
cmp.i.v EQ
bf [187]

:[186]
push.d 1.5
pop.v.d local.a

:[187]
push.v self.sprite_index
pushi.e 1465
cmp.i.v EQ
bf [189]

:[188]
push.d 1.5
pop.v.d local.a

:[189]
push.v self.sprite_index
pushi.e 1476
cmp.i.v EQ
bf [191]

:[190]
push.d 1.5
pop.v.d local.a

:[191]
push.v self.sprite_index
pushi.e 1475
cmp.i.v EQ
bf [193]

:[192]
push.d 1.5
pop.v.d local.a

:[193]
push.v self.sprite_index
pushi.e 1461
cmp.i.v EQ
bf [195]

:[194]
push.d 1.5
pop.v.d local.a

:[195]
push.v self.sprite_index
pushi.e 1477
cmp.i.v EQ
bf [197]

:[196]
push.d 1.5
pop.v.d local.a

:[197]
push.v self.sprite_index
pushi.e 1466
cmp.i.v EQ
bf [199]

:[198]
push.d 1.5
pop.v.d local.a

:[199]
pushi.e 0
pop.v.i self.userealsprite
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [215]

:[200]
push.v self.sprite_index
pushi.e 1420
cmp.i.v EQ
bf [202]

:[201]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 372.x
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
pop.v.v 372.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 372.depth
b [215]

:[202]
push.v self.sprite_index
pushi.e 1422
cmp.i.v EQ
bf [205]

:[203]
push.v 484.bumpactstarted
pushi.e 0
cmp.i.v EQ
bf [205]

:[204]
push.v self.dontshowherosprite
pushi.e 1
cmp.i.v LT
b [206]

:[205]
push.e 0

:[206]
bf [208]

:[207]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 372.x
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
pop.v.v 372.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 372.depth
b [215]

:[208]
push.v self.sprite_index
pushi.e 1423
cmp.i.v EQ
bf [210]

:[209]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 372.x
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
pop.v.v 372.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 372.depth
b [215]

:[210]
push.v self.sprite_index
pushi.e 1418
cmp.i.v EQ
bf [212]

:[211]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 372.x
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
pop.v.v 372.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 372.depth
b [215]

:[212]
push.v self.dontshowherosprite
pushi.e 0
cmp.i.v GT
bf [214]

:[213]
push.v self.dontshowherosprite
push.e 1
sub.i.v
pop.v.v self.dontshowherosprite
pushi.e 0
pop.v.i self.userealsprite
b [215]

:[214]
call.i gml_Script_camerax(argc=0)
pushi.e 300
sub.i.v
pop.v.v 372.x

:[215]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [217]

:[216]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [218]

:[217]
push.e 0

:[218]
bf [246]

:[219]
push.v self.sprite_index
pushi.e 1467
cmp.i.v EQ
bf [221]

:[220]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 373.x
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
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [246]

:[221]
push.v self.sprite_index
pushi.e 1438
cmp.i.v EQ
bf [224]

:[222]
push.v 484.bumpactstarted
pushi.e 0
cmp.i.v EQ
bf [224]

:[223]
push.v self.dontshowherosprite
pushi.e 1
cmp.i.v LT
b [225]

:[224]
push.e 0

:[225]
bf [227]

:[226]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 373.x
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
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [246]

:[227]
push.v self.sprite_index
pushi.e 1444
cmp.i.v EQ
bf [229]

:[228]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 373.x
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
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [246]

:[229]
push.v 373.hurt
pushi.e 0
cmp.i.v GT
bf [231]

:[230]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 373.x
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
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [246]

:[231]
push.v self.sprite_index
pushi.e 1445
cmp.i.v EQ
bf [233]

:[232]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 373.x
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
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [246]

:[233]
push.v self.sprite_index
pushi.e 1435
cmp.i.v EQ
bf [235]

:[234]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 373.x
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
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [246]

:[235]
pushi.e 860
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [237]

:[236]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 860.x
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
pop.v.v 860.y
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 373.x
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
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [246]

:[237]
push.v self.sprite_index
pushi.e 1464
cmp.i.v EQ
bf [239]

:[238]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 373.x
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
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [246]

:[239]
push.v self.sprite_index
pushi.e 1465
cmp.i.v EQ
bf [241]

:[240]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 373.x
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
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [246]

:[241]
push.v self.sprite_index
pushi.e 1472
cmp.i.v EQ
bf [243]

:[242]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 373.x
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
pop.v.v 373.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 373.depth
b [246]

:[243]
push.v self.dontshowherosprite
pushi.e 0
cmp.i.v GT
bf [245]

:[244]
push.v self.dontshowherosprite
push.e 1
sub.i.v
pop.v.v self.dontshowherosprite
pushi.e 0
pop.v.i self.userealsprite
b [246]

:[245]
call.i gml_Script_camerax(argc=0)
pushi.e 300
sub.i.v
pop.v.v 373.x

:[246]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [248]

:[247]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [249]

:[248]
push.e 0

:[249]
bf [265]

:[250]
push.v self.sprite_index
pushi.e 1512
cmp.i.v EQ
bf [253]

:[251]
push.v 484.bumpactstarted
pushi.e 0
cmp.i.v EQ
bf [253]

:[252]
push.v self.dontshowherosprite
pushi.e 1
cmp.i.v LT
b [254]

:[253]
push.e 0

:[254]
bf [256]

:[255]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 374.x
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
pop.v.v 374.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 374.depth
b [265]

:[256]
push.v self.sprite_index
pushi.e 1511
cmp.i.v EQ
bf [258]

:[257]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 374.x
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
pop.v.v 374.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 374.depth
b [265]

:[258]
push.v self.sprite_index
pushi.e 1508
cmp.i.v EQ
bf [260]

:[259]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 374.x
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
pop.v.v 374.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 374.depth
b [265]

:[260]
push.v self.sprite_index
pushi.e 1513
cmp.i.v EQ
bf [262]

:[261]
push.v self.x
pushi.e 20
add.i.v
push.v self.xx
add.v.v
pop.v.v 374.x
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
pop.v.v 374.y
pushi.e 1
pop.v.i self.userealsprite
push.v self.depth
pushi.e 1
add.i.v
pop.v.v 374.depth
b [265]

:[262]
push.v self.dontshowherosprite
pushi.e 0
cmp.i.v GT
bf [264]

:[263]
push.v self.dontshowherosprite
push.e 1
sub.i.v
pop.v.v self.dontshowherosprite
pushi.e 0
pop.v.i self.userealsprite
b [265]

:[264]
call.i gml_Script_camerax(argc=0)
pushi.e 300
sub.i.v
pop.v.v 374.x

:[265]
push.v self.disabled
pushi.e 1
cmp.i.v EQ
bf [268]

:[266]
push.v self.disabledtimer
push.e 1
sub.i.v
pop.v.v self.disabledtimer
push.v self.disabledtimer
pushi.e 0
cmp.i.v LTE
bf [268]

:[267]
pushi.e 0
pop.v.i self.disabled

:[268]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [278]

:[269]
push.v self.siner
push.d 0.4
add.d.v
pop.v.v self.siner
push.v self.gooffscreen
pushi.e 0
cmp.i.v EQ
bf [271]

:[270]
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

:[271]
push.v self.mykeybuffer
pushi.e 0
cmp.i.v GT
bf [273]

:[272]
push.v self.disabled
pushi.e 0
cmp.i.v EQ
b [274]

:[273]
push.e 0

:[274]
bf [278]

:[275]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.dashtimer
pushi.e 0
pop.v.i self.damaged
pushi.e 502
pushenv [277]

:[276]
push.v self.buttonspressed
pushi.e 1
add.i.v
pop.v.v self.buttonspressed

:[277]
popenv [276]

:[278]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [292]

:[279]
push.v self.nitro
pushi.e 0
cmp.i.v EQ
bf [282]

:[280]
push.v self.hspeed
pushi.e 4
add.i.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 30
cmp.i.v GT
bf [282]

:[281]
pushi.e 30
pop.v.i self.hspeed

:[282]
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [285]

:[283]
push.v self.hspeed
pushi.e 8
add.i.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 60
cmp.i.v GT
bf [285]

:[284]
pushi.e 60
pop.v.i self.hspeed

:[285]
push.v self.smoketimer
pushi.e 2
add.i.v
pop.v.v self.smoketimer
push.v self.smoketimer
pushi.e 3
cmp.i.v GTE
bf [287]

:[286]
pushi.e 501
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
push.v self.hspeed
add.v.v
pushi.e 8
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.smoke
pushi.e 0
pop.v.i self.smoketimer

:[287]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 200
add.i.v
cmp.v.v GTE
bf [289]

:[288]
pushi.e 2
pop.v.i self.con

:[289]
push.v self.damaged
pushi.e 1
cmp.i.v EQ
bf [292]

:[290]
pushi.e 5
pop.v.i self.con
pushi.e -48
pop.v.i self.hspeed
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [292]

:[291]
pushi.e -200
pop.v.i self.hspeed

:[292]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [305]

:[293]
push.v self.damaged
pushi.e 1
cmp.i.v EQ
bf [295]

:[294]
pushi.e 5
pop.v.i self.con

:[295]
push.v self.hspeed
pushi.e -6
cmp.i.v GTE
bf [297]

:[296]
push.v self.hspeed
pushi.e 2
sub.i.v
pop.v.v self.hspeed

:[297]
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [303]

:[298]
push.v self.hspeed
pushi.e 1
sub.i.v
pop.v.v self.hspeed
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 400
add.i.v
cmp.v.v GTE
bf [300]

:[299]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [301]

:[300]
push.e 0

:[301]
bf [303]

:[302]
pushi.e -2
pop.v.i self.hspeed

:[303]
push.v self.x
push.v self.xstart
pushi.e 10
add.i.v
cmp.v.v LTE
bf [305]

:[304]
pushi.e 0
pop.v.i self.damaged
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con

:[305]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [310]

:[306]
pushi.e -30
pop.v.i self.hspeed
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [308]

:[307]
pushi.e -100
pop.v.i self.hspeed

:[308]
push.v self.x
push.v self.xstart
push.v self.hspeed
sub.v.v
cmp.v.v LTE
bf [310]

:[309]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.damaged
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con

:[310]
push.v self.mykeybuffer
pushi.e 1
sub.i.v
pop.v.v self.mykeybuffer
push.v self.gooffscreen
pushi.e 2
cmp.i.v EQ
bf [end]

:[311]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [end]

:[312]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x

:[end]