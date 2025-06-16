.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.toggle
push.v self.ignoreHardWork
conv.v.b
not.b
bf [8]

:[1]
pushi.e 1281
pushenv [7]

:[2]
push.v self.toggle
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i other.toggle
pushi.e 1
pop.v.i other.bothToggled

:[4]
push.v self.toggle
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i other.bothToggled

:[6]
pushi.e 0
pop.v.i other.toggledtimer

:[7]
popenv [2]

:[8]
push.v self.ignoreHardWork
conv.v.b
not.b
bf [17]

:[9]
push.v self.toggle
pushi.e 1
cmp.i.v EQ
bf [15]

:[10]
pushi.e 1
pop.v.i self.hasToggled
push.v self.forcefield
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [14]

:[11]
push.v self.forcefield
pushi.e -9
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]

:[14]
b [17]

:[15]
push.v self.forcefield
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [17]

:[16]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1040
conv.i.v
pushi.e 680
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
pop.v.v self.forcefield

:[17]
push.v self.toggledtimer
push.e 1
add.i.v
pop.v.v self.toggledtimer
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.hasToggled
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [37]

:[21]
push.v self.toggle
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.i self.timer

:[23]
push.v self.toggle
pushi.e 0
cmp.i.v EQ
bf [28]

:[24]
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [28]

:[25]
push.v self.toggledtimer
pushi.e 90
cmp.i.v LT
bf [28]

:[26]
push.v 82.x
pushi.e 386
cmp.i.v GTE
bf [28]

:[27]
push.v 82.y
pushi.e 1024
cmp.i.v GT
b [29]

:[28]
push.e 0

:[29]
bf [37]

:[30]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [32]

:[31]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 1
pop.v.b self.weirdRoute
b [36]

:[35]
pushi.e 0
pop.v.b self.weirdRoute

:[36]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[37]
push.v self.weirdRoute
pushi.e 0
cmp.b.v EQ
bf [223]

:[38]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 1
pop.v.i global.interact
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_59_0"@37786
conv.s.v
push.s "\\E1* Hmm^1, looks like you need to hold it down./%"@37787
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[43]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [46]

:[44]
push.v self.d
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [46]

:[45]
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[46]
push.v self.con
pushi.e 101
cmp.i.v EQ
bf [49]

:[47]
push.v self.d
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [49]

:[48]
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[49]
push.v self.con
pushi.e 102
cmp.i.v EQ
bf [60]

:[50]
pushi.e 1024
pop.v.i 82.y
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
push.v self.noelleWaiting
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
pushi.e 3
pop.v.i self.con

:[52]
push.v self.noelleWaiting
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
pushi.e 10
pop.v.i self.con

:[54]
push.v self.noelleWaiting
pushi.e 2
cmp.i.v EQ
bf [56]

:[55]
pushi.e 55
pop.v.i self.con

:[56]
push.v self.noelleWaiting
pushi.e 3
cmp.i.v EQ
bf [58]

:[57]
pushi.e 71
pop.v.i self.con

:[58]
push.v self.noelleWaiting
pushi.e 6
cmp.i.v EQ
bf [60]

:[59]
pushi.e 58
pop.v.i self.con

:[60]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [66]

:[61]
push.v 82.y
pushi.e 1000
cmp.i.v LT
bf [63]

:[62]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
b [64]

:[63]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag

:[64]
push.v self.toggle
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[66]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_120_0"@37788
conv.s.v
push.s "\\E0* Kris^1, you keep standing on this one!/%"@37789
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[68]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [71]

:[69]
push.v self.d
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [71]

:[70]
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[71]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [73]

:[72]
pushi.e 129
conv.i.v
push.v 276.y
push.v 276.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.noellePuzzle
pushi.e 724
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.25
push.v self.noellePuzzle
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.y
push.v self.noellePuzzle
pushi.e -9
pop.v.v [stacktop]self.starty
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.x
push.v self.noellePuzzle
pushi.e -9
pop.v.v [stacktop]self.startx
push.v 276.depth
push.v self.noellePuzzle
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.b 276.visible
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[73]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [106]

:[74]
push.v self.toggle
pushi.e 1
cmp.i.v EQ
bf [104]

:[75]
push.v self.noellePuzzle
pushi.e -9
pushenv [99]

:[76]
push.v self.starty
pushi.e 1064
cmp.i.v GT
bf [80]

:[77]
push.v self.y
pushi.e 1064
cmp.i.v GT
bf [79]

