.localvar 2 arguments
.localvar 15379 nopress 19991
.localvar 9730 g 19992
.localvar 15390 mvd 19993
.localvar 107 i 19994
.localvar 220 j 19995

:[0]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e 0
pop.v.i self.wallcheck
push.v self.x
pop.v.v self.nowx
push.v self.y
pop.v.v self.nowy
pushi.e 0
pop.v.i local.nopress
push.v self.press_d
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.press_l
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
push.v self.press_u
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.press_r
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i local.nopress

:[7]
pushi.e 0
pop.v.i self.press_l
pushi.e 0
pop.v.i self.press_r
pushi.e 0
pop.v.i self.press_d
pushi.e 0
pop.v.i self.press_u
pushi.e 0
pop.v.i self.bkx
pushi.e 0
pop.v.i self.bky
pushi.e 0
pop.v.i self.bkxy
pushi.e 2
pop.v.i self.jelly
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [209]

:[8]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [10]

:[9]
push.v self.threebuffer
pushi.e 0
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [21]

:[12]
pushi.e -5
pushi.e 7
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.battlemode
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [21]

:[16]
pushi.e 1494
pushenv [18]

:[17]
pushi.e 2
pop.v.i self.threebuffer

:[18]
popenv [17]
pushi.e 1655
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.movenoise
pushi.e 2
pop.v.i self.threebuffer

:[20]
popenv [19]
pushi.e 0
pop.v.i global.menuno
pushi.e 5
pop.v.i global.interact
pushi.e 2
pop.v.i self.threebuffer
pushi.e 2
pop.v.i self.twobuffer

:[21]
pushi.e -5
pushi.e 11
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [29]

:[22]
call.i gml_Script_button2_h_ch1(argc=0)
conv.v.b
bf [24]

:[23]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 0
pop.v.i self.run
b [28]

:[27]
pushi.e 1
pop.v.i self.run

:[28]
b [35]

:[29]
call.i gml_Script_button2_h_ch1(argc=0)
conv.v.b
bf [31]

:[30]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 1
pop.v.i self.run
b [35]

:[34]
pushi.e 0
pop.v.i self.run

:[35]
push.v self.autorun
pushi.e 0
cmp.i.v GT
bf [40]

:[36]
push.v self.autorun
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
pushi.e 1
pop.v.i self.run
pushi.e 200
pop.v.i self.runtimer

:[38]
push.v self.autorun
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
pop.v.i self.run
pushi.e 50
pop.v.i self.runtimer

:[40]
push.v self.run
pushi.e 1
cmp.i.v EQ
bf [51]

:[41]
push.v self.darkmode
pushi.e 0
cmp.i.v EQ
bf [46]

:[42]
push.v self.bwspeed
pushi.e 1
add.i.v
pop.v.v self.wspeed
push.v self.runtimer
pushi.e 10
cmp.i.v GT
bf [44]

:[43]
push.v self.bwspeed
pushi.e 2
add.i.v
pop.v.v self.wspeed

:[44]
push.v self.runtimer
pushi.e 60
cmp.i.v GT
bf [46]

:[45]
push.v self.bwspeed
pushi.e 3
add.i.v
pop.v.v self.wspeed

:[46]
push.v self.darkmode
pushi.e 1
cmp.i.v EQ
bf [51]

:[47]
push.v self.bwspeed
pushi.e 2
add.i.v
pop.v.v self.wspeed
push.v self.runtimer
pushi.e 10
cmp.i.v GT
bf [49]

:[48]
push.v self.bwspeed
pushi.e 4
add.i.v
pop.v.v self.wspeed

:[49]
push.v self.runtimer
pushi.e 60
cmp.i.v GT
bf [51]

:[50]
push.v self.bwspeed
pushi.e 5
add.i.v
pop.v.v self.wspeed

:[51]
push.v self.run
pushi.e 0
cmp.i.v EQ
bf [53]

:[52]
push.v self.bwspeed
pop.v.v self.wspeed

