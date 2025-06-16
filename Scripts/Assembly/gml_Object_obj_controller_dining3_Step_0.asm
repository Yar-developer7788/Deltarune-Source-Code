.localvar 2 arguments
.localvar 107 i 19003
.localvar 11611 ii 19004
.localvar 21718 dist 19008
.localvar 34400 targy 19009

:[0]
push.v self.weird
pushi.e 1
cmp.b.v EQ
bf [4]

:[1]
pushi.e 1
conv.i.v
push.s "TILES_Doorway"@37638
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
push.v self.blocker
pushi.e -9
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.dogcon
pushi.e 0
cmp.i.v EQ
bf [162]

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
conv.i.v
push.s "TILES_BlockedEntrance"@37639
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1149
conv.i.v
pushi.e 1360
conv.i.v
pushi.e 600
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.entranceblock
pushi.e 2
push.v self.entranceblock
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.queen_monitor
pushi.e -9
pop.v.i [stacktop]self.turnon
pushi.e 1
push.v self.queen_monitor2
pushi.e -9
pop.v.i [stacktop]self.turnon
pushi.e 1
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dining3_slash_Step_0_gml_19_0"@37649
conv.s.v
push.s "\\E1* Welcome To My Extravagant Dining Bonanza/%"@37650
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.d 2.5
pop.v.d self.con
pushi.e 0
pop.v.i self.timer

:[15]
push.v self.con
push.d 2.5
cmp.d.v EQ
bf [17]

:[16]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [18]

:[17]
push.e 0

:[18]
bf [49]

:[19]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [47]

:[20]
pushi.e 0
pop.v.i local.i

:[21]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [41]

:[22]
pushi.e 0
pop.v.i local.ii

:[23]
pushloc.v local.ii
pushi.e 5
cmp.i.v LT
bf [40]

:[24]
pushloc.v local.ii
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushloc.v local.i
pushi.e 2
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
not.b
bf [36]

:[28]
pushloc.v local.ii
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushloc.v local.i
pushi.e 3
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
not.b
bf [36]

:[32]
pushloc.v local.ii
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
pushloc.v local.i
pushi.e 4
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
not.b
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 269
conv.i.v
pushi.e 240
pushloc.v local.ii
pushi.e 240
mul.i.v
add.v.i
pushi.e 109
pushloc.v local.i
pushi.e 160
mul.i.v
add.v.i
call.i gml_Script_instance_create(argc=3)
popz.v

:[39]
push.v local.ii
push.e 1
add.i.v
pop.v.v local.ii
b [23]

:[40]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [21]

:[41]
pushi.e 0
pop.v.i local.i

:[42]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [47]

:[43]
pushi.e 0
pop.v.i local.ii

:[44]
pushloc.v local.ii
pushi.e 4
cmp.i.v LT
bf [46]

:[45]
pushi.e 269
conv.i.v
pushi.e 360
pushloc.v local.ii
pushi.e 240
mul.i.v
add.v.i
pushi.e 189
pushloc.v local.i
pushi.e 160
mul.i.v
add.v.i
call.i gml_Script_instance_create(argc=3)
popz.v
push.v local.ii
push.e 1
add.i.v
pop.v.v local.ii
b [44]

:[46]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [42]

:[47]
pushi.e 260
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [49]

:[48]
push.d 2.9
pop.v.d other.con
pushi.e 0
pop.v.i self.timer

:[49]
push.v self.con
push.d 2.9
cmp.d.v EQ
bf [51]

:[50]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [52]

:[51]
push.e 0

:[52]
bf [59]

:[53]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[55]
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[57]
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [59]

:[58]
pushi.e 3
pop.v.i self.con

:[59]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [61]

:[60]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [62]

:[61]
push.e 0

:[62]
bf [64]

:[63]
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dining3_slash_Step_0_gml_72_0"@37651
conv.s.v
push.s "\\ED* Only One Of These Delicious Platters Has The Key/"@37652
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_dining3_slash_Step_0_gml_73_0"@37653
conv.s.v
push.s "\\E1* I Am Sure Searching Will Be An Addicting Game of Chance/%"@37654
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[64]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [66]

