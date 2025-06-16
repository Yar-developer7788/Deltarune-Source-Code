.localvar 2 arguments

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
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [67]

:[1]
pushbltn.v builtin.room
pushi.e 283
cmp.i.v EQ
bf [3]

:[2]
pushi.e 3453
pop.v.i self.sprite_index

:[3]
pushbltn.v builtin.room
pushi.e 286
cmp.i.v EQ
bf [6]

:[4]
pushi.e 3451
pop.v.i self.sprite_index
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [6]

:[5]
pushi.e 3450
pop.v.i self.sprite_index

:[6]
pushbltn.v builtin.room
pushi.e 297
cmp.i.v EQ
bf [10]

:[7]
pushi.e 3672
pop.v.i self.sprite_index
pushi.e 3670
conv.i.v
pushi.e 122
conv.i.v
pushi.e 81
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.fence
push.v self.fence
pushi.e -9
pushenv [9]

:[8]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[9]
popenv [8]

:[10]
pushbltn.v builtin.room
pushi.e 299
cmp.i.v EQ
bf [12]

:[11]
pushi.e 3685
pop.v.i self.sprite_index

:[12]
pushbltn.v builtin.room
pushi.e 301
cmp.i.v EQ
bf [14]

:[13]
pushi.e 3615
pop.v.i self.sprite_index

:[14]
pushbltn.v builtin.room
pushi.e 307
cmp.i.v EQ
bf [16]

:[15]
pushi.e 3686
pop.v.i self.sprite_index

:[16]
pushbltn.v builtin.room
pushi.e 304
cmp.i.v EQ
bf [21]

:[17]
pushi.e 3681
pop.v.i self.sprite_index
push.v self.x
pushi.e 100
cmp.i.v GT
bf [19]

:[18]
pushi.e 3682
pop.v.i self.sprite_index

:[19]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [21]

:[20]
pushi.e 3684
pop.v.i self.sprite_index

:[21]
pushbltn.v builtin.room
pushi.e 303
cmp.i.v EQ
bf [43]

:[22]
push.v self.x
pushi.e 120
cmp.i.v LT
bf [24]

:[23]
pushi.e 3633
pop.v.i self.sprite_index

:[24]
push.v self.x
pushi.e 60
cmp.i.v LT
bf [26]

:[25]
pushi.e 3631
pop.v.i self.sprite_index

:[26]
push.v self.x
pushi.e 120
cmp.i.v GTE
bf [28]

:[27]
push.v self.x
pushi.e 140
cmp.i.v LTE
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 3627
pop.v.i self.sprite_index

:[31]
push.v self.y
pushi.e 130
cmp.i.v GT
bf [38]

:[32]
push.v self.x
pushi.e 180
cmp.i.v GT
bf [34]

:[33]
pushi.e 3632
pop.v.i self.sprite_index

:[34]
push.v self.x
pushi.e 240
cmp.i.v GT
bf [36]

:[35]
pushi.e 3629
pop.v.i self.sprite_index
pushi.e 4000
pop.v.i self.depth
pushi.e 1
pop.v.i self.depthcancel

:[36]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [38]

:[37]
pushi.e 3630
pop.v.i self.sprite_index
pushi.e 4000
pop.v.i self.depth
pushi.e 1
pop.v.i self.depthcancel

:[38]
push.v self.y
pushi.e 120
cmp.i.v LT
bf [43]

:[39]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [41]

:[40]
pushi.e 3628
pop.v.i self.sprite_index

:[41]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [43]

:[42]
pushi.e 3626
pop.v.i self.sprite_index

:[43]
pushbltn.v builtin.room
pushi.e 294
cmp.i.v EQ
bf [48]

:[44]
push.v self.x
pushi.e 560
cmp.i.v GT
bf [46]

:[45]
pushi.e 3676
pop.v.i self.sprite_index

:[46]
push.v self.x
pushi.e 720
cmp.i.v GT
bf [48]

:[47]
pushi.e 3677
pop.v.i self.sprite_index

:[48]
pushbltn.v builtin.room
pushi.e 296
cmp.i.v EQ
bf [50]

:[49]
pushi.e 3678
pop.v.i self.sprite_index

:[50]
pushbltn.v builtin.room
pushi.e 292
cmp.i.v EQ
bf [55]

:[51]
push.v self.x
pushi.e 1800
cmp.i.v GTE
bf [53]

:[52]
pushi.e 3519
pop.v.i self.sprite_index

:[53]
push.v self.x
pushi.e 1900
cmp.i.v GTE
bf [55]

:[54]
pushi.e 3515
pop.v.i self.sprite_index

:[55]
pushbltn.v builtin.room
pushi.e 290
cmp.i.v EQ
bf [62]

