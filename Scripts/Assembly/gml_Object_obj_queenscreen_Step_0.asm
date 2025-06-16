.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [10]

:[1]
pushbltn.v builtin.room
pushi.e 97
cmp.i.v EQ
bt [3]

:[2]
pushbltn.v builtin.room
pushi.e 107
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
pushi.e 10
pop.v.i self.image_index
pushi.e 4
pop.v.i self.extflag
pushi.e 0
pop.v.i self.activecon
call.i gml_Script_scr_depth(argc=0)
popz.v

:[6]
pushbltn.v builtin.room
pushi.e 103
cmp.i.v EQ
bf [9]

:[7]
push.v self.extflag
pushi.e 4
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i self.activecon
call.i gml_Script_scr_depth(argc=0)
popz.v

:[9]
pushi.e 1
pop.v.i self.init

:[10]
push.v self.activecon
pushi.e 0
cmp.i.v EQ
bf [145]

:[11]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [145]

:[12]
pushi.e 0
pop.v.i self.aligned
push.v self.extflag
pushi.e 999
cmp.i.v EQ
bf [30]

:[13]
push.v self.align_x
pushi.e 1
cmp.b.v EQ
bf [16]

:[14]
push.v self.x
call.i gml_Script_camerax(argc=0)
cmp.v.v GTE
bf [16]

:[15]
push.v self.x
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
cmp.v.v LTE
b [17]

:[16]
push.e 0

:[17]
bf [20]

:[18]
push.v 82.x
pushi.e 20
add.i.v
push.v self.x
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [20]

:[19]
pushi.e 1
pop.v.i self.aligned

:[20]
push.v self.align_y
pushi.e 1
cmp.b.v EQ
bf [23]

:[21]
push.v self.y
call.i gml_Script_cameray(argc=0)
cmp.v.v GTE
bf [23]

:[22]
push.v self.y
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
cmp.v.v LTE
b [24]

:[23]
push.e 0

:[24]
bf [27]

:[25]
push.v 82.y
pushi.e 20
add.i.v
push.v self.y
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [27]

:[26]
pushi.e 1
pop.v.i self.aligned

:[27]
push.v self.align_distance
pushi.e 1
cmp.b.v EQ
bf [30]

:[28]
pushi.e 82
conv.i.v
call.i distance_to_object(argc=1)
push.v self.align_amount
cmp.v.v LT
bf [30]

:[29]
pushi.e 1
pop.v.i self.aligned

:[30]
push.v self.image_index
pushi.e 14
cmp.i.v NEQ
bf [33]

:[31]
push.v self.image_index
pushi.e 13
cmp.i.v NEQ
bf [33]

:[32]
push.v self.extflag
pushi.e 0
cmp.b.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [52]

:[35]
push.v self.align_x
pushi.e 1
cmp.b.v EQ
bf [38]

:[36]
push.v self.x
call.i gml_Script_camerax(argc=0)
cmp.v.v GTE
bf [38]

:[37]
push.v self.x
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
cmp.v.v LTE
b [39]

:[38]
push.e 0

:[39]
bf [42]

:[40]
push.v 82.x
pushi.e 20
add.i.v
push.v self.x
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [42]

:[41]
pushi.e 1
pop.v.i self.aligned

:[42]
push.v self.align_y
pushi.e 1
cmp.b.v EQ
bf [45]

:[43]
push.v self.y
call.i gml_Script_cameray(argc=0)
cmp.v.v GTE
bf [45]

:[44]
push.v self.y
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
cmp.v.v LTE
b [46]

:[45]
push.e 0

:[46]
bf [49]

:[47]
push.v 82.y
pushi.e 20
add.i.v
push.v self.y
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [49]

:[48]
pushi.e 1
pop.v.i self.aligned

:[49]
push.v self.align_distance
pushi.e 1
cmp.b.v EQ
bf [52]

:[50]
pushi.e 82
conv.i.v
call.i distance_to_object(argc=1)
push.v self.align_amount
cmp.v.v LT
bf [52]

:[51]
pushi.e 1
pop.v.i self.aligned

:[52]
push.v self.image_index
pushi.e 13
cmp.i.v EQ
bf [55]