:[53]
call.i gml_Script_left_h_ch1(argc=0)
conv.v.b
bf [55]

:[54]
pushi.e 1
pop.v.i self.press_l

:[55]
call.i gml_Script_right_h_ch1(argc=0)
conv.v.b
bf [57]

:[56]
pushi.e 1
pop.v.i self.press_r

:[57]
call.i gml_Script_up_h_ch1(argc=0)
conv.v.b
bf [59]

:[58]
pushi.e 1
pop.v.i self.press_u

:[59]
call.i gml_Script_down_h_ch1(argc=0)
conv.v.b
bf [61]

:[60]
pushi.e 1
pop.v.i self.press_d

:[61]
pushi.e 0
pop.v.i self.px
pushi.e 0
pop.v.i self.py
pushi.e -1
pop.v.i self.pressdir
push.v self.press_r
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
push.v self.wspeed
pop.v.v self.px
pushi.e 1
pop.v.i self.pressdir

:[63]
push.v self.press_l
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
push.v self.wspeed
neg.v
pop.v.v self.px
pushi.e 3
pop.v.i self.pressdir

:[65]
push.v self.press_d
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
push.v self.wspeed
pop.v.v self.py
pushi.e 0
pop.v.i self.pressdir

:[67]
push.v self.press_u
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
push.v self.wspeed
neg.v
pop.v.v self.py
pushi.e 2
pop.v.i self.pressdir

:[69]
pushloc.v local.nopress
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
push.v self.pressdir
pushi.e -1
cmp.i.v NEQ
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
push.v self.pressdir
pop.v.v global.facing

:[74]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [82]

:[75]
push.v self.press_d
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
pushi.e 0
pop.v.i global.facing

:[77]
push.v self.press_u
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
push.v self.pressdir
pushi.e -1
cmp.i.v NEQ
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
push.v self.pressdir
pop.v.v global.facing

:[82]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [90]

:[83]
push.v self.press_u
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
pushi.e 2
pop.v.i global.facing

:[85]
push.v self.press_d
pushi.e 0
cmp.i.v EQ
bf [87]

:[86]
push.v self.pressdir
pushi.e -1
cmp.i.v NEQ
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
push.v self.pressdir
pop.v.v global.facing

:[90]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [98]

:[91]
push.v self.press_r
pushi.e 1
cmp.i.v EQ
bf [93]

:[92]
pushi.e 1
pop.v.i global.facing

:[93]
push.v self.press_l
pushi.e 0
cmp.i.v EQ
bf [95]

:[94]
push.v self.pressdir
pushi.e -1
cmp.i.v NEQ
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
push.v self.pressdir
pop.v.v global.facing

:[98]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [106]

:[99]
push.v self.press_l
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
pushi.e 3
pop.v.i global.facing

:[101]
push.v self.press_r
pushi.e 0
cmp.i.v EQ
bf [103]

:[102]
push.v self.pressdir
pushi.e -1
cmp.i.v NEQ
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
push.v self.pressdir
pop.v.v global.facing

:[106]
pushi.e 0
pop.v.i local.nopress
pushi.e 0
pop.v.i self.xmeet
pushi.e 0
pop.v.i self.ymeet
pushi.e 0
pop.v.i self.xymeet
pushi.e 1338
conv.i.v
push.v self.y
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [138]

:[107]
push.v self.wspeed
pop.v.v local.g

:[108]
pushloc.v local.g
pushi.e 0
cmp.i.v GT
bf [123]

:[109]
pushi.e 0
pop.v.i local.mvd
push.v self.press_d
pushi.e 0
cmp.i.v EQ
bf [111]

:[110]
pushi.e 1338
conv.i.v
push.v self.y
pushloc.v local.g
sub.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [112]

:[111]
push.e 0

:[112]
bf [115]

:[113]
push.v self.y
pushloc.v local.g
sub.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.py
b [123]

:[114]
b [116]