:[78]
push.v self.y
pushi.e 2
sub.i.v
pop.v.v self.y
push.d 0.25
pop.v.d self.image_speed
pushi.e 728
pop.v.i self.sprite_index
b [80]

:[79]
pushi.e 0
pop.v.i self.image_speed
pushi.e 1064
pop.v.i self.y
pushi.e 1064
pop.v.i self.starty

:[80]
push.v self.starty
pushi.e 1064
cmp.i.v LT
bf [84]

:[81]
push.v self.y
pushi.e 1064
cmp.i.v LT
bf [83]

:[82]
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.y
push.d 0.25
pop.v.d self.image_speed
pushi.e 718
pop.v.i self.sprite_index
b [84]

:[83]
pushi.e 0
pop.v.i self.image_speed
pushi.e 1064
pop.v.i self.y
pushi.e 1064
pop.v.i self.starty

:[84]
push.v self.starty
pushi.e 1064
cmp.i.v EQ
bf [86]

:[85]
push.v self.startx
pushi.e 758
cmp.i.v LT
b [87]

:[86]
push.e 0

:[87]
bf [91]

:[88]
push.v self.x
pushi.e 758
cmp.i.v LT
bf [90]

:[89]
push.d 0.25
pop.v.d self.image_speed
pushi.e 724
pop.v.i self.sprite_index
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.x
b [91]

:[90]
pushi.e 0
pop.v.i self.image_speed
pushi.e 758
pop.v.i self.x
pushi.e 758
pop.v.i self.startx

:[91]
push.v self.starty
pushi.e 1064
cmp.i.v EQ
bf [93]

:[92]
push.v self.startx
pushi.e 758
cmp.i.v GT
b [94]

:[93]
push.e 0

:[94]
bf [98]

:[95]
push.v self.x
pushi.e 758
cmp.i.v GT
bf [97]

:[96]
push.d 0.25
pop.v.d self.image_speed
pushi.e 719
pop.v.i self.sprite_index
push.v self.x
pushi.e 2
sub.i.v
pop.v.v self.x
b [98]

:[97]
pushi.e 0
pop.v.i self.image_speed
pushi.e 758
pop.v.i self.x
pushi.e 758
pop.v.i self.startx

:[98]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[99]
popenv [76]
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.x
pushi.e 758
cmp.i.v EQ
bf [101]

:[100]
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.y
pushi.e 1064
cmp.i.v EQ
b [102]

:[101]
push.e 0

:[102]
bf [104]

:[103]
pushi.e 719
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 8
pop.v.i self.con

:[104]
push.v self.toggle
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.x
push.v self.noellePuzzle
pushi.e -9
pop.v.v [stacktop]self.startx
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.y
push.v self.noellePuzzle
pushi.e -9
pop.v.v [stacktop]self.starty
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 20
pop.v.i self.con

:[106]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [109]

:[107]
pushi.e 1
pop.v.i global.interact
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_249_0"@37790
conv.s.v
push.s "\\E0* OK^1, now you come over here!/%"@37791
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
push.v self.con
push.e 1
add.i.v
pop.v.v self.con
push.v self.revengeNoelle
conv.v.b
bf [109]

:[108]
pushi.e 54
pop.v.i self.con

:[109]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [112]

:[110]
push.v self.d
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [112]

:[111]
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[112]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [117]

:[113]
pushi.e 1
pop.v.i self.noelleWaiting
push.v 82.y
pushi.e 1020
cmp.i.v LTE
bf [115]

:[114]
pushi.e 1
pop.v.i global.interact
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_270_0"@37792
conv.s.v
push.s "\\E8* Kris^1! Get back here!!/%"@37793
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 101
pop.v.i self.con

:[115]
push.v 82.x
pushi.e 698
cmp.i.v GTE
bf [117]

:[116]
pushi.e 1
pop.v.i global.interact
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_280_0"@37794
conv.s.v
push.s "\\E4* Nice teamwork!/%"@37795
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 11
pop.v.i self.con

:[117]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [119]

:[118]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [120]

:[119]
push.e 0

:[120]
bf [128]

:[121]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [123]

:[122]
call.i gml_Script_scr_sideb_fail(argc=0)
popz.v

:[123]
pushi.e 276
pushenv [125]

:[124]
push.v other.noellePuzzle
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
push.v other.noellePuzzle
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y
pushi.e 0
push.v other.noellePuzzle
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 1
pop.v.b self.visible
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[125]
popenv [124]
push.v self.noellePuzzle
pushi.e -9
pushenv [127]