:[53]
pushi.e 558
conv.i.v
pushi.e 160
conv.i.v
pushi.e 480
conv.i.v
pushi.e 120
conv.i.v
push.v 82.y
pushi.e 36
add.i.v
push.v 82.x
pushi.e 18
add.i.v
call.i point_in_rectangle(argc=6)
conv.v.b
bf [55]

:[54]
pushi.e 1
pop.v.i self.aligned

:[55]
push.v self.image_index
pushi.e 14
cmp.i.v EQ
bf [58]

:[56]
pushi.e 962
conv.i.v
pushi.e 280
conv.i.v
pushi.e 882
conv.i.v
pushi.e 200
conv.i.v
push.v 82.y
pushi.e 36
add.i.v
push.v 82.x
pushi.e 18
add.i.v
call.i point_in_rectangle(argc=6)
conv.v.b
bf [58]

:[57]
pushi.e 1
pop.v.i self.aligned

:[58]
push.v self.extflag
pushi.e 1
cmp.i.v EQ
bf [61]

:[59]
pushi.e 760
conv.i.v
pushi.e 480
conv.i.v
pushi.e 680
conv.i.v
pushi.e 400
conv.i.v
push.v 82.y
pushi.e 36
add.i.v
push.v 82.x
pushi.e 18
add.i.v
call.i point_in_rectangle(argc=6)
conv.v.b
bf [61]

:[60]
pushi.e 1
pop.v.i self.aligned

:[61]
push.v self.extflag
pushi.e 2
cmp.i.v EQ
bf [64]

:[62]
pushi.e 520
conv.i.v
pushi.e 1160
conv.i.v
pushi.e 440
conv.i.v
pushi.e 1080
conv.i.v
push.v 82.y
pushi.e 36
add.i.v
push.v 82.x
pushi.e 18
add.i.v
call.i point_in_rectangle(argc=6)
conv.v.b
bf [64]

:[63]
pushi.e 1
pop.v.i self.aligned

:[64]
push.v self.extflag
pushi.e 3
cmp.i.v EQ
bf [66]

:[65]
pushi.e 1
pop.v.i self.aligned

:[66]
push.v self.image_index
pushi.e 10
cmp.i.v EQ
bf [68]

:[67]
push.v self.bluecheckcon
pushi.e 0
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [76]

:[70]
pushi.e 10
pop.v.i self.image_index
pushbltn.v builtin.room
pushi.e 97
cmp.i.v EQ
bf [72]

:[71]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 407
pop.v.v [array]self.flag
pushi.e 1
pop.v.i self.bluecheckcon

:[72]
pushbltn.v builtin.room
pushi.e 103
cmp.i.v EQ
bf [74]

:[73]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 367
pop.v.v [array]self.flag
pushi.e 1
pop.v.i self.bluecheckcon

:[74]
pushbltn.v builtin.room
pushi.e 107
cmp.i.v EQ
bf [76]

:[75]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 420
pop.v.v [array]self.flag
pushi.e 1
pop.v.i self.bluecheckcon

:[76]
push.v self.extflag
pushi.e 5
cmp.i.v EQ
bf [79]

:[77]
pushi.e 41
pop.v.i self.sprite_index
pushi.e 280
conv.i.v
pushi.e 360
conv.i.v
pushi.e 200
conv.i.v
pushi.e 320
conv.i.v
push.v 82.y
pushi.e 36
add.i.v
push.v 82.x
pushi.e 18
add.i.v
call.i point_in_rectangle(argc=6)
conv.v.b
bf [79]

:[78]
pushi.e 1
pop.v.i self.aligned

:[79]
push.v self.extflag
pushi.e 6
cmp.i.v EQ
bf [97]

:[80]
push.v self.align_x
pushi.e 1
cmp.b.v EQ
bf [83]

:[81]
push.v self.x
call.i gml_Script_camerax(argc=0)
cmp.v.v GTE
bf [83]

:[82]
push.v self.x
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
cmp.v.v LTE
b [84]

:[83]
push.e 0

:[84]
bf [87]

:[85]
push.v 82.x
pushi.e 20
add.i.v
push.v self.x
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [87]

:[86]
pushi.e 1
pop.v.i self.aligned

:[87]
push.v self.align_y
pushi.e 1
cmp.b.v EQ
bf [90]