:[115]
pushi.e 1
pop.v.i local.mvd

:[116]
push.v self.press_u
pushi.e 0
cmp.i.v EQ
bf [119]

:[117]
pushloc.v local.mvd
pushi.e 0
cmp.i.v EQ
bf [119]

:[118]
pushi.e 1338
conv.i.v
push.v self.y
pushloc.v local.g
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [120]

:[119]
push.e 0

:[120]
bf [122]

:[121]
push.v self.y
pushloc.v local.g
add.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.py
b [123]

:[122]
push.v local.g
pushi.e 1
sub.i.v
pop.v.v local.g
b [108]

:[123]
pushi.e 1
pop.v.i self.xmeet
pushi.e 0
pop.v.i self.bkx
push.v self.px
pushi.e 0
cmp.i.v GT
bf [129]

:[124]
push.v self.px
pop.v.v local.i

:[125]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [129]

:[126]
pushi.e 1338
conv.i.v
push.v self.y
push.v self.x
pushloc.v local.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [128]

:[127]
pushloc.v local.i
pop.v.v self.px
pushi.e 1
pop.v.i self.bkx
b [129]

:[128]
push.v local.i
pushi.e 1
sub.i.v
pop.v.v local.i
b [125]

:[129]
push.v self.px
pushi.e 0
cmp.i.v LT
bf [135]

:[130]
push.v self.px
pop.v.v local.i

:[131]
pushloc.v local.i
pushi.e 0
cmp.i.v LTE
bf [135]

:[132]
pushi.e 1338
conv.i.v
push.v self.y
push.v self.x
pushloc.v local.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [134]

:[133]
pushloc.v local.i
pop.v.v self.px
pushi.e 1
pop.v.i self.bkx
b [135]

:[134]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [131]

:[135]
push.v self.bkx
pushi.e 0
cmp.i.v EQ
bf [137]

:[136]
pushi.e 0
pop.v.i self.px

:[137]
b [169]

:[138]
pushi.e 1338
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [169]

:[139]
pushi.e 1
pop.v.i self.ymeet
pushi.e 0
pop.v.i self.bky
push.v self.wspeed
pop.v.v local.g

:[140]
pushloc.v local.g
pushi.e 0
cmp.i.v GT
bf [155]

:[141]
pushi.e 0
pop.v.i local.mvd
push.v self.press_r
pushi.e 0
cmp.i.v EQ
bf [143]

:[142]
pushi.e 1338
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
pushloc.v local.g
sub.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [144]

:[143]
push.e 0

:[144]
bf [147]

:[145]
push.v self.x
pushloc.v local.g
sub.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.px
b [155]

:[146]
b [148]

:[147]
pushi.e 1
pop.v.i local.mvd

:[148]
pushloc.v local.mvd
pushi.e 0
cmp.i.v EQ
bf [151]

:[149]
push.v self.press_l
pushi.e 0
cmp.i.v EQ
bf [151]

:[150]
pushi.e 1338
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
pushloc.v local.g
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [152]

:[151]
push.e 0

:[152]
bf [154]

:[153]
push.v self.x
pushloc.v local.g
add.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.px
b [155]

:[154]
push.v local.g
pushi.e 1
sub.i.v
pop.v.v local.g
b [140]

:[155]
push.v self.py
pushi.e 0
cmp.i.v GT
bf [161]

:[156]
push.v self.py
pop.v.v local.i

:[157]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [161]

:[158]
pushi.e 1338
conv.i.v
push.v self.y
pushloc.v local.i
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [160]

:[159]
pushloc.v local.i
pop.v.v self.py
pushi.e 1
pop.v.i self.bky
b [161]

:[160]
push.v local.i
pushi.e 1
sub.i.v
pop.v.v local.i
b [157]

:[161]
push.v self.py
pushi.e 0
cmp.i.v LT
bf [167]

:[162]
push.v self.py
pop.v.v local.i

:[163]
pushloc.v local.i
pushi.e 0
cmp.i.v LTE
bf [167]