:[65]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 1
push.v self.queen_monitor
pushi.e -9
pop.v.i [stacktop]self.turnoff
pushi.e 1
push.v self.queen_monitor2
pushi.e -9
pop.v.i [stacktop]self.turnoff
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dining3_slash_Step_0_gml_82_0"@37655
conv.s.v
push.s "\\EH* H-how the hell are we gonna search all these!?/%"@37656
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[69]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [71]

:[70]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.dogSpawned
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[74]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [76]

:[75]
push.v self.checkCount
pushi.e 3
cmp.i.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [79]

:[78]
pushi.e 1
pop.v.i global.interact
pushi.e 1
push.v self.queen_monitor
pushi.e -9
pop.v.i [stacktop]self.turnon
pushi.e 1
push.v self.queen_monitor2
pushi.e -9
pop.v.i [stacktop]self.turnon
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dining3_slash_Step_0_gml_98_0"@37657
conv.s.v
push.s "\\E1* ERROR: Results: Key Not Found/"@37658
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_controller_dining3_slash_Step_0_gml_99_0"@37659
conv.s.v
push.s "\\EN* Did You Mean: Give Up?/%"@37660
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.v self.attempt
push.e 1
add.i.v
pop.v.v self.attempt
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[79]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [81]

:[80]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [82]

:[81]
push.e 0

:[82]
bf [90]

:[83]
pushi.e 1197
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [87]

:[84]
pushi.e 1197
pushenv [86]