:[88]
push.v self.y
call.i gml_Script_cameray(argc=0)
cmp.v.v GTE
bf [90]

:[89]
push.v self.y
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
cmp.v.v LTE
b [91]

:[90]
push.e 0

:[91]
bf [94]

:[92]
push.v 82.y
pushi.e 20
add.i.v
push.v self.y
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [94]

:[93]
pushi.e 1
pop.v.i self.aligned

:[94]
push.v self.align_distance
pushi.e 1
cmp.b.v EQ
bf [97]

:[95]
pushi.e 82
conv.i.v
call.i distance_to_object(argc=1)
push.v self.align_amount
cmp.v.v LT
bf [97]

:[96]
pushi.e 1
pop.v.i self.aligned

:[97]
push.v self.extflag
pushi.e 7
cmp.i.v EQ
bf [115]

:[98]
push.v self.align_x
pushi.e 1
cmp.b.v EQ
bf [101]

:[99]
push.v self.x
call.i gml_Script_camerax(argc=0)
cmp.v.v GTE
bf [101]

:[100]
push.v self.x
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
cmp.v.v LTE
b [102]

:[101]
push.e 0

:[102]
bf [105]

:[103]
push.v 82.x
pushi.e 20
add.i.v
push.v self.x
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [105]

:[104]
pushi.e 1
pop.v.i self.aligned

:[105]
push.v self.align_y
pushi.e 1
cmp.b.v EQ
bf [108]

:[106]
push.v self.y
call.i gml_Script_cameray(argc=0)
cmp.v.v GTE
bf [108]

:[107]
push.v self.y
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
cmp.v.v LTE
b [109]

:[108]
push.e 0

:[109]
bf [112]

:[110]
push.v 82.y
pushi.e 20
add.i.v
push.v self.y
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [112]

:[111]
pushi.e 1
pop.v.i self.aligned

:[112]
push.v self.align_distance
pushi.e 1
cmp.b.v EQ
bf [115]

:[113]
pushi.e 82
conv.i.v
call.i distance_to_object(argc=1)
push.v self.align_amount
cmp.v.v LT
bf [115]

:[114]
pushi.e 1
pop.v.i self.aligned

:[115]
push.v self.extflag
pushi.e 8
cmp.i.v EQ
bf [117]

:[116]
pushi.e 1
pop.v.i self.aligned

:[117]
push.v self.extflag
pushi.e 10
cmp.i.v EQ
bf [135]

:[118]
push.v self.align_x
pushi.e 1
cmp.b.v EQ
bf [121]

:[119]
push.v self.x
call.i gml_Script_camerax(argc=0)
cmp.v.v GTE
bf [121]

:[120]
push.v self.x
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
cmp.v.v LTE
b [122]

:[121]
push.e 0

:[122]
bf [125]

:[123]
push.v 82.x
pushi.e 20
add.i.v
push.v self.x
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [125]

:[124]
pushi.e 1
pop.v.i self.aligned

:[125]
push.v self.align_y
pushi.e 1
cmp.b.v EQ
bf [128]

:[126]
push.v self.y
call.i gml_Script_cameray(argc=0)
cmp.v.v GTE
bf [128]

:[127]
push.v self.y
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
cmp.v.v LTE
b [129]

:[128]
push.e 0

:[129]
bf [132]

:[130]
push.v 82.y
pushi.e 20
add.i.v
push.v self.y
sub.v.v
call.i abs(argc=1)
push.v self.align_amount
cmp.v.v LTE
bf [132]

:[131]
pushi.e 1
pop.v.i self.aligned

:[132]
push.v self.align_distance
pushi.e 1
cmp.b.v EQ
bf [135]

:[133]
pushi.e 82
conv.i.v
call.i distance_to_object(argc=1)
push.v self.align_amount
cmp.v.v LT
bf [135]

:[134]
pushi.e 1
pop.v.i self.aligned

:[135]
push.v self.extflag
pushi.e 11
cmp.i.v EQ
bf [138]

:[136]
pushi.e 0
conv.i.v
push.v self.id
call.i gml_Script_scr_onscreen_tolerance(argc=2)
conv.v.b
bf [138]

:[137]
pushi.e 1
pop.v.i self.aligned

:[138]
push.v self.extflag
pushi.e 12
cmp.i.v EQ
bf [143]