:[164]
pushi.e 1338
conv.i.v
push.v self.y
pushloc.v local.i
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [166]

:[165]
pushloc.v local.i
pop.v.v self.py
pushi.e 1
pop.v.i self.bky
b [167]

:[166]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [163]

:[167]
push.v self.bky
pushi.e 0
cmp.i.v EQ
bf [169]

:[168]
pushi.e 0
pop.v.i self.py

:[169]
pushi.e 1338
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [194]

:[170]
pushi.e 1
pop.v.i self.xymeet
pushi.e 0
pop.v.i self.bkxy
push.v self.px
pop.v.v local.i
push.v self.py
pop.v.v local.j

:[171]
pushloc.v local.j
pushi.e 0
cmp.i.v NEQ
bt [173]

:[172]
pushloc.v local.i
pushi.e 0
cmp.i.v NEQ
b [174]

:[173]
push.e 1

:[174]
bf [192]

:[175]
pushi.e 1338
conv.i.v
push.v self.y
pushloc.v local.j
add.v.v
push.v self.x
pushloc.v local.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [177]

:[176]
pushloc.v local.i
pop.v.v self.px
pushloc.v local.j
pop.v.v self.py
pushi.e 1
pop.v.i self.bkxy
b [192]

:[177]
pushloc.v local.j
call.i abs(argc=1)
pushi.e 1
cmp.i.v GTE
bf [183]

:[178]
pushloc.v local.j
pushi.e 0
cmp.i.v GT
bf [180]

:[179]
push.v local.j
pushi.e 1
sub.i.v
pop.v.v local.j

:[180]
pushloc.v local.j
pushi.e 0
cmp.i.v LT
bf [182]

:[181]
push.v local.j
pushi.e 1
add.i.v
pop.v.v local.j

:[182]
b [184]

:[183]
pushi.e 0
pop.v.i local.j

:[184]
pushloc.v local.i
call.i abs(argc=1)
pushi.e 1
cmp.i.v GTE
bf [190]

:[185]
pushloc.v local.i
pushi.e 0
cmp.i.v GT
bf [187]

:[186]
push.v local.i
pushi.e 1
sub.i.v
pop.v.v local.i

:[187]
pushloc.v local.i
pushi.e 0
cmp.i.v LT
bf [189]

:[188]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i

:[189]
b [191]

:[190]
pushi.e 0
pop.v.i local.i

:[191]
b [171]

:[192]
push.v self.bkxy
pushi.e 0
cmp.i.v EQ
bf [194]

:[193]
pushi.e 0
pop.v.i self.px
pushi.e 0
pop.v.i self.py

:[194]
pushi.e 0
pop.v.i self.runmove
push.v self.run
pushi.e 1
cmp.i.v EQ
bf [198]

:[195]
push.v self.xmeet
pushi.e 0
cmp.i.v EQ
bf [198]

:[196]
push.v self.ymeet
pushi.e 0
cmp.i.v EQ
bf [198]

:[197]
push.v self.xymeet
pushi.e 0
cmp.i.v EQ
b [199]

:[198]
push.e 0

:[199]
bf [207]

:[200]
push.v self.px
call.i abs(argc=1)
pushi.e 0
cmp.i.v GT
bt [202]

:[201]
push.v self.py
call.i abs(argc=1)
pushi.e 0
cmp.i.v GT
b [203]

:[202]
push.e 1

:[203]
bf [205]

:[204]
pushi.e 1
pop.v.i self.runmove
push.v self.runtimer
pushi.e 1
add.i.v
pop.v.v self.runtimer
b [206]

:[205]
pushi.e 0
pop.v.i self.runtimer

:[206]
b [208]

:[207]
pushi.e 0
pop.v.i self.runtimer

:[208]
push.v self.x
push.v self.px
add.v.v
pop.v.v self.x
push.v self.y
push.v self.py
add.v.v
pop.v.v self.y

