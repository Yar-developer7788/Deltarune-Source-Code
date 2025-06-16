.localvar 2 arguments
.localvar 7017 a 13645

:[0]
push.v 872.x
pushi.e 75
conv.i.v
pushi.e -75
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.xx
push.v 872.y
pushi.e 75
conv.i.v
pushi.e -75
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.yy
push.v 710.solotimer
pop.v.v local.a
push.v 710.solotimer
push.v self.solotimerprevious
sub.v.v
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.v 710.solotimer
pushi.e 1
sub.i.v
pop.v.v local.a

:[2]
push.v 710.solotimer
pop.v.v self.solotimerprevious
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bt [10]

:[3]
pushloc.v local.a
pushi.e 8
cmp.i.v EQ
bt [10]

:[4]
pushloc.v local.a
pushi.e 15
cmp.i.v EQ
bt [10]

:[5]
pushloc.v local.a
pushi.e 22
cmp.i.v EQ
bt [10]

:[6]
pushloc.v local.a
pushi.e 30
cmp.i.v EQ
bt [10]

:[7]
pushloc.v local.a
pushi.e 36
cmp.i.v EQ
bt [10]

:[8]
pushloc.v local.a
pushi.e 42
cmp.i.v EQ
bt [10]

:[9]
pushloc.v local.a
pushi.e 51
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[13]
pushloc.v local.a
pushi.e 64
cmp.i.v EQ
bt [20]

:[14]
pushloc.v local.a
pushi.e 72
cmp.i.v EQ
bt [20]

:[15]
pushloc.v local.a
pushi.e 78
cmp.i.v EQ
bt [20]

:[16]
pushloc.v local.a
pushi.e 84
cmp.i.v EQ
bt [20]

:[17]
pushloc.v local.a
pushi.e 96
cmp.i.v EQ
bt [20]

:[18]
pushloc.v local.a
pushi.e 102
cmp.i.v EQ
bt [20]

:[19]
pushloc.v local.a
pushi.e 108
cmp.i.v EQ
b [21]

:[20]
push.e 1

:[21]
bf [23]

:[22]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[23]
pushloc.v local.a
pushi.e 114
cmp.i.v EQ
bt [31]

:[24]
pushloc.v local.a
pushi.e 122
cmp.i.v EQ
bt [31]

:[25]
pushloc.v local.a
pushi.e 129
cmp.i.v EQ
bt [31]

:[26]
pushloc.v local.a
pushi.e 138
cmp.i.v EQ
bt [31]

:[27]
pushloc.v local.a
pushi.e 142
cmp.i.v EQ
bt [31]

:[28]
pushloc.v local.a
pushi.e 150
cmp.i.v EQ
bt [31]

:[29]
pushloc.v local.a
pushi.e 158
cmp.i.v EQ
bt [31]

:[30]
pushloc.v local.a
pushi.e 166
cmp.i.v EQ
b [32]

:[31]
push.e 1

:[32]
bf [34]

:[33]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[34]
pushloc.v local.a
pushi.e 180
cmp.i.v EQ
bt [41]

:[35]
pushloc.v local.a
pushi.e 186
cmp.i.v EQ
bt [41]

:[36]
pushloc.v local.a
pushi.e 193
cmp.i.v EQ
bt [41]

:[37]
pushloc.v local.a
pushi.e 201
cmp.i.v EQ
bt [41]

:[38]
pushloc.v local.a
pushi.e 216
cmp.i.v EQ
bt [41]

:[39]
pushloc.v local.a
pushi.e 222
cmp.i.v EQ
bt [41]

:[40]
pushloc.v local.a
pushi.e 227
cmp.i.v EQ
b [42]

:[41]
push.e 1

:[42]
bf [46]

:[43]
pushi.e 722
pushenv [45]

:[44]
pushi.e 1
pop.v.i self.singlenote

:[45]
popenv [44]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[46]
pushloc.v local.a
pushi.e 231
cmp.i.v EQ
bt [67]

:[47]
pushloc.v local.a
pushi.e 236
cmp.i.v EQ
bt [67]

:[48]
pushloc.v local.a
pushi.e 246
cmp.i.v EQ
bt [67]

:[49]
pushloc.v local.a
pushi.e 252
cmp.i.v EQ
bt [67]

:[50]
pushloc.v local.a
pushi.e 258
cmp.i.v EQ
bt [67]

:[51]
pushloc.v local.a
pushi.e 264
cmp.i.v EQ
bt [67]

:[52]
pushloc.v local.a
pushi.e 270
cmp.i.v EQ
bt [67]

:[53]
pushloc.v local.a
pushi.e 276
cmp.i.v EQ
bt [67]

:[54]
pushloc.v local.a
pushi.e 282
cmp.i.v EQ
bt [67]