:[139]
pushi.e -5
pushi.e 366
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [141]

:[140]
pushi.e 1
pop.v.i self.aligned

:[141]
pushi.e 1040
conv.i.v
pushi.e 960
conv.i.v
pushi.e 920
conv.i.v
pushi.e 760
conv.i.v
call.i gml_Script_charaY(argc=0)
call.i gml_Script_charaX(argc=0)
call.i point_in_rectangle(argc=6)
conv.v.b
bf [143]

:[142]
pushi.e 1
pop.v.i self.aligned
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 366
pop.v.v [array]self.flag

:[143]
push.v self.aligned
pushi.e 1
cmp.i.v EQ
bf [145]

:[144]
pushi.e 1
pop.v.i self.visible
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.activecon

:[145]
push.v self.activecon
pushi.e 1
cmp.i.v EQ
bf [217]

:[146]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [149]

:[147]
push.v self.timer
push.v self.timer
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [149]

:[148]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[149]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [152]

:[150]
push.v self.timer
push.v self.timer
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [152]

:[151]
pushi.e 0
pop.v.i self.timer
pushi.e 2
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[152]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [155]

:[153]
push.v self.image_index
pushi.e 9
cmp.i.v EQ
bf [155]

:[154]
pushi.e 1
pop.v.i self.tasquecon
pushi.e 99
pop.v.i self.con

:[155]
push.v self.tasquecon
pushi.e 1
cmp.i.v EQ
bf [194]

:[156]
push.v self.tasquetriggered
pushi.e 0
cmp.i.v EQ
bf [188]

:[157]
pushi.e 1151
pushenv [187]

:[158]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [187]

:[159]
pushbltn.v builtin.room
pushi.e 103
cmp.i.v EQ
bf [181]

:[160]
push.v self.extflag
pushi.e 11
cmp.i.v EQ
bt [162]

:[161]
push.v self.extflag
pushi.e 12
cmp.i.v EQ
b [163]

:[162]
push.e 1

:[163]
bf [171]

:[164]
push.v other.extspawnflag
pushi.e 1
cmp.i.v EQ
bf [170]

:[165]
pushi.e 490
pop.v.i other.tasquex
pushi.e 386
pop.v.i other.tasquey
pushi.e 0
pop.v.i other.tasquedir
push.v self.extflag
pushi.e 11
cmp.i.v EQ
bf [167]

:[166]
pushi.e 0
pop.v.i other.tasquedir

:[167]
push.v self.extflag
pushi.e 12
cmp.i.v EQ
bf [169]

:[168]
pushi.e 1
pop.v.i other.tasquedir

:[169]
pushi.e 1
pop.v.i other.tasquetriggered

:[170]
b [181]

:[171]
push.v self.extflag
pushi.e 21
cmp.i.v EQ
bt [173]

:[172]
push.v self.extflag
pushi.e 22
cmp.i.v EQ
b [174]

:[173]
push.e 1

:[174]
bf [181]

:[175]
push.v other.extspawnflag
pushi.e 2
cmp.i.v EQ
bf [181]

:[176]
pushi.e 588
pop.v.i other.tasquex
pushi.e 586
pop.v.i other.tasquey
push.v self.extflag
pushi.e 21
cmp.i.v EQ
bf [178]

:[177]
pushi.e 0
pop.v.i other.tasquedir

:[178]
push.v self.extflag
pushi.e 22
cmp.i.v EQ
bf [180]

:[179]
pushi.e 1
pop.v.i other.tasquedir

:[180]
pushi.e 1
pop.v.i other.tasquetriggered

:[181]
pushbltn.v builtin.room
pushi.e 91
cmp.i.v EQ
bf [187]

:[182]
pushi.e 746
pop.v.i other.tasquex
pushi.e 980
pop.v.i other.tasquey
pushi.e 0
pop.v.i other.tasquedir
push.v self.extflag
pushi.e 1
cmp.i.v EQ
bf [184]

:[183]
pushi.e 0
pop.v.i other.tasquedir

:[184]
push.v self.extflag
pushi.e 2
cmp.i.v EQ
bf [186]

:[185]
pushi.e 1
pop.v.i other.tasquedir

:[186]
pushi.e 1
pop.v.i other.tasquetriggered

:[187]
popenv [158]

