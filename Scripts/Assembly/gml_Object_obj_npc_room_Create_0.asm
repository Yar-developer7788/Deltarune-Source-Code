.localvar 2 arguments
.localvar 15785 swatchling_sweep 7275
.localvar 15787 viro_exists 7277
.localvar 15789 viro_npc 7279

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.tempvar
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.depthcancel
pushi.e 1
pop.v.i self.normalanim
pushi.e 0
pop.v.i self.remanimspeed
pushi.e 0
pop.v.i self.flag
pushi.e 0
pop.v.i self.extflag
pushi.e 0
pop.v.b self.alwaysanimate
pushi.e 0
pop.v.i self.jpspecial
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [142]

:[1]
pushbltn.v builtin.room
pushi.e 28
cmp.i.v EQ
bf [3]

:[2]
pushi.e 882
pop.v.i self.sprite_index

:[3]
pushbltn.v builtin.room
pushi.e 31
cmp.i.v EQ
bf [7]

:[4]
pushi.e 880
pop.v.i self.sprite_index
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [7]

:[5]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 879
pop.v.i self.sprite_index

:[7]
pushbltn.v builtin.room
pushi.e 42
cmp.i.v EQ
bf [12]

:[8]
pushi.e 1092
conv.i.v
pushi.e 122
conv.i.v
pushi.e 81
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.fence
push.v self.fence
pushi.e -9
pushenv [10]

:[9]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[10]
popenv [9]
push.v self.x
pushi.e 30
cmp.i.v LT
bf [12]

:[11]
pushi.e 1094
pop.v.i self.sprite_index

:[12]
pushbltn.v builtin.room
pushi.e 44
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1106
pop.v.i self.sprite_index

:[14]
pushbltn.v builtin.room
pushi.e 46
cmp.i.v EQ
bf [19]

:[15]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1036
pop.v.i self.sprite_index

:[17]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1039
pop.v.i self.sprite_index

:[19]
pushbltn.v builtin.room
pushi.e 52
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1107
pop.v.i self.sprite_index

:[21]
pushbltn.v builtin.room
pushi.e 49
cmp.i.v EQ
bf [32]

:[22]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [27]

:[23]
pushi.e 1103
pop.v.i self.sprite_index
push.v self.x
pushi.e 100
cmp.i.v GT
bf [25]

:[24]
pushi.e 1104
pop.v.i self.sprite_index

:[25]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [27]

:[26]
pushi.e 1105
pop.v.i self.sprite_index

:[27]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [32]

:[28]
pushi.e 1103
pop.v.i self.sprite_index
push.v self.x
pushi.e 100
cmp.i.v GT
bf [30]

:[29]
pushi.e 1104
pop.v.i self.sprite_index

:[30]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [32]

:[31]
pushi.e 1105
pop.v.i self.sprite_index

:[32]
pushbltn.v builtin.room
pushi.e 48
cmp.i.v EQ
bf [69]

:[33]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [55]

:[34]
push.v self.x
pushi.e 120
cmp.i.v LT
bf [36]

:[35]
pushi.e 1054
pop.v.i self.sprite_index

:[36]
push.v self.x
pushi.e 60
cmp.i.v LT
bf [38]

:[37]
pushi.e 1052
pop.v.i self.sprite_index

:[38]
push.v self.x
pushi.e 120
cmp.i.v GTE
bf [40]

:[39]
push.v self.x
pushi.e 140
cmp.i.v LTE
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 1048
pop.v.i self.sprite_index

:[43]
push.v self.y
pushi.e 130
cmp.i.v GT
bf [50]

:[44]
push.v self.x
pushi.e 180
cmp.i.v GT
bf [46]

:[45]
pushi.e 1053
pop.v.i self.sprite_index

:[46]
push.v self.x
pushi.e 240
cmp.i.v GT
bf [48]

:[47]
pushi.e 1050
pop.v.i self.sprite_index
pushi.e 4000
pop.v.i self.depth
pushi.e 1
pop.v.i self.depthcancel

:[48]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [50]

:[49]
pushi.e 1051
pop.v.i self.sprite_index
pushi.e 4000
pop.v.i self.depth
pushi.e 1
pop.v.i self.depthcancel

:[50]
push.v self.y
pushi.e 120
cmp.i.v LT
bf [55]

:[51]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [53]

:[52]
pushi.e 1049
pop.v.i self.sprite_index