:[55]
pushloc.v local.a
pushi.e 294
cmp.i.v EQ
bt [67]

:[56]
pushloc.v local.a
pushi.e 294
cmp.i.v EQ
bt [67]

:[57]
pushloc.v local.a
pushi.e 303
cmp.i.v EQ
bt [67]

:[58]
pushloc.v local.a
pushi.e 311
cmp.i.v EQ
bt [67]

:[59]
pushloc.v local.a
pushi.e 319
cmp.i.v EQ
bt [67]

:[60]
pushloc.v local.a
pushi.e 326
cmp.i.v EQ
bt [67]

:[61]
pushloc.v local.a
pushi.e 332
cmp.i.v EQ
bt [67]

:[62]
pushloc.v local.a
pushi.e 339
cmp.i.v EQ
bt [67]

:[63]
pushloc.v local.a
pushi.e 345
cmp.i.v EQ
bt [67]

:[64]
pushloc.v local.a
pushi.e 353
cmp.i.v EQ
bt [67]

:[65]
pushloc.v local.a
pushi.e 360
cmp.i.v EQ
bt [67]

:[66]
pushloc.v local.a
pushi.e 368
cmp.i.v EQ
b [68]

:[67]
push.e 1

:[68]
bf [70]

:[69]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[70]
pushloc.v local.a
pushi.e 374
cmp.i.v EQ
bf [74]

:[71]
pushi.e 722
pushenv [73]

:[72]
pushi.e 1
pop.v.i self.singlenote

:[73]
popenv [72]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[74]
pushloc.v local.a
pushi.e 381
cmp.i.v EQ
bt [76]

:[75]
pushloc.v local.a
pushi.e 389
cmp.i.v EQ
b [77]

:[76]
push.e 1

:[77]
bf [81]

:[78]
pushi.e 722
pushenv [80]

:[79]
pushi.e 1
pop.v.i self.singlenote

:[80]
popenv [79]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[81]
pushloc.v local.a
pushi.e 396
cmp.i.v EQ
bf [85]

:[82]
pushi.e 722
pushenv [84]

:[83]
pushi.e 0
pop.v.i self.singlenote

:[84]
popenv [83]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[85]
pushloc.v local.a
pushi.e 411
cmp.i.v EQ
bt [90]

:[86]
pushloc.v local.a
pushi.e 417
cmp.i.v EQ
bt [90]

:[87]
pushloc.v local.a
pushi.e 426
cmp.i.v EQ
bt [90]

:[88]
pushloc.v local.a
pushi.e 432
cmp.i.v EQ
bt [90]

:[89]
pushloc.v local.a
pushi.e 444
cmp.i.v EQ
b [91]

:[90]
push.e 1

:[91]
bf [93]

:[92]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[93]
pushloc.v local.a
pushi.e 475
cmp.i.v EQ
bf [97]

:[94]
pushi.e 722
pushenv [96]

:[95]
pushi.e 1
pop.v.i self.singlenote

:[96]
popenv [95]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[97]
pushloc.v local.a
pushi.e 490
cmp.i.v EQ
bt [103]

:[98]
pushloc.v local.a
pushi.e 504
cmp.i.v EQ
bt [103]

:[99]
pushloc.v local.a
pushi.e 519
cmp.i.v EQ
bt [103]

:[100]
pushloc.v local.a
pushi.e 530
cmp.i.v EQ
bt [103]

:[101]
pushloc.v local.a
pushi.e 547
cmp.i.v EQ
bt [103]

:[102]
pushloc.v local.a
pushi.e 559
cmp.i.v EQ
b [104]

:[103]
push.e 1

:[104]
bf [106]

:[105]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[106]
pushloc.v local.a
pushi.e 573
cmp.i.v EQ
bf [110]

:[107]
pushi.e 722
pushenv [109]

:[108]
pushi.e 0
pop.v.i self.singlenote

:[109]
popenv [108]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[110]
pushloc.v local.a
pushi.e 583
cmp.i.v EQ
bt [113]

:[111]
pushloc.v local.a
pushi.e 591
cmp.i.v EQ
bt [113]

:[112]
pushloc.v local.a
pushi.e 599
cmp.i.v EQ
b [114]

:[113]
push.e 1

:[114]
bf [118]

:[115]
pushi.e 722
pushenv [117]

:[116]
pushi.e 1
pop.v.i self.singlenote

:[117]
popenv [116]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[118]
pushloc.v local.a
pushi.e 604
cmp.i.v EQ
bt [127]

:[119]
pushloc.v local.a
pushi.e 619
cmp.i.v EQ
bt [127]

:[120]
pushloc.v local.a
pushi.e 627
cmp.i.v EQ
bt [127]

:[121]
pushloc.v local.a
pushi.e 634
cmp.i.v EQ
bt [127]

:[122]
pushloc.v local.a
pushi.e 654
cmp.i.v EQ
bt [127]