:[56]
push.v self.x
pushi.e 480
cmp.i.v GTE
bf [58]

:[57]
pushi.e 3656
pop.v.i self.sprite_index

:[58]
push.v self.x
pushi.e 640
cmp.i.v GTE
bf [60]

:[59]
pushi.e 3654
pop.v.i self.sprite_index

:[60]
push.v self.x
pushi.e 880
cmp.i.v GTE
bf [62]

:[61]
pushi.e 3655
pop.v.i self.sprite_index

:[62]
pushbltn.v builtin.room
pushi.e 291
cmp.i.v EQ
bf [67]

:[63]
push.v self.x
pushi.e 60
cmp.i.v GTE
bf [65]

:[64]
pushi.e 3679
pop.v.i self.sprite_index

:[65]
push.v self.x
pushi.e 100
cmp.i.v GTE
bf [67]

:[66]
pushi.e 3680
pop.v.i self.sprite_index

:[67]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [223]

:[68]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushbltn.v builtin.room
pushi.e 328
cmp.i.v EQ
bf [70]

:[69]
pushi.e 4017
pop.v.i self.sprite_index

:[70]
pushbltn.v builtin.room
pushi.e 334
cmp.i.v EQ
bt [73]

:[71]
pushbltn.v builtin.room
pushi.e 336
cmp.i.v EQ
bt [73]

:[72]
pushbltn.v builtin.room
pushi.e 344
cmp.i.v EQ
b [74]

:[73]
push.e 1

:[74]
bf [76]

:[75]
pushi.e 4073
pop.v.i self.sprite_index

:[76]
pushbltn.v builtin.room
pushi.e 335
cmp.i.v EQ
bf [79]

:[77]
pushi.e 3733
pop.v.i self.sprite_index
push.v self.y
pushi.e 120
cmp.i.v LTE
bf [79]

:[78]
pushi.e 3614
pop.v.i self.sprite_index
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.alarm

:[79]
pushbltn.v builtin.room
pushi.e 341
cmp.i.v EQ
bf [82]

:[80]
pushi.e 3693
pop.v.i self.sprite_index
pushi.e -5
pushi.e 251
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
call.i instance_destroy(argc=0)
popz.v

:[82]
pushbltn.v builtin.room
pushi.e 337
cmp.i.v EQ
bf [87]

:[83]
push.v self.x
pushi.e 1600
cmp.i.v LT
bf [85]

:[84]
pushi.e 3974
pop.v.i self.sprite_index

:[85]
push.v self.x
pushi.e 1600
cmp.i.v GT
bf [87]

:[86]
pushi.e 3578
pop.v.i self.sprite_index

:[87]
pushbltn.v builtin.room
pushi.e 343
cmp.i.v EQ
bf [89]

:[88]
pushi.e 3736
pop.v.i self.sprite_index

:[89]
pushbltn.v builtin.room
pushi.e 352
cmp.i.v EQ
bf [95]

:[90]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [94]

:[91]
pushi.e 3730
pop.v.i self.sprite_index
pushglb.v global.plot
pushi.e 60
cmp.i.v GTE
bf [93]

:[92]
call.i instance_destroy(argc=0)
popz.v

:[93]
b [95]

:[94]
pushi.e 3731
pop.v.i self.sprite_index

:[95]
pushbltn.v builtin.room
pushi.e 354
cmp.i.v EQ
bf [101]

:[96]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [100]

:[97]
pushi.e 3693
pop.v.i self.sprite_index
pushi.e -5
pushi.e 251
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [99]

:[98]
call.i instance_destroy(argc=0)
popz.v

:[99]
b [101]

:[100]
pushi.e 3730
pop.v.i self.sprite_index

:[101]
pushbltn.v builtin.room
pushi.e 356
cmp.i.v EQ
bf [103]

:[102]
pushi.e 3869
pop.v.i self.sprite_index

:[103]
pushbltn.v builtin.room
pushi.e 358
cmp.i.v EQ
bf [108]

:[104]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [106]

:[105]
pushi.e 3708
pop.v.i self.sprite_index

:[106]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [108]

:[107]
pushi.e 3709
pop.v.i self.sprite_index

:[108]
pushbltn.v builtin.room
pushi.e 361
cmp.i.v EQ
bf [113]

:[109]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [111]

:[110]
pushi.e 3711
pop.v.i self.sprite_index

:[111]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [113]

:[112]
pushi.e 3712
pop.v.i self.sprite_index

:[113]
pushbltn.v builtin.room
pushi.e 363
cmp.i.v EQ
bf [121]

:[114]
pushi.e 3713
pop.v.i self.sprite_index
push.v self.x
pushi.e 800
cmp.i.v GTE
bf [116]