:[53]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [55]

:[54]
pushi.e 1047
pop.v.i self.sprite_index

:[55]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [69]

:[56]
push.v self.y
pushi.e 85
cmp.i.v LT
bf [58]

:[57]
pushi.e 1048
pop.v.i self.sprite_index

:[58]
push.v self.x
pushi.e 150
cmp.i.v GT
bf [61]

:[59]
push.v self.x
pushi.e 180
cmp.i.v LT
bf [61]

:[60]
push.v self.y
pushi.e 115
cmp.i.v LT
b [62]

:[61]
push.e 0

:[62]
bf [64]

:[63]
pushi.e 945
pop.v.i self.sprite_index

:[64]
push.v self.x
pushi.e 80
cmp.i.v GT
bf [66]

:[65]
push.v self.x
pushi.e 120
cmp.i.v LT
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 1054
pop.v.i self.sprite_index

:[69]
pushbltn.v builtin.room
pushi.e 39
cmp.i.v EQ
bf [75]

:[70]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [75]

:[71]
push.v self.x
pushi.e 560
cmp.i.v GT
bf [73]

:[72]
pushi.e 1098
pop.v.i self.sprite_index

:[73]
push.v self.x
pushi.e 720
cmp.i.v GT
bf [75]

:[74]
pushi.e 1099
pop.v.i self.sprite_index

:[75]
pushbltn.v builtin.room
pushi.e 41
cmp.i.v EQ
bf [108]

:[76]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
pushi.e 1100
pop.v.i self.sprite_index

:[78]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [108]

:[79]
push.v self.x
pushi.e 270
cmp.i.v GT
bf [81]

:[80]
push.v self.y
pushi.e 320
cmp.i.v LT
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
pushi.e 1139
pop.v.i self.sprite_index

:[84]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [87]

:[85]
push.v self.x
pushi.e 260
cmp.i.v LT
bf [87]

:[86]
push.v self.y
pushi.e 310
cmp.i.v GT
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
pushi.e 1232
pop.v.i self.sprite_index

:[90]
push.v self.x
pushi.e 230
cmp.i.v GT
bf [93]

:[91]
push.v self.x
pushi.e 245
cmp.i.v LT
bf [93]

:[92]
push.v self.y
pushi.e 300
cmp.i.v GT
b [94]

:[93]
push.e 0

:[94]
bf [96]

:[95]
pushi.e 1233
pop.v.i self.sprite_index

:[96]
push.v self.x
pushi.e 250
cmp.i.v GT
bf [99]

:[97]
push.v self.x
pushi.e 260
cmp.i.v LT
bf [99]

:[98]
push.v self.y
pushi.e 300
cmp.i.v GT
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
pushi.e 1234
pop.v.i self.sprite_index

:[102]
push.v self.x
pushi.e 380
cmp.i.v GT
bf [104]

:[103]
pushi.e 1101
pop.v.i self.sprite_index

:[104]
push.v self.x
pushi.e 400
cmp.i.v GT
bf [106]

:[105]
pushi.e 1102
pop.v.i self.sprite_index

:[106]
push.v self.x
pushi.e 590
cmp.i.v GT
bf [108]

:[107]
pushi.e 1153
pop.v.i self.sprite_index

:[108]
pushbltn.v builtin.room
pushi.e 37
cmp.i.v EQ
bf [123]

:[109]
push.v self.x
pushi.e 1800
cmp.i.v GTE
bf [111]

:[110]
push.v self.x
pushi.e 1840
cmp.i.v LT
b [112]

:[111]
push.e 0

:[112]
bf [116]

:[113]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [115]

:[114]
pushi.e 958
pop.v.i self.sprite_index
b [116]

:[115]
call.i instance_destroy(argc=0)
popz.v

:[116]
push.v self.x
pushi.e 1900
cmp.i.v GTE
bf [118]

:[117]
push.v self.x
pushi.e 1920
cmp.i.v LT
b [119]

:[118]
push.e 0

:[119]
bf [123]

:[120]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
pushi.e 953
pop.v.i self.sprite_index
b [123]

:[122]
call.i instance_destroy(argc=0)
popz.v

:[123]
pushbltn.v builtin.room
pushi.e 35
cmp.i.v EQ
bf [134]

:[124]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [131]

:[125]
push.v self.x
pushi.e 480
cmp.i.v GTE
bf [127]

