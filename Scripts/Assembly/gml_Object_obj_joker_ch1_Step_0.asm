.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [204]

:[1]
push.i 231204
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.v [array]self.flag
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [160]

:[5]
push.v self.pirouette
pushi.e 2
cmp.i.v NEQ
bf [7]

:[6]
push.v self.reminvc
pop.v.v global.invc

:[7]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
div.v.v
pop.v.v self.mhpratio
push.v self.mhpratio
push.d 0.8
cmp.d.v LTE
bf [9]

:[8]
push.v self.jturn
pushi.e 4
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [14]

:[11]
pushi.e 5
pop.v.i self.jturn
push.v self.body
pushi.e -9
pushenv [13]

:[12]
pushi.e 1
pop.v.i self.dancelv

:[13]
popenv [12]

:[14]
push.v self.mhpratio
push.d 0.6
cmp.d.v LTE
bf [16]

:[15]
push.v self.jturn
pushi.e 9
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 10
pop.v.i self.jturn

:[19]
push.v self.mhpratio
push.d 0.4
cmp.d.v LTE
bf [21]

:[20]
push.v self.jturn
pushi.e 14
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [26]

:[23]
pushi.e 15
pop.v.i self.jturn
push.v self.body
pushi.e -9
pushenv [25]

:[24]
pushi.e 3
pop.v.i self.dancelv

:[25]
popenv [24]

:[26]
push.v self.mhpratio
push.d 0.15
cmp.d.v LTE
bf [28]

:[27]
push.v self.jturn
pushi.e 17
cmp.i.v LT
b [29]

:[28]
push.e 0

:[29]
bf [33]

:[30]
pushi.e 17
pop.v.i self.jturn
push.v self.body
pushi.e -9
pushenv [32]

:[31]
pushi.e 2
pop.v.i self.dancelv

:[32]
popenv [31]

:[33]
push.v self.jturn
pushi.e 18
cmp.i.v GTE
bf [37]

:[34]
push.v self.body
pushi.e -9
pushenv [36]

:[35]
pushi.e 3
pop.v.i self.dancelv

:[36]
popenv [35]

:[37]
push.v self.hypnosiscounter
pushi.e 2
cmp.i.v GTE
bf [39]

:[38]
push.v self.jturn
pushi.e 4
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [45]

:[41]
push.v self.turns
pushi.e 5
push.v self.hypnosiscounter
sub.v.i
cmp.v.v GTE
bf [45]

:[42]
pushi.e 5
pop.v.i self.jturn
push.v self.body
pushi.e -9
pushenv [44]

:[43]
pushi.e 1
pop.v.i self.dancelv

:[44]
popenv [43]

:[45]
push.v self.hypnosiscounter
pushi.e 4
cmp.i.v GTE
bf [47]

:[46]
push.v self.jturn
pushi.e 9
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [53]

:[49]
push.v self.turns
pushi.e 11
push.v self.hypnosiscounter
sub.v.i
cmp.v.v GTE
bf [53]

:[50]
pushi.e 10
pop.v.i self.jturn
push.v self.body
pushi.e -9
pushenv [52]

:[51]
pushi.e 1
pop.v.i self.dancelv

:[52]
popenv [51]

:[53]
push.v self.hypnosiscounter
pushi.e 6
cmp.i.v GTE
bf [55]

:[54]
push.v self.jturn
pushi.e 14
cmp.i.v EQ
b [56]

:[55]
push.e 0

:[56]
bf [61]

:[57]
push.v self.turns
pushi.e 17
push.v self.hypnosiscounter
sub.v.i
cmp.v.v GTE
bf [61]

:[58]
pushi.e 15
pop.v.i self.jturn
push.v self.body
pushi.e -9
pushenv [60]

:[59]
pushi.e 1
pop.v.i self.dancelv

:[60]
popenv [59]

:[61]
push.v self.jturn
pushi.e 19
cmp.i.v GTE
bf [66]

:[62]
push.v self.turns
pushi.e 29
push.v self.hypnosiscounter
sub.v.i
cmp.v.v GTE
bf [66]