:[126]
call.i instance_destroy(argc=0)
popz.v

:[127]
popenv [126]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[128]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [133]

:[129]
pushi.e 1
pop.v.i global.interact
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.x
pushi.e 650
cmp.i.v LTE
bf [131]

:[130]
pushi.e 21
pop.v.i self.con
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.x
push.v self.noellePuzzle
pushi.e -9
pop.v.v [stacktop]self.startx

:[131]
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.x
pushi.e 650
cmp.i.v GT
bf [133]

:[132]
pushi.e 50
pop.v.i self.con

:[133]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [146]

:[134]
push.v self.noellePuzzle
pushi.e -9
pushenv [145]

:[135]
push.v self.startx
pushi.e 560
cmp.i.v GT
bf [139]

:[136]
push.v self.x
pushi.e 560
cmp.i.v GT
bf [138]

:[137]
push.v self.x
pushi.e 8
sub.i.v
pop.v.v self.x
pushi.e 719
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
b [139]

:[138]
pushi.e 0
pop.v.i self.image_speed
pushi.e 560
pop.v.i self.x
pushi.e 560
pop.v.i self.startx

:[139]
push.v self.startx
pushi.e 560
cmp.i.v LT
bf [143]

:[140]
push.v self.x
pushi.e 560
cmp.i.v LT
bf [142]

:[141]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x
pushi.e 724
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
b [143]

:[142]
pushi.e 0
pop.v.i self.image_speed
pushi.e 560
pop.v.i self.x
pushi.e 560
pop.v.i self.startx

:[143]
push.v self.x
pushi.e 560
cmp.i.v EQ
bf [145]

:[144]
pushi.e 719
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
push.v other.con
push.e 1
add.i.v
pop.v.v other.con

:[145]
popenv [135]

:[146]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [154]

:[147]
push.v self.failurecount
push.e 1
add.i.v
pop.v.v self.failurecount
push.v self.failurecount
pushi.e 1
cmp.i.v EQ
bf [149]

:[148]
pushi.e 1
pop.v.i global.facing
pushi.e 1161
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 70
pop.v.i self.con

:[149]
push.v self.failurecount
pushi.e 2
cmp.i.v EQ
bf [151]

:[150]
pushi.e 1
pop.v.i global.facing
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_393_0"@37796
conv.s.v
push.s "\\E8* (This is reminding me of our group projects...)/%"@37797
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 70
pop.v.i self.con

:[151]
push.v self.failurecount
pushi.e 2
cmp.i.v GT
bf [154]

:[152]
pushi.e 1
pop.v.i global.facing
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_401_0"@37798
conv.s.v
push.s "\\E8* .../%"@34549
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 70
pop.v.i self.con
push.v self.revengeNoelle
pushi.e 0
cmp.i.v EQ
bf [154]

:[153]
pushi.e 1
pop.v.i self.revengeNoelle

:[154]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [166]

:[155]
push.v self.noellePuzzle
pushi.e -9
pushenv [157]

:[156]
pushi.e 8
conv.i.v
pushi.e 1064
conv.i.v
pushi.e 718
conv.i.v
call.i move_towards_point(argc=3)
popz.v
push.d 0.25
pop.v.d self.image_speed
pushi.e 1542
pop.v.i self.sprite_index

:[157]
popenv [156]
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.x
pushi.e 708
cmp.i.v GT
bf [159]

:[158]
pushi.e 718
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.x
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.hspeed

:[159]
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.y
pushi.e 1064
cmp.i.v GT
bf [161]

:[160]
pushi.e 1064
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.y
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.vspeed

:[161]
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.x
pushi.e 718
cmp.i.v EQ
bf [163]

:[162]
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.y
pushi.e 1064
cmp.i.v EQ
b [164]

:[163]
push.e 0

:[164]
bf [166]

:[165]
pushi.e 1542
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_429_0"@37799
conv.s.v
push.s "\\EE* A--aahhh!!/"@37800
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_430_0"@37801
conv.s.v
push.s "\\E8* K..^1. Kris^1! C'mon^1, you..^1. you know that isn't very nice!/"@37802
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_431_0"@37803
conv.s.v
push.s "\\E8* (I was almost roast deer for a second there...)/%"@37804
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[166]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [169]

:[167]
push.v self.d
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [169]

:[168]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[169]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [176]

:[170]
push.v self.noellePuzzle
pushi.e -9
pushenv [174]

:[171]
push.v self.x
pushi.e 758
cmp.i.v LT
bf [173]

:[172]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x
b [174]