:[126]
pushi.e 1078
pop.v.i self.sprite_index

:[127]
push.v self.x
pushi.e 640
cmp.i.v GTE
bf [129]

:[128]
pushi.e 1075
pop.v.i self.sprite_index

:[129]
push.v self.x
pushi.e 880
cmp.i.v GTE
bf [131]

:[130]
pushi.e 1077
pop.v.i self.sprite_index

:[131]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [134]

:[132]
push.v self.x
pushi.e 1000
cmp.i.v LT
bf [134]

:[133]
call.i instance_destroy(argc=0)
popz.v

:[134]
pushbltn.v builtin.room
pushi.e 36
cmp.i.v EQ
bf [142]

:[135]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [140]

:[136]
push.v self.x
pushi.e 60
cmp.i.v GTE
bf [138]

:[137]
pushi.e 1101
pop.v.i self.sprite_index

:[138]
push.v self.x
pushi.e 100
cmp.i.v GTE
bf [140]

:[139]
pushi.e 1102
pop.v.i self.sprite_index

:[140]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [142]

:[141]
call.i instance_destroy(argc=0)
popz.v

:[142]
pushbltn.v builtin.room
pushi.e 50
cmp.i.v EQ
bf [146]

:[143]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [145]

:[144]
pushi.e 1059
pop.v.i self.sprite_index
b [146]

:[145]
call.i instance_destroy(argc=0)
popz.v

:[146]
pushbltn.v builtin.room
pushi.e 56
cmp.i.v EQ
bf [155]

:[147]
push.v self.x
pushi.e 80
cmp.i.v GT
bf [149]

:[148]
pushi.e 1124
pop.v.i self.sprite_index

:[149]
push.v self.x
pushi.e 140
cmp.i.v GT
bf [151]

:[150]
pushi.e 1070
pop.v.i self.sprite_index

:[151]
push.v self.x
pushi.e 170
cmp.i.v GT
bf [153]

:[152]
pushi.e 1129
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.depthcancel

:[153]
push.v self.x
pushi.e 190
cmp.i.v GT
bf [155]

:[154]
pushi.e 1132
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.depthcancel

:[155]
pushbltn.v builtin.room
pushi.e 53
cmp.i.v EQ
bf [157]

:[156]
pushi.e 1077
pop.v.i self.sprite_index

:[157]
pushbltn.v builtin.room
pushi.e 57
cmp.i.v EQ
bf [161]

:[158]
push.v self.x
pushi.e 280
cmp.i.v GT
bf [160]

:[159]
pushi.e 1151
pop.v.i self.sprite_index
b [161]

:[160]
pushi.e 1158
pop.v.i self.sprite_index

:[161]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [357]

:[162]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushbltn.v builtin.room
pushi.e 66
cmp.i.v EQ
bf [176]

:[163]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [165]

:[164]
pushi.e 1551
pop.v.i self.sprite_index

:[165]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [176]

:[166]
push.v self.x
pushi.e 760
cmp.i.v GT
bf [168]

:[167]
push.v self.x
pushi.e 780
cmp.i.v LT
b [169]

:[168]
push.e 0

:[169]
bf [176]

:[170]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bt [172]

:[171]
pushglb.v global.plot
pushi.e 9
cmp.i.v LT
b [173]

:[172]
push.e 1

:[173]
bf [175]

:[174]
pushi.e 1551
pop.v.i self.sprite_index
b [176]

:[175]
pushi.e 1270
pop.v.i self.sprite_index

:[176]
pushbltn.v builtin.room
pushi.e 73
cmp.i.v EQ
bf [199]

:[177]
push.v self.x
pushi.e 250
cmp.i.v GTE
bf [179]

:[178]
push.v self.y
pushi.e 430
cmp.i.v GTE
b [180]

:[179]
push.e 0

:[180]
bf [187]

:[181]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [183]

:[182]
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 9
cmp.i.v GTE
b [184]

:[183]
push.e 0

:[184]
bf [186]

:[185]
pushi.e 1266
pop.v.i self.sprite_index
b [187]

:[186]
pushi.e 1192
pop.v.i self.sprite_index

:[187]
push.v self.x
pushi.e 650
cmp.i.v GTE
bf [189]

:[188]
pushi.e 1268
pop.v.i self.sprite_index
pushi.e 740
pop.v.i self.x
pushi.e 225
pop.v.i self.y