:[123]
pushloc.v local.a
pushi.e 658
cmp.i.v EQ
bt [127]

:[124]
pushloc.v local.a
pushi.e 670
cmp.i.v EQ
bt [127]

:[125]
pushloc.v local.a
pushi.e 681
cmp.i.v EQ
bt [127]

:[126]
pushloc.v local.a
pushi.e 692
cmp.i.v EQ
b [128]

:[127]
push.e 1

:[128]
bf [132]

:[129]
pushi.e 722
pushenv [131]

:[130]
pushi.e 1
pop.v.i self.singlenote

:[131]
popenv [130]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[132]
pushloc.v local.a
pushi.e 705
cmp.i.v EQ
bf [136]

:[133]
pushi.e 722
pushenv [135]

:[134]
pushi.e 0
pop.v.i self.singlenote

:[135]
popenv [134]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[136]
pushloc.v local.a
pushi.e 720
cmp.i.v EQ
bt [140]

:[137]
pushloc.v local.a
pushi.e 735
cmp.i.v EQ
bt [140]

:[138]
pushloc.v local.a
pushi.e 749
cmp.i.v EQ
bt [140]

:[139]
pushloc.v local.a
pushi.e 764
cmp.i.v EQ
b [141]

:[140]
push.e 1

:[141]
bf [145]

:[142]
pushi.e 722
pushenv [144]

:[143]
pushi.e 1
pop.v.i self.singlenote

:[144]
popenv [143]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[145]
pushloc.v local.a
pushi.e 778
cmp.i.v EQ
bt [148]

:[146]
pushloc.v local.a
pushi.e 789
cmp.i.v EQ
bt [148]

:[147]
pushloc.v local.a
pushi.e 800
cmp.i.v EQ
b [149]

:[148]
push.e 1

:[149]
bf [153]

:[150]
pushi.e 722
pushenv [152]

:[151]
pushi.e 1
pop.v.i self.singlenote

:[152]
popenv [151]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[153]
pushloc.v local.a
pushi.e 816
cmp.i.v EQ
bt [156]

:[154]
pushloc.v local.a
pushi.e 830
cmp.i.v EQ
bt [156]

:[155]
pushloc.v local.a
pushi.e 837
cmp.i.v EQ
b [157]

:[156]
push.e 1

:[157]
bf [161]

:[158]
pushi.e 722
pushenv [160]

:[159]
pushi.e 1
pop.v.i self.singlenote

:[160]
popenv [159]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[161]
pushloc.v local.a
pushi.e 847
cmp.i.v EQ
bt [167]

:[162]
pushloc.v local.a
pushi.e 855
cmp.i.v EQ
bt [167]

:[163]
pushloc.v local.a
pushi.e 858
cmp.i.v EQ
bt [167]

:[164]
pushloc.v local.a
pushi.e 863
cmp.i.v EQ
bt [167]

:[165]
pushloc.v local.a
pushi.e 870
cmp.i.v EQ
bt [167]

:[166]
pushloc.v local.a
pushi.e 876
cmp.i.v EQ
b [168]

:[167]
push.e 1

:[168]
bf [172]

:[169]
pushi.e 722
pushenv [171]

:[170]
pushi.e 1
pop.v.i self.singlenote

:[171]
popenv [170]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[172]
pushloc.v local.a
pushi.e 883
cmp.i.v EQ
bf [176]

:[173]
pushi.e 722
pushenv [175]

:[174]
pushi.e 1
pop.v.i self.singlenote

:[175]
popenv [174]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[176]
pushloc.v local.a
pushi.e 936
cmp.i.v EQ
bt [178]

:[177]
pushloc.v local.a
pushi.e 957
cmp.i.v EQ
b [179]

:[178]
push.e 1

:[179]
bf [181]

:[180]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[181]
pushloc.v local.a
pushi.e 972
cmp.i.v EQ
bf [183]

:[182]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[183]
pushloc.v local.a
pushi.e 986
cmp.i.v EQ
bt [186]

:[184]
pushloc.v local.a
pushi.e 993
cmp.i.v EQ
bt [186]

:[185]
pushloc.v local.a
pushi.e 1000
cmp.i.v EQ
b [187]

:[186]
push.e 1

:[187]
bf [189]

:[188]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[189]
pushloc.v local.a
pushi.e 1008
cmp.i.v EQ
bf [191]

:[190]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[191]
pushloc.v local.a
pushi.e 1015
cmp.i.v EQ
bt [196]

:[192]
pushloc.v local.a
pushi.e 1023
cmp.i.v EQ
bt [196]

:[193]
pushloc.v local.a
pushi.e 1029
cmp.i.v EQ
bt [196]

:[194]
pushloc.v local.a
pushi.e 1051
cmp.i.v EQ
bt [196]