:[63]
pushi.e 1
pop.v.i self.tired
push.i 231746
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterstatus
push.v self.body
pushi.e -9
pushenv [65]

:[64]
pushi.e 2
pop.v.i self.dancelv

:[65]
popenv [64]

:[66]
pushi.e 1526
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [68]

:[67]
pushi.e 1526
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[68]
pushi.e 50
pop.v.i global.typer
push.v self.jturn
pushi.e 0
cmp.i.v EQ
bf [70]

:[69]
push.i 231251
setowner.e
push.s "obj_joker_slash_Step_0_gml_35_0"@41520
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "snd_joker_chaos"@13970
conv.s.v
call.i gml_Script_scr_84_get_sound_ch1(argc=1)
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[70]
push.v self.jturn
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
push.s "obj_joker_slash_Step_0_gml_36_0"@41521
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[72]
push.v self.jturn
pushi.e 2
cmp.i.v EQ
bf [74]

:[73]
push.s "obj_joker_slash_Step_0_gml_37_0"@41522
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[74]
push.v self.jturn
pushi.e 3
cmp.i.v EQ
bf [78]

:[75]
push.s "obj_joker_slash_Step_0_gml_38_0"@41523
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.body
pushi.e -9
pushenv [77]

:[76]
pushi.e 5
pop.v.i self.condition

:[77]
popenv [76]

:[78]
push.v self.jturn
pushi.e 5
cmp.i.v EQ
bf [80]

:[79]
push.s "obj_joker_slash_Step_0_gml_39_0"@41524
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[80]
push.v self.jturn
pushi.e 6
cmp.i.v EQ
bf [82]

:[81]
push.s "obj_joker_slash_Step_0_gml_40_0"@41525
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[82]
push.v self.jturn
pushi.e 7
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_joker_slash_Step_0_gml_41_0"@41526
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "snd_joker_anything"@13969
conv.s.v
call.i gml_Script_scr_84_get_sound_ch1(argc=1)
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[84]
push.v self.jturn
pushi.e 8
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_joker_slash_Step_0_gml_42_0"@41527
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[86]
push.v self.jturn
pushi.e 10
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_joker_slash_Step_0_gml_43_0"@41528
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[88]
push.v self.jturn
pushi.e 11
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_joker_slash_Step_0_gml_44_0"@41529
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[90]
push.v self.jturn
pushi.e 12
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_joker_slash_Step_0_gml_45_0"@41530
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[92]
push.v self.jturn
pushi.e 13
cmp.i.v EQ
bf [96]

:[93]
push.s "obj_joker_slash_Step_0_gml_46_0"@41531
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.body
pushi.e -9
pushenv [95]

:[94]
pushi.e 5
pop.v.i self.condition

:[95]
popenv [94]

:[96]
push.v self.jturn
pushi.e 15
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_joker_slash_Step_0_gml_47_0"@41532
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[98]
push.v self.jturn
pushi.e 16
cmp.i.v EQ
bf [100]

:[99]
push.s "obj_joker_slash_Step_0_gml_48_0"@41533
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[100]
push.v self.jturn
pushi.e 17
cmp.i.v EQ
bf [104]

:[101]
push.s "obj_joker_slash_Step_0_gml_49_0"@41534
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.body
pushi.e -9
pushenv [103]

:[102]
pushi.e 2
pop.v.i self.dancelv

:[103]
popenv [102]

:[104]
push.v self.jturn
pushi.e 18
cmp.i.v EQ
bf [108]

:[105]
push.s "obj_joker_slash_Step_0_gml_50_0"@41535
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.body
pushi.e -9
pushenv [107]

:[106]
pushi.e 5
pop.v.i self.condition

:[107]
popenv [106]

:[108]
push.v self.jturn
pushi.e 4
cmp.i.v EQ
bt [112]

:[109]
push.v self.jturn
pushi.e 9
cmp.i.v EQ
bt [112]

:[110]
push.v self.jturn
pushi.e 14
cmp.i.v EQ
bt [112]

:[111]
push.v self.jturn
pushi.e 19
cmp.i.v EQ
b [113]

:[112]
push.e 1