:[189]
push.v self.x
pushi.e 350
cmp.i.v GTE
bf [191]

:[190]
push.v self.y
pushi.e 430
cmp.i.v GTE
b [192]

:[191]
push.e 0

:[192]
bf [199]

:[193]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [195]

:[194]
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 9
cmp.i.v GTE
b [196]

:[195]
push.e 0

:[196]
bf [198]

:[197]
pushi.e 1255
pop.v.i self.sprite_index
pushi.e -2
pop.v.i self.image_xscale
pushi.e 410
pop.v.i self.x
b [199]

:[198]
call.i instance_destroy(argc=0)
popz.v

:[199]
pushbltn.v builtin.room
pushi.e 71
cmp.i.v EQ
bf [201]

:[200]
pushi.e 1000
pop.v.i self.sprite_index

:[201]
pushbltn.v builtin.room
pushi.e 72
cmp.i.v EQ
bf [282]

:[202]
push.v self.x
pushi.e 600
cmp.i.v GT
bf [206]

:[203]
push.v self.x
pushi.e 640
cmp.i.v LT
bf [206]

:[204]
push.v self.y
pushi.e 750
cmp.i.v GT
bf [206]

:[205]
push.v self.y
pushi.e 780
cmp.i.v LT
b [207]

:[206]
push.e 0

:[207]
bf [209]

:[208]
pushi.e 1557
pop.v.i self.sprite_index
pushi.e -2
pop.v.i self.image_xscale

:[209]
push.v self.x
pushi.e 1100
cmp.i.v GT
bf [213]

:[210]
push.v self.x
pushi.e 1300
cmp.i.v LT
bf [213]

:[211]
push.v self.y
pushi.e 870
cmp.i.v GT
bf [213]

:[212]
push.v self.y
pushi.e 890
cmp.i.v LT
b [214]

:[213]
push.e 0

:[214]
bf [216]

:[215]
pushi.e 1576
pop.v.i self.sprite_index

:[216]
push.v self.x
pushi.e 1150
cmp.i.v GT
bf [220]

:[217]
push.v self.x
pushi.e 1170
cmp.i.v LT
bf [220]

:[218]
push.v self.y
pushi.e 590
cmp.i.v GT
bf [220]

:[219]
push.v self.y
pushi.e 610
cmp.i.v LT
b [221]

:[220]
push.e 0

:[221]
bf [227]

:[222]
pushi.e -5
pushi.e 636
push.v [array]self.flag
pushi.e 1
cmp.i.v NEQ
bf [224]

:[223]
pushi.e 1264
pop.v.i self.sprite_index
b [227]

:[224]
pushi.e 110
conv.i.v
pushi.e 562
conv.i.v
pushi.e 1222
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rabbicksweep
pushi.e 1265
push.v self.rabbicksweep
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.1
push.v self.rabbicksweep
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.rabbicksweep
pushi.e -9
pushenv [226]

:[225]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[226]
popenv [225]
call.i instance_destroy(argc=0)
popz.v

:[227]
pushi.e -5
pushi.e 636
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [237]

:[228]
pushi.e 0
pop.v.b local.swatchling_sweep
pushi.e 110
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [233]

:[229]
pushi.e 110
pushenv [232]

:[230]
push.v self.sprite_index
pushi.e 1253
cmp.i.v EQ
bf [232]

:[231]
pushi.e 1
pop.v.b local.swatchling_sweep

:[232]
popenv [230]

:[233]
pushloc.v local.swatchling_sweep
conv.v.b
not.b
bf [237]

:[234]
pushi.e 110
conv.i.v
pushi.e 522
conv.i.v
pushi.e 1085
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.swatchsweep
pushi.e 1253
push.v self.swatchsweep
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.1
push.v self.swatchsweep
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.swatchsweep
pushi.e -9
pushenv [236]

:[235]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[236]
popenv [235]

:[237]
push.v self.x
pushi.e 250
cmp.i.v GT
bf [241]

:[238]
push.v self.x
pushi.e 280
cmp.i.v LT
bf [241]

:[239]
push.v self.y
pushi.e 550
cmp.i.v GT
bf [241]

:[240]
push.v self.y
pushi.e 650
cmp.i.v LT
b [242]

:[241]
push.e 0

:[242]
bf [246]

:[243]
pushi.e -5
pushi.e 633
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [245]