:[195]
pushloc.v local.a
pushi.e 1072
cmp.i.v EQ
b [197]

:[196]
push.e 1

:[197]
bf [199]

:[198]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[199]
pushloc.v local.a
pushi.e 1087
cmp.i.v EQ
bf [201]

:[200]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.forcedir

:[201]
pushloc.v local.a
pushi.e 1101
cmp.i.v EQ
bt [204]

:[202]
pushloc.v local.a
pushi.e 1109
cmp.i.v EQ
bt [204]

:[203]
pushloc.v local.a
pushi.e 1116
cmp.i.v EQ
b [205]

:[204]
push.e 1

:[205]
bf [207]

:[206]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[207]
pushloc.v local.a
pushi.e 1124
cmp.i.v EQ
bf [209]

:[208]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[209]
pushloc.v local.a
pushi.e 1137
cmp.i.v EQ
bt [213]

:[210]
pushloc.v local.a
pushi.e 1144
cmp.i.v EQ
bt [213]

:[211]
pushloc.v local.a
pushi.e 1167
cmp.i.v EQ
bt [213]

:[212]
pushloc.v local.a
pushi.e 1188
cmp.i.v EQ
b [214]

:[213]
push.e 1

:[214]
bf [216]

:[215]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[216]
pushloc.v local.a
pushi.e 1203
cmp.i.v EQ
bf [218]

:[217]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[218]
pushloc.v local.a
pushi.e 1216
cmp.i.v EQ
bt [221]

:[219]
pushloc.v local.a
pushi.e 1224
cmp.i.v EQ
bt [221]

:[220]
pushloc.v local.a
pushi.e 1231
cmp.i.v EQ
b [222]

:[221]
push.e 1

:[222]
bf [224]

:[223]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[224]
pushloc.v local.a
pushi.e 1239
cmp.i.v EQ
bf [226]

:[225]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -1
pop.v.i self.forcedir

:[226]
pushloc.v local.a
pushi.e 1253
cmp.i.v EQ
bt [229]

:[227]
pushloc.v local.a
pushi.e 1259
cmp.i.v EQ
bt [229]

:[228]
pushloc.v local.a
pushi.e 1263
cmp.i.v EQ
b [230]

:[229]
push.e 1

:[230]
bf [232]

:[231]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[232]
pushloc.v local.a
pushi.e 1281
cmp.i.v EQ
bt [234]

:[233]
pushloc.v local.a
pushi.e 1303
cmp.i.v EQ
b [235]

:[234]
push.e 1

:[235]
bf [237]

:[236]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[237]
pushloc.v local.a
pushi.e 1318
cmp.i.v EQ
bf [239]

:[238]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[239]
pushloc.v local.a
pushi.e 1333
cmp.i.v EQ
bt [242]

:[240]
pushloc.v local.a
pushi.e 1340
cmp.i.v EQ
bt [242]

:[241]
pushloc.v local.a
pushi.e 1347
cmp.i.v EQ
b [243]

:[242]
push.e 1

:[243]
bf [245]

:[244]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[245]
pushloc.v local.a
pushi.e 1353
cmp.i.v EQ
bf [247]

:[246]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[247]
pushloc.v local.a
pushi.e 1368
cmp.i.v EQ
bt [250]

:[248]
pushloc.v local.a
pushi.e 1376
cmp.i.v EQ
bt [250]

:[249]
pushloc.v local.a
pushi.e 1396
cmp.i.v EQ
b [251]

:[250]
push.e 1

:[251]
bf [253]

:[252]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[253]
pushloc.v local.a
pushi.e 1419
cmp.i.v EQ
bt [255]

:[254]
pushloc.v local.a
pushi.e 1433
cmp.i.v EQ
b [256]

:[255]
push.e 1

:[256]
bf [260]

:[257]
pushi.e 722
pushenv [259]

:[258]
pushi.e 1
pop.v.i self.singlenote

:[259]
popenv [258]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[260]
pushloc.v local.a
pushi.e 1448
cmp.i.v EQ
bt [266]

:[261]
pushloc.v local.a
pushi.e 1454
cmp.i.v EQ
bt [266]

:[262]
pushloc.v local.a
pushi.e 1462
cmp.i.v EQ
bt [266]

:[263]
pushloc.v local.a
pushi.e 1469
cmp.i.v EQ
bt [266]

:[264]
pushloc.v local.a
pushi.e 1484
cmp.i.v EQ
bt [266]

:[265]
pushloc.v local.a
pushi.e 1491
cmp.i.v EQ
b [267]

:[266]
push.e 1

:[267]
bf [269]

:[268]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[269]
pushloc.v local.a
pushi.e 1512
cmp.i.v EQ
bt [271]

:[270]
pushloc.v local.a
pushi.e 1533
cmp.i.v EQ
b [272]