:[115]
push.v self.x
pushi.e 880
cmp.i.v LTE
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
pushi.e 3714
pop.v.i self.sprite_index

:[119]
push.v self.x
pushi.e 980
cmp.i.v GTE
bf [121]

:[120]
pushi.e 3715
pop.v.i self.sprite_index

:[121]
pushbltn.v builtin.room
pushi.e 365
cmp.i.v EQ
bf [123]

:[122]
pushi.e 3732
pop.v.i self.sprite_index

:[123]
pushbltn.v builtin.room
pushi.e 369
cmp.i.v EQ
bf [125]

:[124]
pushi.e 3729
pop.v.i self.sprite_index

:[125]
pushbltn.v builtin.room
pushi.e 371
cmp.i.v EQ
bf [134]

:[126]
push.v self.x
pushi.e 200
cmp.i.v LTE
bf [128]

:[127]
pushi.e 3869
pop.v.i self.sprite_index

:[128]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [134]

:[129]
pushglb.v global.plot
pushi.e 90
cmp.i.v GTE
bf [131]

:[130]
call.i instance_destroy(argc=0)
popz.v

:[131]
push.v self.y
pushi.e 240
cmp.i.v GTE
bf [133]

:[132]
pushi.e 3593
pop.v.i self.sprite_index
b [134]

:[133]
pushi.e 3522
pop.v.i self.sprite_index

:[134]
pushbltn.v builtin.room
pushi.e 378
cmp.i.v EQ
bf [137]

:[135]
pushi.e 3578
pop.v.i self.sprite_index
pushglb.v global.plot
pushi.e 150
cmp.i.v GTE
bf [137]

:[136]
call.i instance_destroy(argc=0)
popz.v

:[137]
pushbltn.v builtin.room
pushi.e 386
cmp.i.v EQ
bf [139]

:[138]
pushi.e 3875
pop.v.i self.sprite_index

:[139]
pushbltn.v builtin.room
pushi.e 389
cmp.i.v EQ
bf [160]

:[140]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 296
pop.v.v [array]self.flag
pushi.e 3710
pop.v.i self.sprite_index
push.v self.x
pushi.e 240
cmp.i.v GT
bf [142]

:[141]
push.v self.x
pushi.e 440
cmp.i.v LT
b [143]

:[142]
push.e 0

:[143]
bf [145]

:[144]
pushi.e 1412
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.king
push.v self.x
push.v self.king
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.king
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 3722
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.sprite_index
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
push.v self.depth
pushi.e 10
sub.i.v
push.v self.king
pushi.e -9
pop.v.v [stacktop]self.depth

:[145]
push.v self.x
pushi.e 480
cmp.i.v GT
bf [147]

:[146]
push.v self.x
pushi.e 680
cmp.i.v LT
b [148]

:[147]
push.e 0

:[148]
bf [150]

:[149]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x
pushi.e 1412
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.puzz
pushi.e 660
push.v self.puzz
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 130
push.v self.puzz
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 3696
push.v self.puzz
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.tempvar

:[150]
push.v self.x
pushi.e 680
cmp.i.v GT
bf [152]

:[151]
push.v self.x
pushi.e 900
cmp.i.v LT
b [153]

:[152]
push.e 0

:[153]
bf [155]

:[154]
push.v self.x
pushi.e 8
add.i.v
pop.v.v self.x
pushi.e 1412
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.rudinn
pushi.e 900
push.v self.rudinn
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 115
push.v self.rudinn
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 3869
push.v self.rudinn
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.tempvar

:[155]
push.v self.x
pushi.e 900
cmp.i.v GT
bf [157]

:[156]
push.v self.x
pushi.e 1120
cmp.i.v LT
b [158]

:[157]
push.e 0

:[158]
bf [160]

:[159]
push.v self.x
pushi.e 12
add.i.v
pop.v.v self.x
pushi.e 3
pop.v.i self.tempvar
pushi.e 1412
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.animal
push.v self.x
push.v self.animal
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.animal
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 3723
push.v self.animal
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[160]
pushbltn.v builtin.room
pushi.e 396
cmp.i.v EQ
bf [162]

:[161]
pushi.e 3869
pop.v.i self.sprite_index

:[162]
pushbltn.v builtin.room
pushi.e 398
cmp.i.v EQ
bf [164]

:[163]
pushi.e 3869
pop.v.i self.sprite_index

:[164]
pushbltn.v builtin.room
pushi.e 400
cmp.i.v EQ
bf [166]

:[165]
pushi.e 3887
pop.v.i self.sprite_index

:[166]
pushbltn.v builtin.room
pushi.e 402
cmp.i.v EQ
bf [168]