:[188]
push.v self.tasquetriggered
pushi.e 1
cmp.i.v EQ
bf [194]

:[189]
push.s "spawned at x:"@20267
push.v self.tasquex
call.i string(argc=1)
add.v.s
push.s ", y:"@20268
add.s.v
push.v self.tasquey
call.i string(argc=1)
add.v.v
call.i show_debug_message(argc=1)
popz.v
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.tasquetimer
pushi.e 11
pop.v.i self.image_index
pushi.e 1674
conv.i.v
push.v self.y
pushi.e 26
sub.i.v
push.v self.x
pushi.e 32
sub.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.tasquemarker_head
pushi.e 1669
conv.i.v
push.v self.y
pushi.e 26
sub.i.v
push.v self.x
pushi.e 32
sub.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.tasquemarker
pushi.e 0
push.v self.tasquemarker
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.v self.depth
pushi.e 11
sub.i.v
push.v self.tasquemarker_head
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.depth
pushi.e 10
sub.i.v
push.v self.tasquemarker
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 160
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.id
push.v self.tasquemarker
pushi.e -9
pop.v.v [stacktop]self.remid
push.v self.tasquemarker
pushi.e -9
pushenv [191]

:[190]
pushi.e 24
conv.i.v
pushi.e 15
conv.i.v
push.v other.tasquey
push.v other.tasquex
call.i gml_Script_scr_jump_to_point(argc=4)
pop.v.v self.remjump
push.v self.remjump
push.v self.remid
pushi.e -9
pop.v.v [stacktop]self.remjump

:[191]
popenv [190]
push.v self.tasquemarker_head
pushi.e -9
pushenv [193]

:[192]
pushi.e 24
conv.i.v
pushi.e 15
conv.i.v
push.v other.tasquey
push.v other.tasquex
call.i gml_Script_scr_jump_to_point(argc=4)
popz.v

:[193]
popenv [192]
pushi.e 0
push.v self.remjump
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 2
pop.v.i self.tasquecon

:[194]
push.v self.tasquecon
pushi.e 2
cmp.i.v EQ
bf [203]

:[195]
push.v self.tasquetimer
pushi.e 12
cmp.i.v LTE
bf [197]

:[196]
push.v self.image_xscale
pushi.e 1
pushi.e 1
conv.i.d
push.v self.tasquetimer
pushi.e 1
add.i.v
div.v.d
push.d 0.25
mul.d.v
add.v.i
mul.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
pushi.e 1
pushi.e 1
conv.i.d
push.v self.tasquetimer
pushi.e 1
add.i.v
div.v.d
push.d 0.25
mul.d.v
add.v.i
mul.v.v
pop.v.v self.image_yscale

:[197]
push.v self.tasquetimer
pushi.e 12
cmp.i.v GT
bf [199]

:[198]
push.v self.image_xscale
push.d 0.6
mul.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.6
mul.d.v
pop.v.v self.image_yscale

:[199]
push.v self.remjump
pushi.e -9
pushenv [201]

:[200]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha

:[201]
popenv [200]
push.v self.tasquetimer
push.e 1
add.i.v
pop.v.v self.tasquetimer
push.v self.tasquetimer
pushi.e 24
cmp.i.v GTE
bf [203]

:[202]
pushi.e 3
pop.v.i self.tasquecon

:[203]
push.v self.tasquecon
pushi.e 3
cmp.i.v EQ
bf [212]

:[204]
pushi.e 240
conv.i.v
push.v self.tasquemarker
pushi.e -9
push.v [stacktop]self.y
push.v self.tasquemarker
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.tenemy
pushi.e 1669
push.v self.tenemy
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.tasquedir
pushi.e 0
cmp.i.v EQ
bf [206]

:[205]
pushi.e 21
push.v self.tenemy
pushi.e -9
pop.v.i [stacktop]self.pacetype
b [207]

:[206]
pushi.e 22
push.v self.tenemy
pushi.e -9
pop.v.i [stacktop]self.pacetype

:[207]
pushi.e -1
push.v self.tenemy
pushi.e -9
pop.v.i [stacktop]self.chasetype
push.v self.tasquespeed
push.v self.tenemy
pushi.e -9
pop.v.v [stacktop]self.pacespeed
pushi.e 1
push.v self.tenemy
pushi.e -9
pop.v.i [stacktop]self.eraser
push.v self.tasquedir
push.v self.tenemy
pushi.e -9
pop.v.v [stacktop]self.facing
push.v self.tasquemarker
pushi.e -9
pushenv [209]