:[271]
push.e 1

:[272]
bf [276]

:[273]
pushi.e 722
pushenv [275]

:[274]
pushi.e 1
pop.v.i self.singlenote

:[275]
popenv [274]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[276]
pushloc.v local.a
pushi.e 1548
cmp.i.v EQ
bt [283]

:[277]
pushloc.v local.a
pushi.e 1562
cmp.i.v EQ
bt [283]

:[278]
pushloc.v local.a
pushi.e 1569
cmp.i.v EQ
bt [283]

:[279]
pushloc.v local.a
pushi.e 1577
cmp.i.v EQ
bt [283]

:[280]
pushloc.v local.a
pushi.e 1584
cmp.i.v EQ
bt [283]

:[281]
pushloc.v local.a
pushi.e 1598
cmp.i.v EQ
bt [283]

:[282]
pushloc.v local.a
pushi.e 1605
cmp.i.v EQ
b [284]

:[283]
push.e 1

:[284]
bf [286]

:[285]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[286]
pushloc.v local.a
pushi.e 1625
cmp.i.v EQ
bt [288]

:[287]
pushloc.v local.a
pushi.e 1649
cmp.i.v EQ
b [289]

:[288]
push.e 1

:[289]
bf [293]

:[290]
pushi.e 722
pushenv [292]

:[291]
pushi.e 1
pop.v.i self.singlenote

:[292]
popenv [291]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[293]
pushloc.v local.a
pushi.e 1664
cmp.i.v EQ
bt [297]

:[294]
pushloc.v local.a
pushi.e 1679
cmp.i.v EQ
bt [297]

:[295]
pushloc.v local.a
pushi.e 1685
cmp.i.v EQ
bt [297]

:[296]
pushloc.v local.a
pushi.e 1692
cmp.i.v EQ
b [298]

:[297]
push.e 1

:[298]
bf [300]

:[299]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[300]
pushloc.v local.a
pushi.e 1696
cmp.i.v EQ
bt [303]

:[301]
pushloc.v local.a
pushi.e 1713
cmp.i.v EQ
bt [303]

:[302]
pushloc.v local.a
pushi.e 1722
cmp.i.v EQ
b [304]

:[303]
push.e 1

:[304]
bf [306]

:[305]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[306]
pushloc.v local.a
pushi.e 1735
cmp.i.v EQ
bt [313]

:[307]
pushloc.v local.a
pushi.e 1743
cmp.i.v EQ
bt [313]

:[308]
pushloc.v local.a
pushi.e 1750
cmp.i.v EQ
bt [313]

:[309]
pushloc.v local.a
pushi.e 1764
cmp.i.v EQ
bt [313]

:[310]
pushloc.v local.a
pushi.e 1679
cmp.i.v EQ
bt [313]

:[311]
pushloc.v local.a
pushi.e 1771
cmp.i.v EQ
bt [313]

:[312]
pushloc.v local.a
pushi.e 1780
cmp.i.v EQ
b [314]

:[313]
push.e 1

:[314]
bf [318]

:[315]
pushi.e 722
pushenv [317]

:[316]
pushi.e 1
pop.v.i self.singlenote

:[317]
popenv [316]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[318]
pushloc.v local.a
pushi.e 1794
cmp.i.v EQ
bt [321]

:[319]
pushloc.v local.a
pushi.e 1801
cmp.i.v EQ
bt [321]

:[320]
pushloc.v local.a
pushi.e 1811
cmp.i.v EQ
b [322]

:[321]
push.e 1

:[322]
bf [326]

:[323]
pushi.e 722
pushenv [325]

:[324]
pushi.e 1
pop.v.i self.singlenote

:[325]
popenv [324]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[326]
pushloc.v local.a
pushi.e 1830
cmp.i.v EQ
bt [328]

:[327]
pushloc.v local.a
pushi.e 1839
cmp.i.v EQ
b [329]

:[328]
push.e 1

:[329]
bf [331]

:[330]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[331]
pushloc.v local.a
pushi.e 1864
cmp.i.v EQ
bt [338]

:[332]
pushloc.v local.a
pushi.e 1876
cmp.i.v EQ
bt [338]

:[333]
pushloc.v local.a
pushi.e 1893
cmp.i.v EQ
bt [338]

:[334]
pushloc.v local.a
pushi.e 1899
cmp.i.v EQ
bt [338]

:[335]
pushloc.v local.a
pushi.e 1908
cmp.i.v EQ
bt [338]

:[336]
pushloc.v local.a
pushi.e 1917
cmp.i.v EQ
bt [338]

:[337]
pushloc.v local.a
pushi.e 1923
cmp.i.v EQ
b [339]

:[338]
push.e 1

:[339]
bf [341]

:[340]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[341]
pushloc.v local.a
pushi.e 1938
cmp.i.v EQ
bf [345]