:[209]
pushi.e 0
pop.v.i self.walk
push.v self.x
push.v self.nowx
cmp.v.v NEQ
bf [211]

:[210]
pushloc.v local.nopress
pushi.e 0
cmp.i.v EQ
b [212]

:[211]
push.e 0

:[212]
bf [214]

:[213]
pushi.e 1
pop.v.i self.walk

:[214]
push.v self.y
push.v self.nowy
cmp.v.v NEQ
bf [216]

:[215]
pushloc.v local.nopress
pushi.e 0
cmp.i.v EQ
b [217]

:[216]
push.e 0

:[217]
bf [219]

:[218]
pushi.e 1
pop.v.i self.walk

:[219]
push.v self.walk
pushi.e 1
cmp.i.v EQ
bf [221]

:[220]
pushi.e 6
pop.v.i self.walkbuffer

:[221]
push.v self.walkbuffer
pushi.e 3
cmp.i.v GT
bf [223]

:[222]
push.v self.fun
pushi.e 0
cmp.i.v EQ
b [224]

:[223]
push.e 0

:[224]
bf [238]

:[225]
push.v self.walktimer
push.d 1.5
add.d.v
pop.v.v self.walktimer
push.v self.runmove
pushi.e 1
cmp.i.v EQ
bf [227]

:[226]
push.v self.walktimer
push.d 1.5
add.d.v
pop.v.v self.walktimer

:[227]
push.v self.walktimer
pushi.e 40
cmp.i.v GTE
bf [229]

:[228]
push.v self.walktimer
pushi.e 40
sub.i.v
pop.v.v self.walktimer

:[229]
push.v self.walktimer
pushi.e 10
cmp.i.v LT
bf [231]

:[230]
pushi.e 0
pop.v.i self.image_index

:[231]
push.v self.walktimer
pushi.e 10
cmp.i.v GTE
bf [233]

:[232]
pushi.e 1
pop.v.i self.image_index

:[233]
push.v self.walktimer
pushi.e 20
cmp.i.v GTE
bf [235]

:[234]
pushi.e 2
pop.v.i self.image_index

:[235]
push.v self.walktimer
pushi.e 30
cmp.i.v GTE
bf [237]

:[236]
pushi.e 3
pop.v.i self.image_index

:[237]
b [257]

:[238]
push.v self.walkbuffer
pushi.e 0
cmp.i.v LTE
bf [240]

:[239]
push.v self.fun
pushi.e 0
cmp.i.v EQ
b [241]

:[240]
push.e 0

:[241]
bf [257]

:[242]
push.v self.walktimer
pushi.e 10
cmp.i.v LT
bf [244]

:[243]
push.d 9.5
pop.v.d self.walktimer

:[244]
push.v self.walktimer
pushi.e 10
cmp.i.v GTE
bf [246]

:[245]
push.v self.walktimer
pushi.e 20
cmp.i.v LT
b [247]

:[246]
push.e 0

:[247]
bf [249]

:[248]
push.d 19.5
pop.v.d self.walktimer

:[249]
push.v self.walktimer
pushi.e 20
cmp.i.v GTE
bf [251]

:[250]
push.v self.walktimer
pushi.e 30
cmp.i.v LT
b [252]

:[251]
push.e 0

:[252]
bf [254]

:[253]
push.d 29.5
pop.v.d self.walktimer

:[254]
push.v self.walktimer
pushi.e 30
cmp.i.v GTE
bf [256]

:[255]
push.d 39.5
pop.v.d self.walktimer

:[256]
pushi.e 0
pop.v.i self.image_index

:[257]
push.v self.walkbuffer
push.d 0.75
sub.d.v
pop.v.v self.walkbuffer
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [266]

:[258]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [260]

:[259]
push.v self.dsprite
pop.v.v self.sprite_index

:[260]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [262]

:[261]
push.v self.rsprite
pop.v.v self.sprite_index

:[262]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [264]