:[173]
pushi.e 758
pop.v.i self.x

:[174]
popenv [171]
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.x
pushi.e 758
cmp.i.v EQ
bf [176]

:[175]
pushi.e 719
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[176]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [178]

:[177]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_471_0"@37805
conv.s.v
push.s "\\E8* Alright^1, now it's your turn!/%"@37806
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 1
pop.v.i self.noelleWaiting
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[178]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [181]

:[179]
push.v self.d
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [181]

:[180]
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[181]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [186]

:[182]
pushi.e 2
pop.v.i self.noelleWaiting
push.v 82.y
pushi.e 1020
cmp.i.v LTE
bf [184]

:[183]
pushi.e 1
pop.v.i global.interact
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_495_0"@37807
conv.s.v
push.s "\\E8* Kris^1! Get back here!!/%"@37793
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 101
pop.v.i self.con

:[184]
push.v 82.x
pushi.e 590
cmp.i.v GTE
bf [186]

:[185]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[186]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [196]

:[187]
push.v self.noellePuzzle
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [196]

:[188]
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.x
pushi.e 798
cmp.i.v LTE
bf [190]

:[189]
push.v self.noellePuzzle
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 12
add.i.v
pop.i.v [stacktop]self.x
pushi.e 1
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.image_index
b [196]

:[190]
push.v self.noellePuzzle
pushi.e -9
pushenv [192]

:[191]
pushi.e 798
pop.v.i self.x
pushi.e 731
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[192]
popenv [191]
pushi.e 1
pop.v.i self.ignoreHardWork
pushi.e 240
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1040
conv.i.v
pushi.e 680
conv.i.v
call.i gml_Script_scr_forcefield(argc=6)
pop.v.v self.field
pushi.e 1281
pushenv [195]

:[193]
push.v self.x
pushi.e 600
cmp.i.v GT
bf [195]

:[194]
pushi.e 1
pop.v.i self.toggle

:[195]
popenv [193]
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[196]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [210]

:[197]
push.v 82.x
pushi.e 420
cmp.i.v LTE
bf [199]

:[198]
pushi.e 61
pop.v.i self.timer

:[199]
push.v self.timer
pushi.e 60
cmp.i.v GT
bf [210]

:[200]
push.v self.noellePuzzle
pushi.e -9
pushenv [209]

:[201]
push.v self.x
pushi.e 760
cmp.i.v GT
bf [203]

:[202]
push.v self.x
pushi.e 8
sub.i.v
pop.v.v self.x
b [209]

:[203]
pushi.e 0
pop.v.i other.ignoreHardWork
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1281
pushenv [206]

:[204]
push.v self.x
pushi.e 600
cmp.i.v GT
bf [206]

:[205]
pushi.e 0
pop.v.i self.toggle

:[206]
popenv [204]
pushi.e 287
pushenv [208]

:[207]
call.i instance_destroy(argc=0)
popz.v

:[208]
popenv [207]
pushi.e 758
pop.v.i self.x
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
push.v other.con
push.e 1
add.i.v
pop.v.v other.con

:[209]
popenv [201]

:[210]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [215]

:[211]
pushi.e 6
pop.v.i self.noelleWaiting
push.v 82.y
pushi.e 1020
cmp.i.v LTE
bf [213]

:[212]
pushi.e 1
pop.v.i global.interact
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_563_0"@37808
conv.s.v
push.s "\\E8* Kris^1! Get back here!!/%"@37793
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 101
pop.v.i self.con

:[213]
push.v 82.x
pushi.e 698
cmp.i.v GTE
bf [215]

:[214]
pushi.e 1
pop.v.i global.interact
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_572_0"@37809
conv.s.v
push.s "\\E8* Fahahaha^1! How'd you like that!?/"@37810
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_573_0"@37811
conv.s.v
push.s "\\E8* You should have seen the look on your face!!/"@37812
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_574_0"@37813
conv.s.v
push.s "\\E2* (Hey^1, why do they look so hurt...? Gosh...)/%"@37814
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 11
pop.v.i self.con

:[215]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [218]

:[216]
push.v self.d
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [218]

:[217]
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[218]
push.v self.con
pushi.e 71
cmp.i.v EQ
bf [223]

:[219]
pushi.e 3
pop.v.i self.noelleWaiting
push.v 82.y
pushi.e 1020
cmp.i.v LTE
bf [221]

:[220]
pushi.e 1
pop.v.i global.interact
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_600_0"@37815
conv.s.v
push.s "\\E8* Kris^1! Get back here!!/%"@37793
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 101
pop.v.i self.con