:[342]
pushi.e 722
pushenv [344]

:[343]
pushi.e 0
pop.v.i self.singlenote

:[344]
popenv [343]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[345]
pushloc.v local.a
pushi.e 1980
cmp.i.v EQ
bf [347]

:[346]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[347]
pushloc.v local.a
pushi.e 2009
cmp.i.v EQ
bt [353]

:[348]
pushloc.v local.a
pushi.e 2019
cmp.i.v EQ
bt [353]

:[349]
pushloc.v local.a
pushi.e 2025
cmp.i.v EQ
bt [353]

:[350]
pushloc.v local.a
pushi.e 2034
cmp.i.v EQ
bt [353]

:[351]
pushloc.v local.a
pushi.e 2040
cmp.i.v EQ
bt [353]

:[352]
pushloc.v local.a
pushi.e 2052
cmp.i.v EQ
b [354]

:[353]
push.e 1

:[354]
bf [356]

:[355]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[356]
pushloc.v local.a
pushi.e 2062
cmp.i.v EQ
bf [360]

:[357]
pushi.e 722
pushenv [359]

:[358]
pushi.e 0
pop.v.i self.singlenote

:[359]
popenv [358]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[360]
pushloc.v local.a
pushi.e 2094
cmp.i.v EQ
bf [362]

:[361]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[362]
pushloc.v local.a
pushi.e 2124
cmp.i.v EQ
bt [370]

:[363]
pushloc.v local.a
pushi.e 2124
cmp.i.v EQ
bt [370]

:[364]
pushloc.v local.a
pushi.e 2133
cmp.i.v EQ
bt [370]

:[365]
pushloc.v local.a
pushi.e 2141
cmp.i.v EQ
bt [370]

:[366]
pushloc.v local.a
pushi.e 2150
cmp.i.v EQ
bt [370]

:[367]
pushloc.v local.a
pushi.e 2157
cmp.i.v EQ
bt [370]

:[368]
pushloc.v local.a
pushi.e 2166
cmp.i.v EQ
bt [370]

:[369]
pushloc.v local.a
pushi.e 2170
cmp.i.v EQ
b [371]

:[370]
push.e 1

:[371]
bf [373]

:[372]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[373]
pushloc.v local.a
pushi.e 2180
cmp.i.v EQ
bf [377]

:[374]
pushi.e 722
pushenv [376]

:[375]
pushi.e 0
pop.v.i self.singlenote

:[376]
popenv [375]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[377]
pushloc.v local.a
pushi.e 2211
cmp.i.v EQ
bt [382]

:[378]
pushloc.v local.a
pushi.e 2240
cmp.i.v EQ
bt [382]

:[379]
pushloc.v local.a
pushi.e 2250
cmp.i.v EQ
bt [382]

:[380]
pushloc.v local.a
pushi.e 2260
cmp.i.v EQ
bt [382]

:[381]
pushloc.v local.a
pushi.e 2270
cmp.i.v EQ
b [383]

:[382]
push.e 1

:[383]
bf [385]

:[384]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[385]
pushloc.v local.a
pushi.e 2295
cmp.i.v EQ
bf [387]

:[386]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[387]
pushloc.v local.a
pushi.e 2312
cmp.i.v EQ
bt [392]

:[388]
pushloc.v local.a
pushi.e 2319
cmp.i.v EQ
bt [392]

:[389]
pushloc.v local.a
pushi.e 2325
cmp.i.v EQ
bt [392]

:[390]
pushloc.v local.a
pushi.e 2334
cmp.i.v EQ
bt [392]

:[391]
pushloc.v local.a
pushi.e 2341
cmp.i.v EQ
b [393]

:[392]
push.e 1

:[393]
bf [395]

:[394]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[395]
pushloc.v local.a
pushi.e 2335
cmp.i.v EQ
bf [399]

:[396]
pushi.e 722
pushenv [398]

:[397]
pushi.e 0
pop.v.i self.singlenote

:[398]
popenv [397]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[399]
pushloc.v local.a
pushi.e 2368
cmp.i.v EQ
bt [403]

:[400]
pushloc.v local.a
pushi.e 2376
cmp.i.v EQ
bt [403]

:[401]
pushloc.v local.a
pushi.e 2385
cmp.i.v EQ
bt [403]

:[402]
pushloc.v local.a
pushi.e 2391
cmp.i.v EQ
b [404]

:[403]
push.e 1

:[404]
bf [406]

:[405]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[406]
pushloc.v local.a
pushi.e 2397
cmp.i.v EQ
bf [410]

:[407]
pushi.e 722
pushenv [409]

:[408]
pushi.e 0
pop.v.i self.singlenote

:[409]
popenv [408]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[410]
pushloc.v local.a
pushi.e 2412
cmp.i.v EQ
bf [412]