:[244]
pushi.e 1252
pop.v.i self.sprite_index
pushi.e -2
pop.v.i self.image_xscale
pushi.e 353
pop.v.i self.x
pushi.e 612
pop.v.i self.y
push.i 93000
pop.v.i self.depth
pushi.e 1
pop.v.i self.depthcancel
b [246]

:[245]
pushi.e 1194
pop.v.i self.sprite_index

:[246]
push.v self.x
pushi.e 230
cmp.i.v GT
bf [250]

:[247]
push.v self.x
pushi.e 250
cmp.i.v LT
bf [250]

:[248]
push.v self.y
pushi.e 910
cmp.i.v GT
bf [250]

:[249]
push.v self.y
pushi.e 930
cmp.i.v LT
b [251]

:[250]
push.e 0

:[251]
bf [253]

:[252]
pushi.e 1557
pop.v.i self.sprite_index
pushi.e -2
pop.v.i self.image_xscale
pushi.e 320
pop.v.i self.x

:[253]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [257]

:[254]
push.v self.x
pushi.e 350
cmp.i.v LT
bf [257]

:[255]
push.v self.y
pushi.e 910
cmp.i.v GT
bf [257]

:[256]
push.v self.y
pushi.e 930
cmp.i.v LT
b [258]

:[257]
push.e 0

:[258]
bf [271]

:[259]
pushi.e -5
pushi.e 635
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [270]

:[260]
pushi.e 0
pop.v.b local.viro_exists
pushi.e 110
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [265]

:[261]
pushi.e 110
pushenv [264]

:[262]
push.v self.sprite_index
pushi.e 1797
cmp.i.v EQ
bf [264]

:[263]
pushi.e 1
pop.v.b local.viro_exists

:[264]
popenv [262]

:[265]
pushloc.v local.viro_exists
conv.v.b
not.b
bf [269]

:[266]
pushi.e 110
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.viro
pushi.e 1797
push.v self.viro
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.viro
pushi.e -9
pushenv [268]

:[267]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[268]
popenv [267]

:[269]
call.i instance_destroy(argc=0)
popz.v
b [271]

:[270]
pushi.e 1610
pop.v.i self.sprite_index

:[271]
push.v self.x
pushi.e 820
cmp.i.v GT
bf [275]

:[272]
push.v self.x
pushi.e 840
cmp.i.v LT
bf [275]

:[273]
push.v self.y
pushi.e 670
cmp.i.v GT
bf [275]

:[274]
push.v self.y
pushi.e 690
cmp.i.v LT
b [276]

:[275]
push.e 0

:[276]
bf [282]

:[277]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [279]

:[278]
pushi.e 859
pop.v.i self.x
pushi.e 796
pop.v.i self.y
pushi.e 1161
pop.v.i self.sprite_index
b [282]

:[279]
pushi.e -5
pushi.e 633
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [281]

:[280]
pushi.e 1245
pop.v.i self.sprite_index
b [282]

:[281]
call.i instance_destroy(argc=0)
popz.v

:[282]
pushbltn.v builtin.room
pushi.e 269
cmp.i.v EQ
bf [289]

:[283]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [285]

:[284]
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 9
cmp.i.v GTE
b [286]

:[285]
push.e 0

:[286]
bf [288]

:[287]
call.i instance_destroy(argc=0)
popz.v
b [289]

:[288]
pushi.e 1286
pop.v.i self.sprite_index

:[289]
pushbltn.v builtin.room
pushi.e 79
cmp.i.v EQ
bf [291]

:[290]
pushi.e 1215
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.depthcancel

:[291]
pushbltn.v builtin.room
pushi.e 86
cmp.i.v EQ
bf [295]

:[292]
pushglb.v global.plot
pushi.e 51
cmp.i.v LT
bf [294]

:[293]
pushi.e 1723
pop.v.i self.sprite_index
b [295]

:[294]
call.i instance_destroy(argc=0)
popz.v

:[295]
pushbltn.v builtin.room
pushi.e 127
cmp.i.v EQ
bf [304]

:[296]
push.v self.y
pushi.e 270
cmp.i.v LT
bf [301]

:[297]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v EQ
bf [299]

:[298]
call.i instance_destroy(argc=0)
popz.v
b [300]

:[299]
pushi.e 1237
pop.v.i self.sprite_index

:[300]
b [304]

:[301]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v EQ
bf [303]