:[167]
pushi.e 3869
pop.v.i self.sprite_index

:[168]
pushbltn.v builtin.room
pushi.e 403
cmp.i.v EQ
bf [173]

:[169]
pushi.e 3895
pop.v.i self.sprite_index
push.v self.x
pushi.e 160
cmp.i.v LT
bf [171]

:[170]
pushi.e 3869
pop.v.i self.sprite_index

:[171]
push.v self.x
pushi.e 400
cmp.i.v GT
bf [173]

:[172]
pushi.e 3887
pop.v.i self.sprite_index

:[173]
pushbltn.v builtin.room
pushi.e 407
cmp.i.v EQ
bf [187]

:[174]
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [176]

:[175]
call.i instance_destroy(argc=0)
popz.v
b [187]

:[176]
push.v self.y
pushi.e 300
cmp.i.v LT
bf [178]

:[177]
push.v self.y
pushi.e 80
cmp.i.v GT
b [179]

:[178]
push.e 0

:[179]
bf [184]

:[180]
pushi.e 3710
pop.v.i self.sprite_index
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [182]

:[181]
pushi.e 1412
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.king
push.v self.x
push.v self.king
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.king
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 3722
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.sprite_index
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
push.v self.depth
pushi.e 10
sub.i.v
push.v self.king
pushi.e -9
pop.v.v [stacktop]self.depth
b [183]

:[182]
pushi.e 1
pop.v.i self.tempvar
pushi.e 1412
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.animal
push.v self.x
push.v self.animal
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.y
push.v self.animal
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 3723
push.v self.animal
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[183]
b [187]

:[184]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [186]

:[185]
pushi.e 3869
pop.v.i self.sprite_index
b [187]

:[186]
pushi.e 3733
pop.v.i self.sprite_index

:[187]
pushbltn.v builtin.room
pushi.e 408
cmp.i.v EQ
bf [198]

:[188]
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [190]

:[189]
call.i instance_destroy(argc=0)
popz.v

:[190]
push.v self.x
pushi.e 180
cmp.i.v GT
bf [192]

:[191]
pushi.e 3869
pop.v.i self.sprite_index

:[192]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [194]

:[193]
pushi.e 3887
pop.v.i self.sprite_index

:[194]
push.v self.x
pushi.e 460
cmp.i.v GT
bf [196]

:[195]
pushi.e 3895
pop.v.i self.sprite_index

:[196]
push.v self.x
pushi.e 680
cmp.i.v GT
bf [198]

:[197]
pushi.e 3869
pop.v.i self.sprite_index

:[198]
pushbltn.v builtin.room
pushi.e 409
cmp.i.v EQ
bf [223]

:[199]
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [201]

:[200]
call.i instance_destroy(argc=0)
popz.v

:[201]
push.v self.x
pushi.e 440
cmp.i.v LT
bf [203]

:[202]
pushi.e 3687
pop.v.i self.sprite_index

:[203]
push.v self.y
pushi.e 160
cmp.i.v LT
bf [220]

:[204]
push.v self.x
pushi.e 398
cmp.i.v EQ
bf [206]

:[205]
pushi.e 3731
pop.v.i self.sprite_index

:[206]
push.v self.x
pushi.e 522
cmp.i.v EQ
bf [208]

:[207]
pushi.e 3730
pop.v.i self.sprite_index

:[208]
push.v self.x
pushi.e 740
cmp.i.v EQ
bf [210]

:[209]
pushi.e 3711
pop.v.i self.sprite_index

:[210]
push.v self.x
pushi.e 820
cmp.i.v EQ
bf [212]

:[211]
pushi.e 3712
pop.v.i self.sprite_index

:[212]
push.v self.x
pushi.e 940
cmp.i.v EQ
bf [214]

:[213]
pushi.e 3712
pop.v.i self.sprite_index

:[214]
push.v self.x
pushi.e 1020
cmp.i.v EQ
bf [216]

:[215]
pushi.e 3711
pop.v.i self.sprite_index

:[216]
push.v self.x
pushi.e 1140
cmp.i.v GT
bf [219]

:[217]
pushi.e 3694
pop.v.i self.sprite_index
pushi.e -5
pushi.e 216
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [219]

:[218]
pushi.e 3695
pop.v.i self.sprite_index

:[219]
b [223]

:[220]
push.v self.x
pushi.e 900
cmp.i.v LT
bf [222]

:[221]
pushi.e 3708
pop.v.i self.sprite_index
b [223]

:[222]
pushi.e 3709
pop.v.i self.sprite_index

:[223]
push.v self.depthcancel
pushi.e 0
cmp.i.v EQ
bf [end]

:[224]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[end]