:[411]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[412]
pushloc.v local.a
pushi.e 2427
cmp.i.v EQ
bt [418]

:[413]
pushloc.v local.a
pushi.e 2433
cmp.i.v EQ
bt [418]

:[414]
pushloc.v local.a
pushi.e 2442
cmp.i.v EQ
bt [418]

:[415]
pushloc.v local.a
pushi.e 2448
cmp.i.v EQ
bt [418]

:[416]
pushloc.v local.a
pushi.e 2457
cmp.i.v EQ
bt [418]

:[417]
pushloc.v local.a
pushi.e 2464
cmp.i.v EQ
b [419]

:[418]
push.e 1

:[419]
bf [421]

:[420]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[421]
pushloc.v local.a
pushi.e 2472
cmp.i.v EQ
bt [424]

:[422]
pushloc.v local.a
pushi.e 2484
cmp.i.v EQ
bt [424]

:[423]
pushloc.v local.a
pushi.e 2493
cmp.i.v EQ
b [425]

:[424]
push.e 1

:[425]
bf [427]

:[426]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[427]
pushloc.v local.a
pushi.e 2499
cmp.i.v EQ
bt [430]

:[428]
pushloc.v local.a
pushi.e 2520
cmp.i.v EQ
bt [430]

:[429]
pushloc.v local.a
pushi.e 2529
cmp.i.v EQ
b [431]

:[430]
push.e 1

:[431]
bf [433]

:[432]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[433]
pushloc.v local.a
pushi.e 2535
cmp.i.v EQ
bt [437]

:[434]
pushloc.v local.a
pushi.e 2550
cmp.i.v EQ
bt [437]

:[435]
pushloc.v local.a
pushi.e 2556
cmp.i.v EQ
bt [437]

:[436]
pushloc.v local.a
pushi.e 2564
cmp.i.v EQ
b [438]

:[437]
push.e 1

:[438]
bf [440]

:[439]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[440]
pushloc.v local.a
pushi.e 2573
cmp.i.v EQ
bt [446]

:[441]
pushloc.v local.a
pushi.e 2581
cmp.i.v EQ
bt [446]

:[442]
pushloc.v local.a
pushi.e 2598
cmp.i.v EQ
bt [446]

:[443]
pushloc.v local.a
pushi.e 2607
cmp.i.v EQ
bt [446]

:[444]
pushloc.v local.a
pushi.e 2614
cmp.i.v EQ
bt [446]

:[445]
pushloc.v local.a
pushi.e 2622
cmp.i.v EQ
b [447]

:[446]
push.e 1

:[447]
bf [449]

:[448]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[449]
pushloc.v local.a
pushi.e 2628
cmp.i.v EQ
bf [453]

:[450]
pushi.e 722
pushenv [452]

:[451]
pushi.e 0
pop.v.i self.singlenote

:[452]
popenv [451]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[453]
pushloc.v local.a
pushi.e 2643
cmp.i.v EQ
bt [461]

:[454]
pushloc.v local.a
pushi.e 2658
cmp.i.v EQ
bt [461]

:[455]
pushloc.v local.a
pushi.e 2664
cmp.i.v EQ
bt [461]

:[456]
pushloc.v local.a
pushi.e 2669
cmp.i.v EQ
bt [461]

:[457]
pushloc.v local.a
pushi.e 2674
cmp.i.v EQ
bt [461]

:[458]
pushloc.v local.a
pushi.e 2687
cmp.i.v EQ
bt [461]

:[459]
pushloc.v local.a
pushi.e 2694
cmp.i.v EQ
bt [461]

:[460]
pushloc.v local.a
pushi.e 2700
cmp.i.v EQ
b [462]

:[461]
push.e 1

:[462]
bf [464]

:[463]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[464]
pushloc.v local.a
pushi.e 2715
cmp.i.v EQ
bt [469]

:[465]
pushloc.v local.a
pushi.e 2721
cmp.i.v EQ
bt [469]

:[466]
pushloc.v local.a
pushi.e 2730
cmp.i.v EQ
bt [469]

:[467]
pushloc.v local.a
pushi.e 2745
cmp.i.v EQ
bt [469]

:[468]
pushloc.v local.a
pushi.e 2758
cmp.i.v EQ
b [470]

:[469]
push.e 1

:[470]
bf [472]

:[471]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[472]
pushloc.v local.a
pushi.e 2763
cmp.i.v EQ
bf [476]

:[473]
pushi.e 1
pop.v.i self.forcedir
pushi.e 722
pushenv [475]

:[474]
pushi.e 3
pop.v.i self.segmentcountmax

:[475]
popenv [474]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[476]
pushloc.v local.a
pushi.e 2787
cmp.i.v EQ
bf [480]

:[477]
pushi.e -1
pop.v.i self.forcedir
pushi.e 722
pushenv [479]