:[113]
bf [122]

:[114]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [116]

:[115]
push.s "obj_joker_slash_Step_0_gml_56_1"@41536
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.s "obj_joker_slash_Step_0_gml_56_0"@41537
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i choose(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "snd_joker_chaos"@13970
conv.s.v
call.i gml_Script_scr_84_get_sound_ch1(argc=1)
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[116]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [118]

:[117]
push.s "obj_joker_slash_Step_0_gml_57_0"@41538
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "snd_joker_anything"@13969
conv.s.v
call.i gml_Script_scr_84_get_sound_ch1(argc=1)
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[118]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [120]

:[119]
push.s "obj_joker_slash_Step_0_gml_58_1"@41539
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.s "obj_joker_slash_Step_0_gml_58_0"@41540
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i choose(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[120]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [122]

:[121]
push.s "obj_joker_slash_Step_0_gml_59_0"@41541
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[122]
pushi.e 3
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_enemyblcon_ch1(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer
push.v self.jturn
pushi.e 19
cmp.i.v GTE
bf [128]

:[123]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterdf
pushi.e -10
cmp.i.v GT
bf [125]

:[124]
push.i 231910
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterdf
pushi.e 3
sub.i.v
pop.i.v [array]self.monsterdf

:[125]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 11
cmp.i.v LT
bf [127]

:[126]
push.i 231909
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterat
push.d 0.5
add.d.v
pop.i.v [array]self.monsterat

:[127]
pushi.e 13
conv.i.v
pushi.e 13
conv.i.v
pushi.e 13
conv.i.v
pushi.e 12
conv.i.v
pushi.e 11
conv.i.v
pushi.e 10
conv.i.v
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=10)
pop.v.v self.jattack

:[128]
push.v self.jturn
pushi.e 15
cmp.i.v GTE
bf [130]

:[129]
push.v self.jturn
pushi.e 18
cmp.i.v LTE
b [131]

:[130]
push.e 0

:[131]
bf [133]

:[132]
push.v self.jturn
pushi.e 3
sub.i.v
pop.v.v self.jattack
push.v self.jturn
pushi.e 1
add.i.v
pop.v.v self.jturn

:[133]
push.v self.jturn
pushi.e 14
cmp.i.v EQ
bf [135]

:[134]
pushi.e 11
conv.i.v
pushi.e 10
conv.i.v
pushi.e 9
conv.i.v
pushi.e 8
conv.i.v
call.i choose(argc=4)
pop.v.v self.jattack

:[135]
push.v self.jturn
pushi.e 10
cmp.i.v GTE
bf [137]

:[136]
push.v self.jturn
pushi.e 13
cmp.i.v LTE
b [138]

:[137]
push.e 0

:[138]
bf [140]

:[139]
push.v self.jturn
pushi.e 2
sub.i.v
pop.v.v self.jattack
push.v self.jturn
pushi.e 1
add.i.v
pop.v.v self.jturn

:[140]
push.v self.jturn
pushi.e 9
cmp.i.v EQ
bf [142]

:[141]
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=4)
pop.v.v self.jattack

:[142]
push.v self.jturn
pushi.e 5
cmp.i.v GTE
bf [144]

:[143]
push.v self.jturn
pushi.e 8
cmp.i.v LTE
b [145]

:[144]
push.e 0

:[145]
bf [147]

:[146]
push.v self.jturn
pushi.e 1
sub.i.v
pop.v.v self.jattack
push.v self.jturn
pushi.e 1
add.i.v
pop.v.v self.jturn

:[147]
push.v self.jturn
pushi.e 4
cmp.i.v EQ
bf [149]

:[148]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.jattack

:[149]
push.v self.jturn
pushi.e 3
cmp.i.v LTE
bf [151]

:[150]
push.v self.jturn
pop.v.v self.jattack
push.v self.jturn
pushi.e 1
add.i.v
pop.v.v self.jturn

:[151]
push.v self.jattack
pushi.e 2
cmp.i.v EQ
bt [156]

:[152]
push.v self.jattack
pushi.e 5
cmp.i.v EQ
bt [156]

:[153]
push.v self.jattack
pushi.e 9
cmp.i.v EQ
bt [156]

:[154]
push.v self.jattack
pushi.e 13
cmp.i.v EQ
bt [156]

:[155]
push.v self.jattack
pushi.e 15
cmp.i.v EQ
b [157]

:[156]
push.e 1

:[157]
bf [159]

:[158]
call.i gml_Script_scr_targetall_ch1(argc=0)
popz.v
b [160]

:[159]
call.i gml_Script_scr_randomtarget_ch1(argc=0)
popz.v

:[160]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [162]

:[161]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [163]

:[162]
push.e 0

:[163]
bf [169]

:[164]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i gml_Script_scr_blconskip_ch1(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [169]

:[165]
pushi.e 1540
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [167]

:[166]
call.i gml_Script_scr_moveheart_ch1(argc=0)
popz.v

:[167]
pushi.e 1632
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [169]

:[168]
pushi.e 1632
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[169]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [171]

:[170]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [172]

:[171]
push.e 0

:[172]
bf [196]

:[173]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [195]

:[174]
pushi.e 240
pop.v.i global.turntimer
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.attacked
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=5)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [176]

:[175]
push.i 231921
setowner.e
push.s "obj_joker_slash_Step_0_gml_158_0"@41542
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[176]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [178]

:[177]
push.s "obj_joker_slash_Step_0_gml_159_0"@41543
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[178]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [180]

:[179]
push.s "obj_joker_slash_Step_0_gml_160_0"@41544
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[180]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [182]

:[181]
push.s "obj_joker_slash_Step_0_gml_161_0"@41545
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[182]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [184]

:[183]
push.s "obj_joker_slash_Step_0_gml_162_0"@41546
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[184]
push.v self.body
pushi.e -9
push.v [stacktop]self.dancelv
pushi.e 2
cmp.i.v EQ
bf [186]

:[185]
push.s "obj_joker_slash_Step_0_gml_163_0"@41547
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[186]
push.v self.jturn
pushi.e 16
cmp.i.v EQ
bf [188]

:[187]
push.s "obj_joker_slash_Step_0_gml_164_0"@41548
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[188]
push.v self.jturn
pushi.e 18
cmp.i.v EQ
bf [190]

:[189]
push.s "obj_joker_slash_Step_0_gml_165_0"@41549
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[190]
push.v self.jturn
pushi.e 19
cmp.i.v GTE
bf [192]

:[191]
push.s "obj_joker_slash_Step_0_gml_166_0"@41550
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[192]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [194]

:[193]
push.s "obj_joker_slash_Step_0_gml_167_0"@41551
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[194]
b [196]

:[195]
pushi.e 120
pop.v.i global.turntimer

:[196]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [204]

:[197]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [204]

:[198]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [200]

:[199]
push.i 231526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[200]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [204]

:[201]
pushi.e 1517
pushenv [203]

:[202]
pushi.e 1
pop.v.i self.noreturn

:[203]
popenv [202]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[204]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [206]

:[205]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[206]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [208]

:[207]
pushi.e 50
pop.v.i global.typer
push.i 231526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 231251
setowner.e
push.s "obj_joker_slash_Step_0_gml_201_0"@41552
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_enemyblcon_ch1(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[208]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [210]

:[209]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [211]

:[210]
push.e 0

:[211]
bf [215]

:[212]
pushi.e 15
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1517
pushenv [214]

:[213]
pushi.e 17
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[214]
popenv [213]

:[215]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [219]

:[216]
pushi.e 1517
pushenv [218]

:[217]
pushi.e 0
pop.v.i self.noreturn

:[218]
popenv [217]
call.i gml_Script_scr_monsterdefeat_ch1(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[219]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [315]

:[220]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [222]

:[221]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [223]

:[222]
push.e 0

:[223]
bf [225]

:[224]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_joker_slash_Step_0_gml_237_0"@41553
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[225]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [227]

:[226]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [228]

:[227]
push.e 0

:[228]
bf [234]

:[229]
pushi.e 5
pop.v.i self.actcon
push.s "obj_joker_slash_Step_0_gml_247_0"@41554
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 389
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1534
pushenv [231]

:[230]
pushi.e 0
pop.v.i self.visible

:[231]
popenv [230]
pushi.e 3815
conv.i.v
push.v 1534.y
push.v 1534.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.dancekris
push.v self.dancekris
pushi.e -9
pushenv [233]

:[232]
push.d 0.3334
pop.v.d self.image_speed
push.v 1534.depth
pop.v.v self.depth

:[233]
popenv [232]
pushi.e 1514
conv.i.v
push.v self.dancekris
pushi.e -9
push.v [stacktop]self.y
pushi.e 40
add.i.v
push.v self.dancekris
pushi.e -9
push.v [stacktop]self.x
pushi.e 28
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.fx
pushi.e 3933
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.fx
pushi.e -9
pop.v.i [stacktop]self.image_yscale
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[234]
push.v self.actcon
pushi.e 5
cmp.i.v EQ
bf [236]

:[235]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [237]

:[236]
push.e 0

:[237]
bf [293]

:[238]
push.v self.dancekris
pushi.e -9
pushenv [240]

:[239]
call.i instance_destroy(argc=0)
popz.v

:[240]
popenv [239]
pushi.e 1534
pushenv [242]

:[241]
pushi.e 1
pop.v.i self.visible

:[242]
popenv [241]
push.s "obj_joker_slash_Step_0_gml_272_0"@41556
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.chaosdance
pushi.e 0
cmp.i.v EQ
bf [249]

:[243]
push.s "obj_joker_slash_Step_0_gml_276_0"@41557
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.ch
push.v self.ch
pushi.e 0
cmp.i.v EQ
bf [245]

:[244]
pushi.e 456
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[245]
push.v self.ch
pushi.e 1
cmp.i.v EQ
bf [247]

:[246]
pushi.e 388
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[247]
push.v self.ch
pushi.e 2
cmp.i.v EQ
bf [249]

:[248]
pushi.e 367
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[249]
push.v self.chaosdance
pushi.e 1
cmp.i.v EQ
bf [253]

:[250]
push.s "obj_joker_slash_Step_0_gml_284_0"@41558
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterdf
pushi.e -16
cmp.i.v GTE
bf [252]

:[251]
push.i 231910
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterdf
pushi.e 4
sub.i.v
pop.i.v [array]self.monsterdf

:[252]
pushi.e 390
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[253]
push.v self.chaosdance
pushi.e 2
cmp.i.v EQ
bf [255]

:[254]
push.i 231251
setowner.e
push.s "obj_joker_slash_Step_0_gml_290_0"@41559
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 391
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.d 0.4
pop.v.d global.invc

:[255]
push.v self.chaosdance
pushi.e 3
cmp.i.v EQ
bf [257]

:[256]
push.s "obj_joker_slash_Step_0_gml_296_0"@41560
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.d 0.7
pop.v.d self.pfactor
pushi.e 362
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[257]
push.v self.chaosdance
pushi.e 4
cmp.i.v EQ
bf [264]

:[258]
pushi.e 1407
pushenv [261]

:[259]
push.v self.sprite_index
pushi.e 3934
cmp.i.v EQ
bf [261]

:[260]
call.i instance_destroy(argc=0)
popz.v

:[261]
popenv [259]
pushi.e 3934
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 60
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 40
sub.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.bird
push.v self.bird
pushi.e -9
pushenv [263]

:[262]
pushi.e 12
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[263]
popenv [262]
pushi.e 386
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.s "obj_joker_slash_Step_0_gml_310_0"@41561
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[264]
push.v self.chaosdance
pushi.e 5
cmp.i.v EQ
bf [266]

:[265]
push.s "obj_joker_slash_Step_0_gml_314_0"@41562
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.star
pushi.e 31
conv.i.v
call.i random(argc=1)
pushi.e 25
add.i.v
call.i floor(argc=1)
call.i gml_Script_scr_healitemspell_ch1(argc=1)
popz.v

:[266]
push.v self.chaosdance
pushi.e 6
cmp.i.v EQ
bf [286]

:[267]
push.s "obj_joker_slash_Step_0_gml_320_0"@41563
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
pop.v.i self.swap1
pushi.e 1
pop.v.i self.swap2
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=2)
pop.v.v self.swap1
push.v self.swap1
pushi.e 2
cmp.i.v EQ
bf [269]

:[268]
pushi.e 3
pop.v.i self.swap2

:[269]
push.v self.swap1
pushi.e 3
cmp.i.v EQ
bf [271]

:[270]
pushi.e 2
pop.v.i self.swap2

:[271]
pushi.e 0
pop.v.i self.i

:[272]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [274]

:[273]
push.i 175540
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.hp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remhp
push.i 175805
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.maxhp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.curmaxhp
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [272]

:[274]
push.i 231132
setowner.e
pushi.e -1
push.v self.swap1
conv.v.i
push.v [array]self.curmaxhp
pushi.e -5
pushi.e 1
pop.v.v [array]self.maxhp
pushi.e -1
push.v self.swap2
conv.v.i
push.v [array]self.curmaxhp
pushi.e -5
push.v self.swap1
conv.v.i
pop.v.v [array]self.maxhp
pushi.e -1
pushi.e 1
push.v [array]self.curmaxhp
pushi.e -5
push.v self.swap2
conv.v.i
pop.v.v [array]self.maxhp
push.i 231131
setowner.e
pushi.e -1
push.v self.swap1
conv.v.i
push.v [array]self.remhp
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp
pushi.e -1
push.v self.swap2
conv.v.i
push.v [array]self.remhp
pushi.e -5
push.v self.swap1
conv.v.i
pop.v.v [array]self.hp
pushi.e -1
pushi.e 1
push.v [array]self.remhp
pushi.e -5
push.v self.swap2
conv.v.i
pop.v.v [array]self.hp
push.i 175806
setowner.e
pushi.e 1517
pushi.e 0
push.v [array]self.hpcolor
pushi.e -1
pushi.e 0
pop.v.v [array]self.remhpcolor
pushi.e 1517
pushi.e 1
push.v [array]self.hpcolor
pushi.e -1
pushi.e 1
pop.v.v [array]self.remhpcolor
pushi.e 1517
pushi.e 2
push.v [array]self.hpcolor
pushi.e -1
pushi.e 2
pop.v.v [array]self.remhpcolor
push.i 231736
setowner.e
pushi.e -1
push.v self.swap1
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.remhpcolor
pushi.e 1517
pushi.e 0
pop.v.v [array]self.hpcolor
pushi.e -1
push.v self.swap2
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.remhpcolor
pushi.e 1517
push.v self.swap1
pushi.e 1
sub.i.v
conv.v.i
pop.v.v [array]self.hpcolor
pushi.e -1
pushi.e 0
push.v [array]self.remhpcolor
pushi.e 1517
push.v self.swap2
pushi.e 1
sub.i.v
conv.v.i
pop.v.v [array]self.hpcolor
pushi.e 1
pop.v.i self.i

:[275]
push.v self.i
pushi.e 3
cmp.i.v LTE
bf [279]

:[276]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [278]

:[277]
push.i 231131
setowner.e
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.hp
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.hp
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.i.v [array]self.hp
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.hp
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.hp
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.i.v [array]self.hp
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.hp
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.hp
pushi.e 3
conv.i.d
div.d.v
call.i floor(argc=1)
add.v.v
pop.i.v [array]self.hp
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hp

:[278]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [275]

:[279]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [281]

:[280]
push.i 231131
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.hp

:[281]
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [283]

:[282]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.hp

:[283]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [285]

:[284]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.hp

:[285]
pushi.e 0
conv.i.v
call.i gml_Script_scr_revive_ch1(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_revive_ch1(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_revive_ch1(argc=1)
popz.v
pushi.e 390
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[286]
push.v self.chaosdance
pushi.e 7
cmp.i.v EQ
bf [288]

:[287]
pushi.e 415
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.i 231251
setowner.e
push.s "obj_joker_slash_Step_0_gml_373_0"@41568
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.d 1.25
pop.v.d self.pfactor

:[288]
push.v self.chaosdance
pushi.e 8
cmp.i.v EQ
bf [290]

:[289]
pushi.e 387
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.s "obj_joker_slash_Step_0_gml_379_0"@41569
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 36
pushi.e 15
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
call.i gml_Script_scr_healallitemspell_ch1(argc=1)
popz.v

:[290]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
push.v self.hypnosiscounter
push.d 0.5
add.d.v
pop.v.v self.hypnosiscounter
push.v self.hypnosiscounter
pushi.e 9
cmp.i.v GTE
bf [292]

:[291]
push.s "obj_joker_slash_Step_0_gml_387_0"@41570
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.txtpart3
push.i 231746
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterstatus

:[292]
push.v self.chaosdance
pop.v.v self.pirouette
push.v self.pirouettecounter
pushi.e 1
add.i.v
pop.v.v self.pirouettecounter
pushi.e 1
pop.v.i self.actcon

:[293]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [295]

:[294]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [296]

:[295]
push.e 0

:[296]
bf [310]

:[297]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 10
cmp.i.v GT
bf [299]

:[298]
push.i 231909
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterat
push.d 0.5
sub.d.v
pop.i.v [array]self.monsterat

:[299]
pushi.e 1626
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.hypnofx
pushi.e 392
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i self.actcon
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.aaa
push.v self.aaa
pushi.e 0
cmp.i.v EQ
bf [301]

:[300]
push.s "obj_joker_slash_Step_0_gml_400_0"@41574
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.txtpart1

:[301]
push.v self.aaa
pushi.e 1
cmp.i.v EQ
bf [303]

:[302]
push.s "obj_joker_slash_Step_0_gml_401_0"@41576
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.txtpart1

:[303]
push.v self.aaa
pushi.e 2
cmp.i.v EQ
bf [305]

:[304]
push.s "obj_joker_slash_Step_0_gml_402_0"@41577
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.txtpart1

:[305]
push.s "obj_joker_slash_Step_0_gml_403_0"@41578
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.txtpart2
push.s "obj_joker_slash_Step_0_gml_404_0"@41580
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.txtpart3
push.v self.hypnosiscounter
pushi.e 0
cmp.i.v EQ
bf [307]

:[306]
push.s "obj_joker_slash_Step_0_gml_405_0"@41581
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.txtpart3

:[307]
push.v self.hypnosiscounter
pushi.e 9
cmp.i.v GTE
bf [309]

:[308]
push.s "obj_joker_slash_Step_0_gml_406_0"@41582
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.txtpart3
push.i 231746
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterstatus

:[309]
push.i 231251
setowner.e
push.v self.txtpart1
push.v self.txtpart2
add.v.v
push.v self.txtpart3
add.v.v
push.s "obj_joker_slash_Step_0_gml_407_0"@41583
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
add.v.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.d 0.7
pop.v.d self.pfactor
pushi.e 1
pop.v.i self.hypnosis
push.v self.hypnosiscounter
pushi.e 1
add.i.v
pop.v.v self.hypnosiscounter
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[310]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [312]

:[311]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [313]

:[312]
push.e 0

:[313]
bf [315]

:[314]
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v

:[315]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [317]

:[316]
pushi.e 15
pop.v.i self.hspeed

:[317]
push.v self.beepbuffer
pushi.e 1
sub.i.v
pop.v.v self.beepbuffer
push.v self.beepnoise
pushi.e 4
cmp.i.v EQ
bf [319]

:[318]
push.v self.beepbuffer
pushi.e 0
cmp.i.v LT
b [320]

:[319]
push.e 0

:[320]
bf [322]

:[321]
pushi.e 411
conv.i.v
call.i gml_Script_snd_stop_ch1(argc=1)
popz.v
pushi.e 411
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.beepnoise
pushi.e 5
pop.v.i self.beepbuffer

:[322]
push.v self.burstnoise
pushi.e 1
cmp.i.v EQ
bf [end]

:[323]
pushi.e 410
conv.i.v
call.i gml_Script_snd_stop_ch1(argc=1)
popz.v
pushi.e 410
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.burstnoise

:[end]