:[208]
call.i instance_destroy(argc=0)
popz.v

:[209]
popenv [208]
push.v self.tasquemarker_head
pushi.e -9
pushenv [211]

:[210]
call.i instance_destroy(argc=0)
popz.v

:[211]
popenv [210]
pushi.e 4
pop.v.i self.tasquecon

:[212]
push.v self.dismiss
pushi.e 1
cmp.i.v EQ
bf [214]

:[213]
pushi.e 0
pop.v.i self.timer
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.dismiss

:[214]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [217]

:[215]
push.v self.timer
push.v self.timer
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [217]

:[216]
call.i instance_destroy(argc=0)
popz.v

:[217]
push.v self.extflag
pushi.e 3
cmp.i.v EQ
bf [219]

:[218]
pushbltn.v builtin.room
pushi.e 95
cmp.i.v EQ
b [220]

:[219]
push.e 0

:[220]
bf [226]

:[221]
push.d 58.5
pop.v.d self.bpf
push.v self.count
push.v self.bpf
add.v.v
pop.v.v self.count
push.v self.count
push.v self.bpf
pushi.e 6
mul.i.v
cmp.v.v GT
bf [226]

:[222]
push.v self.image_index
pushi.e 22
cmp.i.v EQ
bf [224]

:[223]
pushi.e 23
pop.v.i self.image_index
b [225]

:[224]
pushi.e 22
pop.v.i self.image_index

:[225]
pushi.e 0
pop.v.i self.count

:[226]
push.v self.extflag
pushi.e 7
cmp.i.v EQ
bf [232]

:[227]
push.d 58.5
pop.v.d self.bpf
push.v self.count
push.v self.bpf
add.v.v
pop.v.v self.count
push.v self.count
push.v self.bpf
pushi.e 6
mul.i.v
cmp.v.v GT
bf [232]

:[228]
push.v self.image_index
pushi.e 27
cmp.i.v EQ
bf [230]

:[229]
pushi.e 31
pop.v.i self.image_index
b [231]

:[230]
pushi.e 27
pop.v.i self.image_index

:[231]
pushi.e 0
pop.v.i self.count

:[232]
push.v self.bluecheckcon
pushi.e 1
cmp.i.v EQ
bf [234]

:[233]
pushi.e 1
pop.v.i self.visible
pushi.e 0
pop.v.i self.con
push.v self.bluecheckcon
push.e 1
add.i.v
pop.v.v self.bluecheckcon

:[234]
push.v self.bluecheckcon
pushi.e 2
cmp.i.v EQ
bf [241]

:[235]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [238]

:[236]
push.v self.timer
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 30
conv.i.d
div.d.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [238]

:[237]
pushi.e 58
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[238]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [241]

:[239]
push.v self.timer
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
pushi.e 1
add.i.v
add.v.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i lerp(argc=3)
pop.v.v self.image_yscale
push.v self.timer
pushi.e 15
cmp.i.v GTE
bf [241]

:[240]
pushi.e 0
pop.v.i self.timer
pushi.e 2
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
call.i gml_Script_scr_afterimage_grow(argc=0)
pop.v.v self.flash
push.v self.depth
pushi.e 1
sub.i.v
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.bluecheckcon
push.e 1
add.i.v
pop.v.v self.bluecheckcon
pushi.e 0
pop.v.i self.timer

:[241]
push.v self.bluecheckcon
pushi.e 3
cmp.i.v EQ
bf [end]

:[242]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 15
cmp.i.v GT
bf [245]

:[243]
push.v self.vspeed
push.d 0.25
sub.d.v
pop.v.v self.vspeed
push.v self.image_xscale
push.d 0.9
mul.d.v
pop.v.v self.image_xscale
push.v self.timer
pushi.e 4
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [245]

:[244]
call.i gml_Script_scr_afterimage(argc=0)
popz.v

:[245]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 120
sub.i.v
cmp.v.v LT
bf [end]

:[246]
call.i instance_destroy(argc=0)
popz.v

:[end]