.localvar 2 arguments
.localvar 6482 xx 11326
.localvar 6483 yy 11327
.localvar 7017 a 11328

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
push.v self.endscene
pushi.e 1
cmp.i.v EQ
bf [189]

:[188]
pushi.e 952
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [190]

:[189]
push.e 0

:[190]
bf [200]

:[191]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [193]

:[192]
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

:[193]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [195]

:[194]
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

:[195]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [197]

:[196]
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

:[197]
push.v self.endscenetimer
pushi.e 10
cmp.i.v LT
bf [199]

:[198]
push.v self.endscenetimer
push.e 1
add.i.v
pop.v.v self.endscenetimer

:[199]
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

:[200]
push.v self.disabled
pushi.e 1
cmp.i.v EQ
bf [203]

:[201]
push.v self.disabledtimer
push.e 1
sub.i.v
pop.v.v self.disabledtimer
push.v self.disabledtimer
pushi.e 0
cmp.i.v LTE
bf [203]

:[202]
pushi.e 0
pop.v.i self.disabled

:[203]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [216]

:[204]
push.v self.siner
push.d 0.4
add.d.v
pop.v.v self.siner
push.v self.gooffscreen
pushi.e 0
cmp.i.v EQ
bf [206]

:[205]
push.v self.endscene
pushi.e 0
cmp.i.v EQ
b [207]

:[206]
push.e 0

:[207]
bf [209]

:[208]
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

:[209]
push.v self.mykeybuffer
pushi.e 0
cmp.i.v GT
bf [211]

:[210]
push.v self.disabled
pushi.e 0
cmp.i.v EQ
b [212]

:[211]
push.e 0

:[212]
bf [216]

:[213]
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
pushenv [215]

:[214]
push.v self.buttonspressed
pushi.e 1
add.i.v
pop.v.v self.buttonspressed

:[215]
popenv [214]

:[216]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [234]

:[217]
push.v self.nitro
pushi.e 0
cmp.i.v EQ
bf [224]

:[218]
push.v 484.bumpactfast
pushi.e 1
cmp.i.v EQ
bf [222]

:[219]
push.v self.hspeed
pushi.e 6
add.i.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 45
cmp.i.v GT
bf [221]

:[220]
pushi.e 45
pop.v.i self.hspeed

:[221]
b [224]

:[222]
push.v self.hspeed
pushi.e 4
add.i.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 30
cmp.i.v GT
bf [224]

:[223]
pushi.e 30
pop.v.i self.hspeed

:[224]
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [227]

:[225]
push.v self.hspeed
pushi.e 8
add.i.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 60
cmp.i.v GT
bf [227]

:[226]
pushi.e 60
pop.v.i self.hspeed

:[227]
push.v self.smoketimer
pushi.e 2
add.i.v
pop.v.v self.smoketimer
push.v self.smoketimer
pushi.e 3
cmp.i.v GTE
bf [229]

:[228]
pushi.e 0
pop.v.i self.smoketimer

:[229]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 200
add.i.v
cmp.v.v GTE
bf [231]

:[230]
pushi.e 2
pop.v.i self.con

:[231]
push.v self.damaged
pushi.e 1
cmp.i.v EQ
bf [234]

:[232]
pushi.e 5
pop.v.i self.con
pushi.e -48
pop.v.i self.hspeed
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [234]

:[233]
pushi.e -200
pop.v.i self.hspeed

:[234]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [247]

:[235]
push.v self.damaged
pushi.e 1
cmp.i.v EQ
bf [237]

:[236]
pushi.e 5
pop.v.i self.con

:[237]
push.v self.hspeed
pushi.e -6
cmp.i.v GTE
bf [239]

:[238]
push.v self.hspeed
pushi.e 2
sub.i.v
pop.v.v self.hspeed

:[239]
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [245]

:[240]
push.v self.hspeed
pushi.e 1
sub.i.v
pop.v.v self.hspeed
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 400
add.i.v
cmp.v.v GTE
bf [242]

:[241]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [243]

:[242]
push.e 0

:[243]
bf [245]

:[244]
pushi.e -2
pop.v.i self.hspeed

:[245]
push.v self.x
push.v self.xstart
pushi.e 10
add.i.v
cmp.v.v LTE
bf [247]

:[246]
pushi.e 0
pop.v.i self.damaged
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con

:[247]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [252]

:[248]
pushi.e -30
pop.v.i self.hspeed
push.v self.nitro
pushi.e 1
cmp.i.v EQ
bf [250]

:[249]
pushi.e -100
pop.v.i self.hspeed

:[250]
push.v self.x
push.v self.xstart
push.v self.hspeed
sub.v.v
cmp.v.v LTE
bf [252]

:[251]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.damaged
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con

:[252]
push.v self.mykeybuffer
pushi.e 1
sub.i.v
pop.v.v self.mykeybuffer
push.v self.gooffscreen
pushi.e 2
cmp.i.v EQ
bf [end]

:[253]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [end]

:[254]
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x

:[end]