:[263]
push.v self.usprite
pop.v.v self.sprite_index

:[264]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [266]

:[265]
push.v self.lsprite
pop.v.v self.sprite_index

:[266]
push.v self.stepping
pushi.e 1
cmp.i.v EQ
bf [285]

:[267]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bf [269]

:[268]
push.v self.stepped
pushi.e 0
cmp.i.v EQ
b [270]

:[269]
push.e 0

:[270]
bf [274]

:[271]
pushi.e -5
pushi.e 31
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [273]

:[272]
pushi.e 458
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i self.stepped

:[273]
b [285]

:[274]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bt [276]

:[275]
push.v self.image_index
pushi.e 2
cmp.i.v EQ
b [277]

:[276]
push.e 1

:[277]
bf [279]

:[278]
pushi.e 0
pop.v.i self.stepped
b [285]

:[279]
push.v self.image_index
pushi.e 3
cmp.i.v EQ
bf [281]

:[280]
push.v self.stepped
pushi.e 0
cmp.i.v EQ
b [282]

:[281]
push.e 0

:[282]
bf [285]

:[283]
pushi.e 1
pop.v.i self.stepped
pushi.e -5
pushi.e 31
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [285]

:[284]
pushi.e 459
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[285]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [352]

:[286]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [352]

:[287]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [352]

:[288]
pushi.e 0
pop.v.i self.thisinteract
pushglb.v global.darkzone
pushi.e 1
add.i.v
pop.v.v self.d
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [293]

:[289]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1384
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 13
push.v self.d
mul.v.i
add.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [291]

:[290]
pushi.e 1
pop.v.i self.thisinteract

:[291]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1339
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 13
push.v self.d
mul.v.i
add.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [293]

:[292]
pushi.e 2
pop.v.i self.thisinteract

:[293]
push.v self.thisinteract
pushi.e 0
cmp.i.v GT
bf [304]

:[294]
push.v self.thisinteract
pushi.e 1
cmp.i.v EQ
bf [296]

:[295]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1384
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 13
push.v self.d
mul.v.i
add.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[296]
push.v self.thisinteract
pushi.e 2
cmp.i.v EQ
bf [298]

:[297]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1339
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 13
push.v self.d
mul.v.i
add.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[298]
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [304]

:[299]
push.v self.interactedobject
pushi.e -9
pushenv [301]

:[300]
pushi.e 3
pop.v.i self.facing

:[301]
popenv [300]
push.v self.interactedobject
pushi.e -9
pushenv [303]

:[302]
call.i gml_Script_scr_interact_ch1(argc=0)
popz.v

:[303]
popenv [302]

:[304]
pushi.e 0
pop.v.i self.thisinteract
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [309]

:[305]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1384
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 13
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [307]

:[306]
pushi.e 1
pop.v.i self.thisinteract

:[307]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1339
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 13
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [309]

:[308]
pushi.e 2
pop.v.i self.thisinteract

:[309]
push.v self.thisinteract
pushi.e 0
cmp.i.v GT
bf [320]

:[310]
push.v self.thisinteract
pushi.e 1
cmp.i.v EQ
bf [312]

:[311]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1384
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 13
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[312]
push.v self.thisinteract
pushi.e 2
cmp.i.v EQ
bf [314]

:[313]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1339
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 13
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[314]
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [320]

:[315]
push.v self.interactedobject
pushi.e -9
pushenv [317]

:[316]
pushi.e 1
pop.v.i self.facing

:[317]
popenv [316]
push.v self.interactedobject
pushi.e -9
pushenv [319]

:[318]
call.i gml_Script_scr_interact_ch1(argc=0)
popz.v

:[319]
popenv [318]

:[320]
pushi.e 0
pop.v.i self.thisinteract
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [325]

:[321]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1384
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 28
push.v self.d
mul.v.i
add.v.v
push.v self.x
pushi.e 4
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [323]

:[322]
pushi.e 1
pop.v.i self.thisinteract