:[478]
pushi.e 5
pop.v.i self.segmentcountmax

:[479]
popenv [478]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[480]
pushloc.v local.a
pushi.e 2844
cmp.i.v EQ
bt [484]

:[481]
pushloc.v local.a
pushi.e 2860
cmp.i.v EQ
bt [484]

:[482]
pushloc.v local.a
pushi.e 2874
cmp.i.v EQ
bt [484]

:[483]
pushloc.v local.a
pushi.e 2886
cmp.i.v EQ
b [485]

:[484]
push.e 1

:[485]
bf [489]

:[486]
pushi.e 0
pop.v.i self.forcedir
pushi.e 722
pushenv [488]

:[487]
pushi.e 0
pop.v.i self.segmentcountmax
pushi.e 0
pop.v.i self.segmentcount
pushi.e 0
pop.v.i self.makelong
pushi.e 0
pop.v.i self.makelongtimer

:[488]
popenv [487]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[489]
pushloc.v local.a
pushi.e 2889
cmp.i.v EQ
bt [493]

:[490]
pushloc.v local.a
pushi.e 2895
cmp.i.v EQ
bt [493]

:[491]
pushloc.v local.a
pushi.e 2901
cmp.i.v EQ
bt [493]

:[492]
pushloc.v local.a
pushi.e 2916
cmp.i.v EQ
b [494]

:[493]
push.e 1

:[494]
bf [496]

:[495]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[496]
pushloc.v local.a
pushi.e 2925
cmp.i.v EQ
bf [500]

:[497]
pushi.e 1
pop.v.i self.forcedir
pushi.e 722
pushenv [499]

:[498]
pushi.e 2
pop.v.i self.segmentcountmax

:[499]
popenv [498]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[500]
pushloc.v local.a
pushi.e 2958
cmp.i.v EQ
bt [503]

:[501]
pushloc.v local.a
pushi.e 2973
cmp.i.v EQ
bt [503]

:[502]
pushloc.v local.a
pushi.e 2988
cmp.i.v EQ
b [504]

:[503]
push.e 1

:[504]
bf [506]

:[505]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[506]
pushloc.v local.a
pushi.e 2992
cmp.i.v EQ
bf [510]

:[507]
pushi.e -1
pop.v.i self.forcedir
pushi.e 722
pushenv [509]

:[508]
pushi.e 3
pop.v.i self.segmentcountmax

:[509]
popenv [508]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[510]
pushloc.v local.a
pushi.e 3015
cmp.i.v EQ
bf [514]

:[511]
pushi.e 1
pop.v.i self.forcedir
pushi.e 722
pushenv [513]

:[512]
pushi.e 5
pop.v.i self.segmentcountmax

:[513]
popenv [512]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[514]
pushloc.v local.a
pushi.e 3075
cmp.i.v EQ
bt [520]

:[515]
pushloc.v local.a
pushi.e 3084
cmp.i.v EQ
bt [520]

:[516]
pushloc.v local.a
pushi.e 3102
cmp.i.v EQ
bt [520]

:[517]
pushloc.v local.a
pushi.e 3118
cmp.i.v EQ
bt [520]

:[518]
pushloc.v local.a
pushi.e 3122
cmp.i.v EQ
bt [520]

:[519]
pushloc.v local.a
pushi.e 3126
cmp.i.v EQ
b [521]

:[520]
push.e 1

:[521]
bf [525]

:[522]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.forcedir
pushi.e 722
pushenv [524]

:[523]
pushi.e 0
pop.v.i self.segmentcountmax
pushi.e 0
pop.v.i self.segmentcount
pushi.e 0
pop.v.i self.makelong
pushi.e 0
pop.v.i self.makelongtimer

:[524]
popenv [523]

:[525]
pushloc.v local.a
pushi.e 3132
cmp.i.v EQ
bt [530]

:[526]
pushloc.v local.a
pushi.e 3147
cmp.i.v EQ
bt [530]

:[527]
pushloc.v local.a
pushi.e 3154
cmp.i.v EQ
bt [530]

:[528]
pushloc.v local.a
pushi.e 3177
cmp.i.v EQ
bt [530]

:[529]
pushloc.v local.a
pushi.e 3186
cmp.i.v EQ
b [531]

:[530]
push.e 1

:[531]
bf [533]

:[532]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[533]
pushloc.v local.a
pushi.e 3195
cmp.i.v EQ
bt [537]

:[534]
pushloc.v local.a
pushi.e 3204
cmp.i.v EQ
bt [537]

:[535]
pushloc.v local.a
pushi.e 3213
cmp.i.v EQ
bt [537]

:[536]
pushloc.v local.a
pushi.e 3219
cmp.i.v EQ
b [538]

:[537]
push.e 1

:[538]
bf [end]

:[539]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]