:[85]
pushi.e 2315
pop.v.i self.sprite_index
call.i gml_Script_scr_afterimage(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[86]
popenv [85]

:[87]
pushi.e 260
pushenv [89]

:[88]
call.i gml_Script_scr_afterimage(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[89]
popenv [88]
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[90]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [124]

:[91]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [119]

:[92]
pushi.e 0
pop.v.i local.i

:[93]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [113]

:[94]
pushi.e 0
pop.v.i local.ii

:[95]
pushloc.v local.ii
pushi.e 5
cmp.i.v LT
bf [112]

:[96]
pushloc.v local.ii
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
pushloc.v local.i
pushi.e 2
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
not.b
bf [108]

:[100]
pushloc.v local.ii
pushi.e 0
cmp.i.v EQ
bf [102]

:[101]
pushloc.v local.i
pushi.e 3
cmp.i.v EQ
b [103]

:[102]
push.e 0

:[103]
not.b
bf [108]

:[104]
pushloc.v local.ii
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
pushloc.v local.i
pushi.e 4
cmp.i.v EQ
b [107]

:[106]
push.e 0

:[107]
not.b
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
pushi.e 269
conv.i.v
pushi.e 240
pushloc.v local.ii
pushi.e 240
mul.i.v
add.v.i
pushi.e 109
pushloc.v local.i
pushi.e 160
mul.i.v
add.v.i
call.i gml_Script_instance_create(argc=3)
popz.v

:[111]
push.v local.ii
push.e 1
add.i.v
pop.v.v local.ii
b [95]

:[112]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [93]

:[113]
pushi.e 0
pop.v.i local.i

:[114]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [119]

:[115]
pushi.e 0
pop.v.i local.ii

:[116]
pushloc.v local.ii
pushi.e 4
cmp.i.v LT
bf [118]

:[117]
pushi.e 269
conv.i.v
pushi.e 360
pushloc.v local.ii
pushi.e 240
mul.i.v
add.v.i
pushi.e 189
pushloc.v local.i
pushi.e 160
mul.i.v
add.v.i
call.i gml_Script_instance_create(argc=3)
popz.v
push.v local.ii
push.e 1
add.i.v
pop.v.v local.ii
b [116]

:[118]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [114]

:[119]
push.v self.timer
pushi.e 5
cmp.i.v GT
bf [121]

:[120]
pushi.e 260
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [122]

:[121]
push.e 0

:[122]
bf [124]

:[123]
pushi.e 0
pop.v.i self.timer
push.d 8.9
pop.v.d self.con

:[124]
push.v self.con
push.d 8.9
cmp.d.v EQ
bf [126]

:[125]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [127]

:[126]
push.e 0

:[127]
bf [134]

:[128]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[130]
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [132]

:[131]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[132]
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [134]

:[133]
pushi.e 9
pop.v.i self.con

:[134]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [157]

:[135]
pushi.e 260
pushenv [143]

:[136]
push.v self.x
pushi.e 909
cmp.i.v EQ
bf [139]

:[137]
push.v self.y
pushi.e 1200
cmp.i.v EQ
bf [139]

:[138]
push.v other.dogSpawned
pushi.e 0
cmp.i.v EQ
b [140]

:[139]
push.e 0

:[140]
bf [143]

:[141]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.id
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
call.i collision_rectangle(argc=7)
pop.v.v self.inst
push.v self.inst
pushi.e -4
cmp.i.v EQ
bf [143]

:[142]
pushi.e 1197
conv.i.v
push.v self.y
push.v self.x
pushi.e 16
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.x
pop.v.v other.dogtabletargx
push.v self.y
pop.v.v other.dogtabletargy
pushi.e 1
pop.v.i other.dogSpawned
call.i instance_destroy(argc=0)
popz.v

:[143]
popenv [136]
pushi.e 260
pushenv [151]

:[144]
push.v self.x
pushi.e 269
cmp.i.v EQ
bf [147]

:[145]
push.v self.y
pushi.e 480
cmp.i.v EQ
bf [147]

:[146]
push.v other.dogSpawned
pushi.e 0
cmp.i.v EQ
b [148]

:[147]
push.e 0

:[148]
bf [151]

:[149]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.id
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 640
add.i.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_camerax(argc=0)
call.i collision_rectangle(argc=7)
pop.v.v self.inst
push.v self.inst
pushi.e -4
cmp.i.v EQ
bf [151]

:[150]
pushi.e 1197
conv.i.v
push.v self.y
push.v self.x
pushi.e 16
sub.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.x
pop.v.v other.dogtabletargx
push.v self.y
pop.v.v other.dogtabletargy
pushi.e 1
pop.v.i other.dogSpawned
call.i instance_destroy(argc=0)
popz.v

:[151]
popenv [144]
pushi.e 1
push.v self.queen_monitor
pushi.e -9
pop.v.i [stacktop]self.turnoff
pushi.e 1
push.v self.queen_monitor2
pushi.e -9
pop.v.i [stacktop]self.turnoff
pushi.e 0
pop.v.i self.checkCount
push.v self.attempt
pushi.e 1
cmp.i.v EQ
bt [153]

:[152]
push.v self.attempt
pushi.e 2
cmp.i.v EQ
b [154]

:[153]
push.e 1

:[154]
bf [156]

:[155]
pushi.e 10
pop.v.i self.con
b [157]

:[156]
pushi.e 5
pop.v.i self.con

:[157]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [162]

:[158]
pushi.e 1
pop.v.i global.interact
push.v self.attempt
pushi.e 1
cmp.i.v EQ
bf [160]

:[159]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dining3_slash_Step_0_gml_210_0"@37661
conv.s.v
push.s "\\EL* All the platters got mixed up again!?/%"@37662
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 5
pop.v.i self.con

:[160]
push.v self.attempt
pushi.e 2
cmp.i.v EQ
bf [162]

:[161]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dining3_slash_Step_0_gml_217_0"@37663
conv.s.v
push.s "\\EK* Hey^1, Kris^1, isn't there something else we can do!?/%"@37664
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 5
pop.v.i self.con

:[162]
push.v self.dogcon
pushi.e 1
cmp.i.v EQ
bf [164]

:[163]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [165]

:[164]
push.e 0

:[165]
bf [178]

:[166]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e 1197
conv.i.v
call.i instance_find(argc=2)
pop.v.v self.table
push.v 1197.x
pushi.e 50
add.i.v
pop.v.v self.basex
push.v 1197.y
pushi.e 84
add.i.v
pop.v.v self.basey
push.v 1197.y
pop.v.v self.starty
push.v self.basex
pushi.e 909
cmp.i.v GTE
bf [168]

:[167]
push.s "botright"@37665
pop.v.s self.loc
b [169]

:[168]
push.s "topright"@14190
pop.v.s self.loc

:[169]
push.v self.loc
push.s "botright"@37665
cmp.s.v EQ
bf [173]

:[170]
push.v 82.y
pushi.e 1190
cmp.i.v LT
bf [172]

:[171]
push.s "above"@37666
pop.v.s self.moveloc
push.v self.moveloc
call.i show_debug_message(argc=1)
popz.v
b [173]

:[172]
push.s "below"@37667
pop.v.s self.moveloc
push.v self.moveloc
call.i show_debug_message(argc=1)
popz.v

:[173]
push.v self.loc
push.s "topright"@14190
cmp.s.v EQ
bf [177]

:[174]
push.v 82.y
pushi.e 470
cmp.i.v LT
bf [176]

:[175]
push.s "above"@37666
pop.v.s self.moveloc
push.v self.moveloc
call.i show_debug_message(argc=1)
popz.v
b [177]

:[176]
push.s "below"@37667
pop.v.s self.moveloc
push.v self.moveloc
call.i show_debug_message(argc=1)
popz.v

:[177]
push.v self.dogcon
push.e 1
add.i.v
pop.v.v self.dogcon

:[178]
push.v self.dogcon
pushi.e 2
cmp.i.v EQ
bf [186]

:[179]
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_controller_dining3_slash_Step_0_gml_246_0"@37668
conv.s.v
push.s "\\E6* Hey^1, there's something under this one!/%"@37669
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.moveloc
push.s "below"@37667
cmp.s.v EQ
bf [181]

:[180]
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
push.v self.basey
pushi.e 20
sub.i.v
push.v self.basex
pushi.e 20
sub.i.v
pushi.e 6
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
push.v self.basey
pushi.e 20
sub.i.v
pushi.e 2
add.i.v
push.v self.basex
pushi.e 12
sub.i.v
pushi.e 40
sub.i.v
pushi.e 12
sub.i.v
pushi.e 20
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
push.v self.basey
pushi.e 20
sub.i.v
pushi.e 2
add.i.v
push.v self.basex
pushi.e 12
add.i.v
pushi.e 20
add.i.v
pushi.e 12
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v

:[181]
push.v self.moveloc
push.s "above"@37666
cmp.s.v EQ
bf [183]

:[182]
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
push.v self.basey
pushi.e 20
sub.i.v
pushi.e 120
sub.i.v
push.v self.basex
pushi.e 20
sub.i.v
pushi.e 6
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
push.v self.basey
pushi.e 20
sub.i.v
pushi.e 2
add.i.v
pushi.e 120
sub.i.v
pushi.e 10
sub.i.v
push.v self.basex
pushi.e 12
sub.i.v
pushi.e 40
sub.i.v
pushi.e 12
sub.i.v
pushi.e 20
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
push.v self.basey
pushi.e 20
sub.i.v
pushi.e 2
add.i.v
pushi.e 120
sub.i.v
pushi.e 2
add.i.v
push.v self.basex
pushi.e 12
add.i.v
pushi.e 20
add.i.v
pushi.e 12
add.i.v
pushi.e 4
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v

:[183]
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 273
conv.i.v
push.v self.basey
pushi.e 120
sub.i.v
pushi.e 16
add.i.v
push.v self.basex
pushi.e 4
add.i.v
call.i gml_Script_c_instance(argc=3)
popz.v
pushi.e 164
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.basex
pushi.e 50
sub.i.v
push.s "x"@50
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.basey
pushi.e 84
sub.i.v
push.s "y"@52
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "draw_mode"@37670
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.d 0.25
conv.d.v
push.s "image_speed"@276
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.loc
push.s "botright"@37665
cmp.s.v EQ
bf [185]

:[184]
push.d 3.1
pop.v.d self.dogcon
b [186]

:[185]
push.d 4.1
pop.v.d self.dogcon

:[186]
push.v self.dogcon
push.d 3.1
cmp.d.v EQ
bf [188]

:[187]
push.i 42069
pop.v.i self.dogcon
push.d 0.25
conv.d.v
push.s "image_speed"@276
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 6
conv.i.v
pushi.e 1090
conv.i.v
pushi.e 909
conv.i.v
push.s "x"@50
conv.s.v
push.v self.table
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 3
conv.i.v
push.s "draw_mode"@37670
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "toss"@37671
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "left"@5994
conv.s.v
push.s "tossdir"@37672
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 4
conv.i.v
pushi.e 1072
conv.i.v
pushi.e 1080
conv.i.v
push.s "x"@50
conv.s.v
push.v self.table
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 4
conv.i.v
pushi.e 1184
conv.i.v
pushi.e 1200
conv.i.v
push.s "y"@52
conv.s.v
push.v self.table
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
conv.i.v
pushi.e 1200
conv.i.v
pushi.e 1184
conv.i.v
push.s "y"@52
conv.s.v
push.v self.table
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "image_speed"@276
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
push.v self.basey
pushi.e 102
sub.i.v
push.v self.basex
pushi.e 46
sub.i.v
pushi.e 20
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
push.v self.basey
pushi.e 102
sub.i.v
pushi.e 16
add.i.v
push.v self.basex
pushi.e 46
sub.i.v
pushi.e 40
sub.i.v
pushi.e 22
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
push.v self.basey
pushi.e 102
sub.i.v
pushi.e 4
add.i.v
push.v self.basex
pushi.e 46
sub.i.v
pushi.e 80
sub.i.v
pushi.e 22
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 1187
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 8
conv.i.v
push.v self.basex
pushi.e 35
sub.i.v
pushi.e 52
sub.i.v
pushi.e 1072
conv.i.v
push.s "x"@50
conv.s.v
push.v self.table
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
push.i 800000
conv.i.v
push.s "depth"@277
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
push.v self.basey
pushi.e 102
sub.i.v
pushi.e 16
add.i.v
pushi.e 8
sub.i.v
pushi.e 12
sub.i.v
pushi.e 12
sub.i.v
pushi.e 14
sub.i.v
push.v self.basex
pushi.e 46
sub.i.v
pushi.e 40
sub.i.v
pushi.e 22
add.i.v
pushi.e 30
add.i.v
pushi.e 11
add.i.v
pushi.e 20
sub.i.v
pushi.e 2
add.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 543
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
push.v self.basey
pushi.e 102
sub.i.v
pushi.e 16
add.i.v
pushi.e 8
sub.i.v
pushi.e 12
sub.i.v
push.v self.basex
pushi.e 46
sub.i.v
pushi.e 40
sub.i.v
pushi.e 22
add.i.v
pushi.e 6
add.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 545
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
push.v self.basey
pushi.e 102
sub.i.v
pushi.e 16
add.i.v
pushi.e 8
sub.i.v
pushi.e 16
sub.i.v
pushi.e 12
sub.i.v
pushi.e 6
sub.i.v
pushi.e 33
add.i.v
pushi.e 8
sub.i.v
push.v self.basex
pushi.e 46
sub.i.v
pushi.e 40
sub.i.v
pushi.e 22
add.i.v
pushi.e 30
sub.i.v
pushi.e 20
sub.i.v
pushi.e 27
add.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 783
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 845
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1156
conv.i.v
pushi.e 940
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.basey
pushi.e 102
sub.i.v
pushi.e 16
add.i.v
pushi.e 8
sub.i.v
pushi.e 16
sub.i.v
pushi.e 12
sub.i.v
pushi.e 6
sub.i.v
push.v self.basex
pushi.e 46
sub.i.v
pushi.e 40
sub.i.v
pushi.e 22
add.i.v
pushi.e 30
sub.i.v
pushi.e 20
sub.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1509
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 1188
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 69
conv.i.v
push.s "dogcon"@37643
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[188]
push.v self.dogcon
push.d 4.1
cmp.d.v EQ
bf [190]

:[189]
push.i 42069
pop.v.i self.dogcon
push.d 0.25
conv.d.v
push.s "image_speed"@276
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 6
conv.i.v
pushi.e 80
conv.i.v
pushi.e 275
conv.i.v
push.s "x"@50
conv.s.v
push.v self.table
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 3
conv.i.v
push.s "draw_mode"@37670
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "toss"@37671
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "right"@4637
conv.s.v
push.s "tossdir"@37672
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 4
conv.i.v
pushi.e 116
conv.i.v
pushi.e 80
conv.i.v
push.s "x"@50
conv.s.v
push.v self.table
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 4
conv.i.v
push.v self.starty
pushi.e 16
sub.i.v
push.v self.starty
push.s "y"@52
conv.s.v
push.v self.table
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 4
conv.i.v
push.v self.starty
push.v self.starty
pushi.e 16
sub.i.v
push.s "y"@52
conv.s.v
push.v self.table
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "image_speed"@276
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
push.v self.basey
pushi.e 102
sub.i.v
push.v self.basex
pushi.e 46
sub.i.v
pushi.e 20
add.i.v
pushi.e 60
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
push.v self.basey
pushi.e 102
sub.i.v
pushi.e 16
add.i.v
push.v self.basex
pushi.e 46
sub.i.v
pushi.e 40
sub.i.v
pushi.e 22
add.i.v
pushi.e 20
add.i.v
pushi.e 15
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 12
conv.i.v
push.v self.basey
pushi.e 102
sub.i.v
pushi.e 4
add.i.v
push.v self.basex
pushi.e 46
sub.i.v
pushi.e 80
sub.i.v
pushi.e 22
add.i.v
pushi.e 120
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 12
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 1187
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 8
conv.i.v
pushi.e 270
conv.i.v
pushi.e 116
conv.i.v
push.s "x"@50
conv.s.v
push.v self.table
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
push.i 800000
conv.i.v
push.s "depth"@277
conv.s.v
push.v self.table
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 22
conv.i.v
pushi.e 256
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 160
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
push.v self.basey
pushi.e 102
sub.i.v
pushi.e 16
add.i.v
pushi.e 8
sub.i.v
pushi.e 12
sub.i.v
pushi.e 12
sub.i.v
pushi.e 14
sub.i.v
push.v self.basex
pushi.e 46
sub.i.v
pushi.e 40
sub.i.v
pushi.e 22
add.i.v
pushi.e 30
add.i.v
pushi.e 11
add.i.v
pushi.e 20
sub.i.v
pushi.e 2
add.i.v
pushi.e 30
add.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 543
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
push.v self.basey
pushi.e 102
sub.i.v
pushi.e 16
add.i.v
pushi.e 8
sub.i.v
pushi.e 12
sub.i.v
push.v self.basex
pushi.e 46
sub.i.v
pushi.e 40
sub.i.v
pushi.e 22
add.i.v
pushi.e 6
add.i.v
pushi.e 30
add.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 545
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 20
conv.i.v
push.v self.basey
pushi.e 102
sub.i.v
pushi.e 16
add.i.v
pushi.e 8
sub.i.v
pushi.e 16
sub.i.v
pushi.e 12
sub.i.v
pushi.e 6
sub.i.v
pushi.e 33
add.i.v
pushi.e 8
sub.i.v
push.v self.basex
pushi.e 46
sub.i.v
pushi.e 40
sub.i.v
pushi.e 22
add.i.v
pushi.e 30
sub.i.v
pushi.e 20
sub.i.v
pushi.e 27
add.i.v
pushi.e 30
add.i.v
call.i gml_Script_c_jump(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 783
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 440
conv.i.v
pushi.e 334
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 845
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.basey
pushi.e 102
sub.i.v
pushi.e 16
add.i.v
pushi.e 8
sub.i.v
pushi.e 16
sub.i.v
pushi.e 12
sub.i.v
pushi.e 6
sub.i.v
push.v self.basex
pushi.e 46
sub.i.v
pushi.e 40
sub.i.v
pushi.e 22
add.i.v
pushi.e 30
sub.i.v
pushi.e 20
sub.i.v
pushi.e 30
add.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1509
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
pushi.e 1188
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 69
conv.i.v
push.s "dogcon"@37643
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
push.v self.basex
pushi.e 35
sub.i.v
pushi.e 50
add.i.v
pushi.e 52
sub.i.v
push.s "x"@50
conv.s.v
pushi.e 82
conv.i.v
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.basey
pushi.e 44
sub.i.v
push.s "y"@52
conv.s.v
pushi.e 82
conv.i.v
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[190]
push.v self.dogcon
pushi.e 69
cmp.i.v EQ
bf [210]

:[191]
pushi.e 260
pushenv [196]

:[192]
push.v self.collider
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [196]

:[193]
push.v self.collider
pushi.e -9
pushenv [195]

:[194]
call.i instance_destroy(argc=0)
popz.v

:[195]
popenv [194]

:[196]
popenv [192]
pushi.e 144
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [200]

:[197]
pushi.e 144
pushenv [199]

:[198]
call.i instance_destroy(argc=0)
popz.v

:[199]
popenv [198]

:[200]
pushi.e 1197
pushenv [202]

:[201]
call.i instance_destroy(argc=0)
popz.v

:[202]
popenv [201]
push.v self.loc
push.s "botright"@37665
cmp.s.v EQ
bf [204]

:[203]
pushi.e 1198
conv.i.v
push.v self.basey
pushi.e 44
sub.i.v
push.v self.basex
pushi.e 35
sub.i.v
pushi.e 50
add.i.v
pushi.e 52
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dogtable
b [205]

:[204]
pushi.e 1198
conv.i.v
push.v self.basey
pushi.e 44
sub.i.v
push.v self.basex
pushi.e 35
sub.i.v
pushi.e 52
add.i.v
pushi.e 22
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dogtable

:[205]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact
pushi.e 276
pushenv [207]

:[206]
pushi.e 0
pop.v.b self.visible

:[207]
popenv [206]
pushi.e 82
pushenv [209]

:[208]
pushi.e 0
pop.v.b self.visible

:[209]
popenv [208]
push.v self.dogcon
push.e 1
add.i.v
pop.v.v self.dogcon

:[210]
push.v self.dogcon
pushi.e 70
cmp.i.v EQ
bf [212]

:[211]
pushi.e 0
pop.v.i self.timer

:[212]
push.v self.dogcon
pushi.e 71
cmp.i.v EQ
bf [221]

:[213]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [219]

:[214]
pushi.e 232
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i 1198.drawcustom
push.v self.key
pushi.e -9
pushenv [216]

:[215]
pushi.e 80
pop.v.i self.depth

:[216]
popenv [215]
push.v self.key
pushi.e -9
pushenv [218]

:[217]
pushi.e 16
conv.i.v
push.v other.dogtable
pushi.e -9
push.v [stacktop]self.y
pushi.e 228
sub.i.v
push.v other.dogtable
pushi.e -9
push.v [stacktop]self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[218]
popenv [217]

:[219]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 20
cmp.i.v EQ
bf [221]

:[220]
pushi.e 1
pop.v.i 1198.drawcustom
pushi.e 800
pop.v.i 1198.raspr
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dining3_slash_Step_0_gml_539_0"@37676
conv.s.v
push.s "\\EJ* There's the key!!^1! Now we just have to--/%"@37677
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 72
pop.v.i self.dogcon
pushi.e 0
pop.v.i self.timer

:[221]
push.v self.dogcon
pushi.e 69
cmp.i.v GT
bf [227]

:[222]
push.v self.key
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [227]

:[223]
push.v self.sparkletimer
push.e 1
add.i.v
pop.v.v self.sparkletimer
push.v self.sparkletimer
pushi.e 4
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [227]

:[224]
pushi.e 0
pop.v.i local.i

:[225]
pushloc.v local.i
pushi.e 1
cmp.i.v LT
bf [227]

:[226]
push.i 168175
setowner.e
pushi.e 352
conv.i.v
push.v self.key
pushi.e -9
push.v [stacktop]self.y
pushi.e 42
add.i.v
push.v self.key
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.sparkle
push.i 133642
setowner.e
pushi.e 2475
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 232019
setowner.e
push.d 0.02
conv.d.v
push.d 0.01
conv.d.v
call.i choose(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.v [stacktop]self.fadeSpeed
push.i 133650
setowner.e
pushi.e 2
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133651
setowner.e
pushi.e 2
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 133655
setowner.e
push.d 0.5
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133623
setowner.e
pushi.e 3
conv.i.v
pushi.e -3
conv.i.v
call.i random_range(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.i 133627
setowner.e
push.d 0.05
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.friction
push.i 133628
setowner.e
push.d 0.1
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.d [stacktop]self.gravity
push.i 133637
setowner.e
push.v self.key
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
add.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.sparkle
pushi.e -9
pop.v.v [stacktop]self.depth
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [225]

:[227]
push.v self.dogcon
pushi.e 72
cmp.i.v EQ
bf [229]

:[228]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [230]

:[229]
push.e 0

:[230]
bf [244]

:[231]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 29
cmp.i.v EQ
bf [235]

:[232]
push.v self.dogtable
pushi.e -9
pushenv [234]

:[233]
pushi.e 4
conv.i.v
push.v self.y
pushi.e 128
sub.i.v
push.v self.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[234]
popenv [233]

:[235]
push.v self.timer
pushi.e 33
cmp.i.v EQ
bf [242]

:[236]
pushi.e 0
pop.v.i local.i

:[237]
pushloc.v local.i
pushi.e 8
cmp.i.v LT
bf [239]

:[238]
push.i 171270
setowner.e
pushi.e 352
conv.i.v
push.v self.key
pushi.e -9
push.v [stacktop]self.y
pushi.e 42
add.i.v
push.v self.key
pushi.e -9
push.v [stacktop]self.x
pushi.e 50
add.i.v
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.shard
push.i 133650
setowner.e
pushi.e 2
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.shard
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 133651
setowner.e
pushi.e 2
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.shard
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 133642
setowner.e
pushi.e 2321
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.shard
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 133625
setowner.e
pushloc.v local.i
pushi.e 8
conv.i.d
div.d.v
pushi.e 360
mul.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.shard
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133652
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.shard
pushi.e -9
push.v [stacktop]self.direction
pushi.e 30
conv.i.v
pushi.e -30
conv.i.v
call.i random_range(argc=2)
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.shard
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.i 133626
setowner.e
pushi.e 10
conv.i.v
pushi.e 6
conv.i.v
call.i random_range(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.shard
pushi.e -9
pop.v.v [stacktop]self.speed
push.i 133637
setowner.e
push.v self.key
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
add.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.shard
pushi.e -9
pop.v.v [stacktop]self.depth
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [237]

:[239]
pushi.e 166
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.key
pushi.e -9
pushenv [241]

:[240]
call.i instance_destroy(argc=0)
popz.v

:[241]
popenv [240]

:[242]
push.v self.timer
pushi.e 50
cmp.i.v EQ
bf [244]

:[243]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_controller_dining3_slash_Step_0_gml_603_0"@37678
conv.s.v
push.s "\\EL* It BROKE IT?!/%"@37679
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.dogcon
push.e 1
add.i.v
pop.v.v self.dogcon
pushi.e 0
pop.v.i self.timer

:[244]
push.v self.dogcon
pushi.e 73
cmp.i.v EQ
bf [246]

:[245]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [247]

:[246]
push.e 0

:[247]
bf [end]

:[248]
push.v self.dogtable
pushi.e -9
push.v [stacktop]self.x
pushi.e 64
sub.i.v
call.i abs(argc=1)
pushi.e 16
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v local.dist
pushi.e 16
conv.i.v
pushi.e 4
conv.i.v
pushloc.v local.dist
call.i clamp(argc=3)
pop.v.v local.dist
push.v self.dogtable
pushi.e -9
push.v [stacktop]self.y
pushi.e 320
cmp.i.v LT
bf [250]

:[249]
pushi.e 360
pop.v.i local.targy
b [251]

:[250]
push.v self.dogtable
pushi.e -9
push.v [stacktop]self.y
pop.v.v local.targy

:[251]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [255]

:[252]
push.v self.dogtable
pushi.e -9
pushenv [254]

:[253]
pushloc.v local.dist
pushloc.v local.targy
pushi.e 640
conv.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[254]
popenv [253]

:[255]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushloc.v local.dist
pushi.e 10
add.i.v
cmp.v.v EQ
bf [259]

:[256]
push.v self.dogtable
pushi.e -9
pushenv [258]

:[257]
push.v self.y
pushi.e 128
sub.i.v
pushi.e 24
conv.i.d
div.d.v
pushi.e -128
conv.i.v
pushi.e 640
conv.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[258]
popenv [257]

:[259]
push.v self.dogtable
pushi.e -9
push.v [stacktop]self.y
pushi.e 160
cmp.i.v LTE
bf [261]

:[260]
push.v self.timer
pushi.e 18
cmp.i.v GT
b [262]

:[261]
push.e 0

:[262]
bf [end]

:[263]
pushi.e 129
conv.i.v
push.v self.dogtable
pushi.e -9
push.v [stacktop]self.y
push.v self.dogtable
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.explosion_marker
pushi.e 2
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2275
push.v self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 189
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "TILES_Doorway"@37638
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "TILES_Doorway_FG"@37680
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 381
pop.v.v [array]self.flag
pushi.e 155
pushenv [265]

:[264]
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v

:[265]
popenv [264]
push.v self.dogcon
push.e 1
add.i.v
pop.v.v self.dogcon

:[end]