:[323]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1339
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 28
push.v self.d
mul.v.i
add.v.v
push.v self.x
pushi.e 4
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [325]

:[324]
pushi.e 2
pop.v.i self.thisinteract

:[325]
push.v self.thisinteract
pushi.e 0
cmp.i.v GT
bf [336]

:[326]
push.v self.thisinteract
pushi.e 1
cmp.i.v EQ
bf [328]

:[327]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1384
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 28
push.v self.d
mul.v.i
add.v.v
push.v self.x
pushi.e 4
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[328]
push.v self.thisinteract
pushi.e 2
cmp.i.v EQ
bf [330]

:[329]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1339
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 28
push.v self.d
mul.v.i
add.v.v
push.v self.x
pushi.e 4
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[330]
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [336]

:[331]
push.v self.interactedobject
pushi.e -9
pushenv [333]

:[332]
pushi.e 2
pop.v.i self.facing

:[333]
popenv [332]
push.v self.interactedobject
pushi.e -9
pushenv [335]

:[334]
call.i gml_Script_scr_interact_ch1(argc=0)
popz.v

:[335]
popenv [334]

:[336]
pushi.e 0
pop.v.i self.thisinteract
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [341]

:[337]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1384
conv.i.v
push.v self.y
pushi.e 5
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.x
pushi.e 3
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [339]

:[338]
pushi.e 1
pop.v.i self.thisinteract

:[339]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1339
conv.i.v
push.v self.y
pushi.e 5
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.x
pushi.e 3
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [341]

:[340]
pushi.e 2
pop.v.i self.thisinteract

:[341]
push.v self.thisinteract
pushi.e 0
cmp.i.v GT
bf [352]

:[342]
push.v self.thisinteract
pushi.e 1
cmp.i.v EQ
bf [344]

:[343]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1384
conv.i.v
push.v self.y
pushi.e 5
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.x
pushi.e 3
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[344]
push.v self.thisinteract
pushi.e 2
cmp.i.v EQ
bf [346]

:[345]
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushi.e 1339
conv.i.v
push.v self.y
pushi.e 5
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.x
pushi.e 3
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[346]
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [352]

:[347]
push.v self.interactedobject
pushi.e -9
pushenv [349]

:[348]
pushi.e 0
pop.v.i self.facing

:[349]
popenv [348]
push.v self.interactedobject
pushi.e -9
pushenv [351]

:[350]
call.i gml_Script_scr_interact_ch1(argc=0)
popz.v

:[351]
popenv [350]

:[352]
push.v self.onebuffer
pushi.e 1
sub.i.v
pop.v.v self.onebuffer
push.v self.twobuffer
pushi.e 1
sub.i.v
pop.v.v self.twobuffer
push.v self.threebuffer
pushi.e 1
sub.i.v
pop.v.v self.threebuffer
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1417
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
pushi.e -9
pushenv [354]

:[353]
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v

:[354]
popenv [353]
push.v self.battlemode
pushi.e 1
cmp.i.v EQ
bf [end]

:[355]
push.v global.inv
pushi.e 1
sub.i.v
pop.v.v global.inv
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [357]

:[356]
pushglb.v global.interact
pushi.e 3
cmp.i.v NEQ
b [358]

:[357]
push.e 0

:[358]
bf [end]

:[359]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1508
conv.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 27
add.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i collision_rectangle(argc=7)
pushi.e -9
pushenv [361]

:[360]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[361]
popenv [360]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1508
conv.i.v
push.v self.y
pushi.e 57
add.i.v
push.v self.x
pushi.e 19
add.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i collision_line(argc=7)
pushi.e -9
pushenv [363]

:[362]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[363]
popenv [362]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1508
conv.i.v
push.v self.y
pushi.e 57
add.i.v
push.v self.x
pushi.e 19
add.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 26
add.i.v
call.i collision_line(argc=7)
pushi.e -9
pushenv [365]

:[364]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[365]
popenv [364]

:[end]