:[221]
push.v self.toggle
pushi.e 1
cmp.i.v EQ
bf [223]

:[222]
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.y
push.v self.noellePuzzle
pushi.e -9
pop.v.v [stacktop]self.starty
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.x
push.v self.noellePuzzle
pushi.e -9
pop.v.v [stacktop]self.startx
pushi.e 7
pop.v.i self.con

:[223]
push.v self.weirdRoute
pushi.e 1
cmp.b.v EQ
bf [316]

:[224]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [226]

:[225]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [227]

:[226]
push.e 0

:[227]
bf [229]

:[228]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 1
pop.v.i global.interact
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_622_0"@37816
conv.s.v
push.s "\\E1* When you step off the switch^1, the lightning comes back.../"@37817
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_623_0"@37818
conv.s.v
push.s "\\E5* .../"@2857
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_624_0"@37819
conv.s.v
push.s "\\E4* How about..^1. I hold it down^1, and you go across?/%"@37820
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[229]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [232]

:[230]
push.v self.d
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [232]

:[231]
pushi.e 129
conv.i.v
push.v 276.y
push.v 276.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.noellePuzzle
pushi.e 2
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v 276.sprite_index
push.v self.noellePuzzle
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
pop.v.b 276.visible
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[232]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [242]

:[233]
push.v self.noellePuzzle
pushi.e -9
pushenv [241]

:[234]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 476
pop.v.i self.targX
pushi.e 1054
pop.v.i self.targY
push.v self.x
push.v self.targX
cmp.v.v GT
bf [236]

:[235]
pushi.e 719
pop.v.i self.sprite_index

:[236]
push.v self.x
push.v self.targX
cmp.v.v LT
bf [238]

:[237]
pushi.e 724
pop.v.i self.sprite_index

:[238]
push.v self.targY
push.v self.y
push.v self.bbox_top
sub.v.v
sub.v.v
push.v self.targX
push.v self.x
push.v self.bbox_left
sub.v.v
sub.v.v
call.i distance_to_point(argc=2)
push.d 2.1
cmp.d.v GT
bf [240]

:[239]
pushi.e 4
conv.i.v
push.v self.targY
push.v self.targX
call.i move_towards_point(argc=3)
popz.v
push.d 0.25
pop.v.d self.image_speed
b [241]

:[240]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 724
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.speed
push.v self.targX
pop.v.v self.x
push.v self.targY
pop.v.v self.y
pushi.e 0
pop.v.i self.image_speed
push.v other.con
push.e 1
add.i.v
pop.v.v other.con

:[241]
popenv [234]

:[242]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [244]

:[243]
pushi.e 133
conv.i.v
pushi.e 1120
conv.i.v
pushi.e 480
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.noelleWaitCheck
pushi.e 2
push.v self.noelleWaitCheck
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.noelleWaitCheck
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.s "weird"@14299
push.v self.noelleWaitCheck
pushi.e -9
pop.v.s [stacktop]self.extflag
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[244]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [249]

:[245]
push.v 82.y
pushi.e 1020
cmp.i.v LTE
bf [247]

:[246]
pushi.e 1
pop.v.i global.interact
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_693_0"@37823
conv.s.v
push.s "* (Shouldn't leave now.)/%"@37824
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 6
pop.v.i self.con

:[247]
push.v 82.x
pushi.e 666
cmp.i.v GTE
bf [249]

:[248]
pushi.e 0
pop.v.i self.timer
pushi.e 9
pop.v.i self.con

:[249]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [252]

:[250]
push.v self.d
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [252]

:[251]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[252]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [257]

:[253]
pushi.e 1022
pop.v.i 82.y
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
push.v self.fakeStep
pushi.e 0
cmp.i.v EQ
bf [255]

:[254]
pushi.e 5
pop.v.i self.con

:[255]
push.v self.fakeStep
pushi.e 1
cmp.i.v EQ
bf [257]

:[256]
pushi.e 10
pop.v.i self.con

:[257]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [265]

:[258]
push.d 0.25
push.v self.noellePuzzle
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.timer
pushi.e 15
cmp.i.v EQ
bt [260]

:[259]
push.v self.bothToggled
pushi.e 1
cmp.i.v EQ
b [261]

:[260]
push.e 1

:[261]
bf [265]

:[262]
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 1
pop.v.i self.fakeStep
push.v self.bothToggled
pushi.e 1
cmp.i.v EQ
bf [264]