:[302]
pushi.e 1245
pop.v.i self.sprite_index
pushi.e 500
pop.v.i self.x
pushi.e 384
pop.v.i self.y
b [304]

:[303]
pushi.e 1239
pop.v.i self.sprite_index

:[304]
pushbltn.v builtin.room
pushi.e 128
cmp.i.v EQ
bf [306]

:[305]
pushi.e 1244
pop.v.i self.sprite_index

:[306]
pushbltn.v builtin.room
pushi.e 129
cmp.i.v EQ
bf [309]

:[307]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v EQ
bf [309]

:[308]
call.i instance_destroy(argc=0)
popz.v

:[309]
pushbltn.v builtin.room
pushi.e 132
cmp.i.v EQ
bf [318]

:[310]
push.v self.x
pushi.e 600
cmp.i.v LT
bf [314]

:[311]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v EQ
bf [313]

:[312]
call.i instance_destroy(argc=0)
popz.v
b [314]

:[313]
pushi.e 1237
pop.v.i self.sprite_index

:[314]
push.v self.x
pushi.e 1000
cmp.i.v GT
bf [318]

:[315]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v EQ
bf [317]

:[316]
pushi.e 110
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.viro_npc
pushi.e 1797
pushloc.v local.viro_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
call.i instance_destroy(argc=0)
popz.v
b [318]

:[317]
pushi.e 1239
pop.v.i self.sprite_index

:[318]
pushbltn.v builtin.room
pushi.e 69
cmp.i.v EQ
bf [336]

:[319]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [321]

:[320]
pushi.e -5
pushi.e 302
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
b [322]

:[321]
push.e 0

:[322]
bf [335]

:[323]
push.v self.x
pushi.e 210
cmp.i.v LT
bf [331]

:[324]
pushi.e -5
pushi.e 314
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [326]

:[325]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
b [327]

:[326]
push.e 0

:[327]
bf [329]

:[328]
pushi.e 1212
pop.v.i self.sprite_index
b [330]

:[329]
call.i instance_destroy(argc=0)
popz.v

:[330]
b [334]

:[331]
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [333]

:[332]
pushi.e 1230
pop.v.i self.sprite_index
b [334]

:[333]
call.i instance_destroy(argc=0)
popz.v

:[334]
b [336]

:[335]
call.i instance_destroy(argc=0)
popz.v

:[336]
pushbltn.v builtin.room
pushi.e 92
cmp.i.v EQ
bf [339]

:[337]
pushi.e 1255
pop.v.i self.sprite_index
pushi.e -2
pop.v.i self.image_xscale
pushglb.v global.plot
pushi.e 70
cmp.i.v GTE
bf [339]

:[338]
call.i instance_destroy(argc=0)
popz.v

:[339]
pushbltn.v builtin.room
pushi.e 213
cmp.i.v EQ
bf [341]

:[340]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 1225
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 1280
pop.v.i self.x
pushi.e 140
pop.v.i self.y

:[341]
pushbltn.v builtin.room
pushi.e 148
cmp.i.v EQ
bf [343]

:[342]
pushi.e 1159
pop.v.i self.sprite_index

:[343]
pushbltn.v builtin.room
pushi.e 199
cmp.i.v EQ
bf [345]

:[344]
pushi.e 2897
pop.v.i self.sprite_index

:[345]
pushbltn.v builtin.room
pushi.e 90
cmp.i.v EQ
bf [347]

:[346]
pushi.e 1723
pop.v.i self.sprite_index

:[347]
pushbltn.v builtin.room
pushi.e 91
cmp.i.v EQ
bf [351]

:[348]
push.v self.x
pushi.e 300
cmp.i.v LT
bf [350]

:[349]
pushi.e 1249
pop.v.i self.sprite_index
b [351]

:[350]
pushi.e 1248
pop.v.i self.sprite_index

:[351]
pushbltn.v builtin.room
pushi.e 104
cmp.i.v EQ
bf [353]

:[352]
pushi.e 1249
pop.v.i self.sprite_index

:[353]
pushbltn.v builtin.room
pushi.e 97
cmp.i.v EQ
bf [355]

:[354]
pushi.e 3
pop.v.i self.normalanim
push.d 0.25
pop.v.d self.remanimspeed

:[355]
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [357]

:[356]
pushi.e 724
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.normalanim

:[357]
push.v self.depthcancel
pushi.e 0
cmp.i.v EQ
bf [end]

:[358]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]