:[263]
pushi.e 0
pop.v.i self.timer
pushi.e 11
pop.v.i self.con
b [265]

:[264]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[265]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [272]

:[266]
push.v 82.y
pushi.e 1020
cmp.i.v LTE
bf [268]

:[267]
pushi.e 1
pop.v.i global.interact
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_739_0"@37825
conv.s.v
push.s "* (Shouldn't leave now.)/%"@37824
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 6
pop.v.i self.con

:[268]
push.v 82.x
pushi.e 880
cmp.i.v GT
bf [270]

:[269]
pushi.e 1
pop.v.i global.interact
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_749_0"@37826
conv.s.v
push.s "* (Shouldn't leave now.)/%"@37824
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 20
pop.v.i self.con

:[270]
push.v self.bothToggled
pushi.e 1
cmp.i.v EQ
bf [272]

:[271]
pushi.e 0
pop.v.i self.timer
pushi.e 11
pop.v.i self.con

:[272]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [279]

:[273]
push.v self.noellePuzzle
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [275]

:[274]
pushi.e 724
push.v self.noellePuzzle
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[275]
pushi.e 1
pop.v.i global.interact
push.v self.timer
pushi.e 15
cmp.i.v GT
bf [279]

:[276]
pushi.e 3
pop.v.i global.facing
push.v self.noelleWaitCheck
pushi.e -9
pushenv [278]

:[277]
call.i instance_destroy(argc=0)
popz.v

:[278]
popenv [277]
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[279]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [293]

:[280]
push.v 82.x
pushi.e 80
sub.i.v
pop.v.v self.newtargx
push.v 82.y
pushi.e 18
sub.i.v
pop.v.v self.newtargy
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [284]

:[281]
push.v self.noellePuzzle
pushi.e -9
pushenv [283]

:[282]
pushi.e 724
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 32
conv.i.v
push.v other.newtargy
push.v other.newtargx
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[283]
popenv [282]

:[284]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.x
push.v self.newtargx
cmp.v.v EQ
bf [286]

:[285]
push.v self.noellePuzzle
pushi.e -9
push.v [stacktop]self.y
push.v self.newtargy
cmp.v.v EQ
b [287]

:[286]
push.e 0

:[287]
bf [293]

:[288]
push.v self.newtargx
pop.v.v 276.x
push.v self.newtargy
pop.v.v 276.y
pushi.e 1
pop.v.b 276.visible
pushi.e 276
pushenv [290]

:[289]
pushi.e 1
conv.i.v
call.i gml_Script_scr_caterpillar_facing(argc=1)
popz.v

:[290]
popenv [289]
pushi.e 276
pushenv [292]

:[291]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[292]
popenv [291]
pushi.e 0
push.v self.noellePuzzle
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 13
pop.v.i self.con

:[293]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [295]

:[294]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dw_city_big_2_slash_Step_0_gml_843_0"@37829
conv.s.v
push.s "\\E8* N..^1. Nice teamwork!/%"@37830
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.d 13.5
pop.v.d self.con

:[295]
push.v self.con
push.d 13.5
cmp.d.v EQ
bf [297]

:[296]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [298]

:[297]
push.e 0

:[298]
bf [300]

:[299]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact
push.d 13.6
pop.v.d self.con

:[300]
push.v self.con
push.d 13.6
cmp.d.v EQ
bf [306]

:[301]
push.v 82.x
pushi.e 1000
cmp.i.v GT
bt [303]

:[302]
push.v 82.x
pushi.e 420
cmp.i.v LT
b [304]

:[303]
push.e 1

:[304]
bf [306]

:[305]
pushi.e 1
pop.v.i global.interact
pushi.e 1163
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 14
pop.v.i self.con

:[306]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [308]

:[307]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [309]

:[308]
push.e 0

:[309]
bf [311]

:[310]
pushi.e 197
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 915
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[311]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [314]

:[312]
push.v self.d
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [314]

:[313]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[314]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [316]

:[315]
pushi.e 876
pop.v.i 82.x
pushi.e 3
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 10
pop.v.i self.con

:[316]
push.v self.weird_prompt
conv.v.b
bf [318]

:[317]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [319]

:[318]
push.e 0

:[319]
bf [321]

:[320]
pushi.e 0
pop.v.b self.weird_prompt
pushi.e 3
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact
pushi.e 1193
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[321]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [end]

:[322]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [end]

:[323]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [325]

:[324]
pushi.e 3
pop.v.i self.onebuffer

:[325]
popenv [324]

:[end]