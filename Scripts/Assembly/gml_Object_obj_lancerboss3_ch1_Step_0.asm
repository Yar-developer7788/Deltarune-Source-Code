.localvar 2 arguments

:[0]
push.v self.defeated
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 99
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.con

:[5]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.defeated
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [105]

:[9]
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
bf [11]

:[10]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [64]

:[13]
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [20]

:[14]
push.v self.susie_revive_count
pushi.e 1
add.i.v
pop.v.v self.susie_revive_count
push.v self.susie_revive_count
pushi.e 3
cmp.i.v GTE
bf [20]

:[15]
pushi.e 1366
pushenv [17]

:[16]
pushi.e 0
push.v self.s
pushi.e -9
pop.v.i [stacktop]self.visible

:[17]
popenv [16]
push.i 231474
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monster
push.i 231475
setowner.e
pushi.e -5
pushi.e 0
push.v [array]self.monsterinstancetype
pushi.e -5
pushi.e 0
push.v [array]self.monstermakey
pushi.e -5
pushi.e 0
push.v [array]self.monstermakex
call.i gml_Script_instance_create_ch1(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterinstance
push.i 231468
setowner.e
pushi.e 0
pushi.e -5
pushi.e 0
push.v [array]self.monsterinstance
pushi.e -9
pop.v.i [stacktop]self.myself
pushi.e -5
pushi.e 0
push.v [array]self.monsterinstance
pushi.e -9
pushenv [19]

:[18]
pushi.e 12
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[19]
popenv [18]
push.i 231862
setowner.e
pushi.e 40
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monsterhp
pushi.e 431
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.susie_revive_count

:[20]
pushi.e 1
pop.v.i self.attack_qual
pushi.e 1610
pushenv [26]

:[21]
push.v self.sleeping
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 0
pop.v.i 1611.attack_qual

:[26]
popenv [21]
push.v self.attack_qual
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
call.i gml_Script_scr_randomtarget_ch1(argc=0)
popz.v
push.i 231544
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.mytarget
conv.v.i
pop.v.v [array]self.targeted

:[28]
pushi.e 1526
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [30]

:[29]
pushi.e 1526
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[30]
pushi.e 50
pop.v.i global.typer
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v self.rrrr
push.i 231251
setowner.e
push.s "obj_lancerboss3_slash_Step_0_gml_56_0"@41369
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.rrrr
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_lancerboss3_slash_Step_0_gml_57_0"@41370
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[32]
push.v self.rrrr
pushi.e 2
cmp.i.v EQ
bf [34]

:[33]
push.s "obj_lancerboss3_slash_Step_0_gml_58_0"@41371
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[34]
push.v self.rrrr
pushi.e 3
cmp.i.v EQ
bf [36]

:[35]
push.s "obj_lancerboss3_slash_Step_0_gml_59_0"@41372
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[36]
push.v self.lancer_hurt
pushi.e 0
cmp.i.v EQ
bf [38]

:[37]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.5
mul.d.v
cmp.v.v LTE
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 1
pop.v.i self.lancer_hurt
push.s "obj_lancerboss3_slash_Step_0_gml_64_0"@41373
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[41]
push.v self.susie_act
pushi.e 3
cmp.i.v EQ
bf [43]

:[42]
push.s "obj_lancerboss3_slash_Step_0_gml_66_0"@41374
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[43]
push.v self.susie_act
pushi.e 9
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_lancerboss3_slash_Step_0_gml_67_0"@41375
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[45]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [54]

:[46]
push.v self.anythingcounter
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_lancerboss3_slash_Step_0_gml_70_0"@41376
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[48]
push.v self.anythingcounter
pushi.e 2
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_lancerboss3_slash_Step_0_gml_71_0"@41377
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[50]
push.v self.anythingcounter
pushi.e 3
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_lancerboss3_slash_Step_0_gml_72_0"@41378
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[52]
push.v self.anythingcounter
pushi.e 4
cmp.i.v GTE
bf [54]

:[53]
push.s "obj_lancerboss3_slash_Step_0_gml_73_0"@41379
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[54]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [63]

:[55]
push.v self.anythingcounter
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_lancerboss3_slash_Step_0_gml_77_0"@41380
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[57]
push.v self.anythingcounter
pushi.e 2
cmp.i.v EQ
bf [59]

:[58]
push.s "obj_lancerboss3_slash_Step_0_gml_78_0"@41381
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[59]
push.v self.anythingcounter
pushi.e 3
cmp.i.v EQ
bf [61]

:[60]
push.s "obj_lancerboss3_slash_Step_0_gml_79_0"@41382
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[61]
push.v self.anythingcounter
pushi.e 4
cmp.i.v GTE
bf [63]

:[62]
push.s "obj_lancerboss3_slash_Step_0_gml_80_0"@41383
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[63]
pushi.e 0
pop.v.i self.susie_act
pushi.e 0
pop.v.i self.lancer_act
pushi.e 3
conv.i.v
push.v self.y
pushi.e 65
sub.i.v
push.v self.x
pushi.e 235
sub.i.v
call.i gml_Script_scr_enemyblcon_ch1(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[64]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [81]

:[68]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [70]

:[69]
push.v self.talktimer
pushi.e 17
cmp.i.v GT
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
push.v self.talkmax
pop.v.v self.talktimer

:[73]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
push.v self.talkmax
cmp.v.v GTE
bf [81]

:[74]
pushi.e 1540
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [76]

:[75]
call.i gml_Script_scr_moveheart_ch1(argc=0)
popz.v

:[76]
pushi.e 1632
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [78]

:[77]
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

:[78]
pushi.e 1331
pushenv [80]

:[79]
call.i instance_destroy(argc=0)
popz.v

:[80]
popenv [79]
pushi.e 2
pop.v.i global.mnfight

:[81]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [83]

:[82]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [84]

:[83]
push.e 0

:[84]
bf [105]

:[85]
pushi.e 0
pop.v.i self.attack_qual
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
pushi.e 1
pop.v.i self.attack_qual

:[87]
pushi.e 1610
pushenv [90]

:[88]
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
pushi.e 1
pop.v.i 1611.attack_qual

:[90]
popenv [88]
push.v self.attack_qual
pushi.e 1
cmp.i.v EQ
bf [95]

:[91]
push.v self.attacks
pushi.e 0
cmp.i.v EQ
bf [93]

:[92]
pushi.e 1532
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.bike
pushi.e 0
pop.v.i self.visible
pushi.e 1
push.v self.bike
pushi.e -9
pop.v.i [stacktop]self.racecon
push.v self.mytarget
push.v self.bike
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.bike
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 1
pop.v.i self.attacks
b [94]

:[93]
pushi.e 1532
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.bike
pushi.e 0
pop.v.i self.visible
pushi.e 1
push.v self.bike
pushi.e -9
pop.v.i [stacktop]self.lcon
push.v self.mytarget
push.v self.bike
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.bike
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 0
pop.v.i self.attacks

:[94]
pushi.e 999
pop.v.i global.turntimer

:[95]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 1
pop.v.i self.attacked
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.rr
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [97]

:[96]
push.i 231921
setowner.e
push.s "obj_lancerboss3_slash_Step_0_gml_145_0"@41384
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[97]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [99]

:[98]
push.s "obj_lancerboss3_slash_Step_0_gml_146_0"@41385
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[99]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [101]

:[100]
push.s "obj_lancerboss3_slash_Step_0_gml_147_0"@41386
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[101]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [103]

:[102]
push.s "obj_lancerboss3_slash_Step_0_gml_148_0"@41387
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[103]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [105]

:[104]
push.s "obj_lancerboss3_slash_Step_0_gml_149_0"@41388
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[105]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [196]

:[106]
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
bf [108]

:[107]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [109]

:[108]
push.e 0

:[109]
bf [111]

:[110]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_lancerboss3_slash_Step_0_gml_167_0"@41389
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[111]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [113]

:[112]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [114]

:[113]
push.e 0

:[114]
bf [137]

:[115]
pushi.e 1
pop.v.i self.actcon
push.s "obj_lancerboss3_slash_Step_0_gml_176_0"@41390
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_177_0"@41391
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.anythingcounter
pushi.e 1
cmp.i.v EQ
bf [117]

:[116]
push.s "obj_lancerboss3_slash_Step_0_gml_181_0"@41392
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_182_0"@41393
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[117]
push.v self.anythingcounter
pushi.e 2
cmp.i.v EQ
bf [119]

:[118]
push.s "obj_lancerboss3_slash_Step_0_gml_187_0"@41394
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_188_0"@41395
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[119]
push.v self.anythingcounter
pushi.e 3
cmp.i.v GTE
bf [134]

:[120]
push.s "obj_lancerboss3_slash_Step_0_gml_193_0"@41396
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_194_0"@41397
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.ears_blocked
pushi.e 2
cmp.i.v GTE
bf [122]

:[121]
push.s "obj_lancerboss3_slash_Step_0_gml_197_0"@41398
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_198_0"@41399
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[122]
pushi.e 0
pop.v.i self.attack_qual
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [124]

:[123]
pushi.e 1
pop.v.i self.attack_qual

:[124]
pushi.e 1610
pushenv [127]

:[125]
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [127]

:[126]
pushi.e 1
pop.v.i 1611.attack_qual

:[127]
popenv [125]
push.v self.attack_qual
pushi.e 0
cmp.i.v EQ
bf [131]

:[128]
pushi.e 20
pop.v.i self.actcon
pushi.e 1563
pushenv [130]

:[129]
push.v self.ears_blocked
pushi.e 1
add.i.v
pop.v.v self.ears_blocked

:[130]
popenv [129]
b [132]

:[131]
pushi.e 10
pop.v.i self.anythingcounter

:[132]
push.v self.ears_blocked
pushi.e 3
cmp.i.v GTE
bf [134]

:[133]
pushi.e 10
pop.v.i self.anythingcounter
pushi.e 1
pop.v.i self.actcon
pushi.e 1
pop.v.i self.attack_qual

:[134]
push.v self.anythingcounter
pushi.e 4
cmp.i.v LT
bf [136]

:[135]
push.v self.anythingcounter
pushi.e 1
add.i.v
pop.v.v self.anythingcounter

:[136]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[137]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [139]

:[138]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [140]

:[139]
push.e 0

:[140]
bf [165]

:[141]
pushi.e 1
pop.v.i self.actcon
push.s "obj_lancerboss3_slash_Step_0_gml_222_0"@41400
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_224_0"@41401
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_226_0"@41402
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.v self.anythingcounter
pushi.e 1
cmp.i.v EQ
bf [143]

:[142]
push.s "obj_lancerboss3_slash_Step_0_gml_230_0"@41403
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_232_0"@41404
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_233_0"@41405
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_235_0"@41406
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg

:[143]
push.v self.anythingcounter
pushi.e 2
cmp.i.v EQ
bf [145]

:[144]
push.s "obj_lancerboss3_slash_Step_0_gml_240_0"@41407
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_242_0"@41408
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_243_0"@41409
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_245_0"@41410
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg

:[145]
push.v self.anythingcounter
pushi.e 3
cmp.i.v GTE
bf [160]

:[146]
push.s "obj_lancerboss3_slash_Step_0_gml_250_0"@41411
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_252_0"@41412
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_253_0"@41413
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.ears_blocked
pushi.e 2
cmp.i.v GTE
bf [148]

:[147]
push.s "obj_lancerboss3_slash_Step_0_gml_256_0"@41414
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_258_0"@41415
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_260_0"@41416
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[148]
pushi.e 0
pop.v.i self.attack_qual
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [150]

:[149]
pushi.e 1
pop.v.i self.attack_qual

:[150]
pushi.e 1610
pushenv [153]

:[151]
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [153]

:[152]
pushi.e 1
pop.v.i 1611.attack_qual

:[153]
popenv [151]
push.v self.attack_qual
pushi.e 0
cmp.i.v EQ
bf [157]

:[154]
pushi.e 20
pop.v.i self.actcon
pushi.e 1563
pushenv [156]

:[155]
push.v self.ears_blocked
pushi.e 1
add.i.v
pop.v.v self.ears_blocked

:[156]
popenv [155]
b [158]

:[157]
pushi.e 10
pop.v.i self.anythingcounter

:[158]
push.v self.ears_blocked
pushi.e 3
cmp.i.v GTE
bf [160]

:[159]
pushi.e 10
pop.v.i self.anythingcounter
pushi.e 1
pop.v.i self.actcon
pushi.e 1
pop.v.i self.attack_qual

:[160]
push.v self.anythingcounter
pushi.e 4
cmp.i.v LT
bf [162]

:[161]
push.v self.anythingcounter
pushi.e 1
add.i.v
pop.v.v self.anythingcounter

:[162]
pushi.e 1610
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [164]

:[163]
push.v self.anythingcounter
pop.v.v 1610.anythingxcounter
pushi.e 3
pop.v.i 1610.lancer_act

:[164]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[165]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [167]

:[166]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [168]

:[167]
push.e 0

:[168]
bf [172]

:[169]
pushi.e 0
pop.v.i self.actcon
push.v self.anythingcounter
pushi.e 10
cmp.i.v LT
bf [171]

:[170]
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v
b [172]

:[171]
pushi.e 1
pop.v.i self.defeated
pushi.e 99
pop.v.i global.mnfight
pushi.e 99
pop.v.i global.myfight
pushi.e 1
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 249
pop.v.v [array]self.flag

:[172]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bf [174]

:[173]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [175]

:[174]
push.e 0

:[175]
bf [183]

:[176]
pushi.e 0
pop.v.i self.visible
pushi.e 1610
pushenv [178]

:[177]
pushi.e 0
pop.v.i self.visible

:[178]
popenv [177]
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [182]

:[179]
pushi.e 1366
pushenv [181]

:[180]
pushi.e 0
push.v self.s
pushi.e -9
pop.v.i [stacktop]self.visible

:[181]
popenv [180]

:[182]
pushi.e 3797
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.blocklan
push.v self.depth
push.v self.blocklan
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 358
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.i 231251
setowner.e
push.s "obj_lancerboss3_slash_Step_0_gml_314_0"@41418
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_316_0"@41419
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 21
pop.v.i self.actcon

:[183]
push.v self.actcon
pushi.e 21
cmp.i.v EQ
bf [185]

:[184]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [186]

:[185]
push.e 0

:[186]
bf [196]

:[187]
push.v self.blocklan
pushi.e -9
pushenv [189]

:[188]
call.i instance_destroy(argc=0)
popz.v

:[189]
popenv [188]
pushi.e 1
pop.v.i self.visible
pushi.e 1610
pushenv [191]

:[190]
pushi.e 1
pop.v.i self.visible

:[191]
popenv [190]
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pushi.e 1
cmp.i.v EQ
bf [195]

:[192]
pushi.e 1366
pushenv [194]

:[193]
pushi.e 1
push.v self.s
pushi.e -9
pop.v.i [stacktop]self.visible

:[194]
popenv [193]

:[195]
pushi.e 1
pop.v.i self.actcon

:[196]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [198]

:[197]
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 2
pop.v.i self.con

:[198]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [204]

:[199]
pushi.e 1610
pushenv [201]

:[200]
pushi.e 3981
pop.v.i self.idlesprite

:[201]
popenv [200]
pushi.e 46
pop.v.i global.typer
pushi.e 4
pop.v.i global.fe
pushi.e 5
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_lancerboss3_slash_Step_0_gml_348_0"@41420
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_350_0"@41421
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_351_0"@41422
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_352_0"@41423
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_354_0"@41424
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_355_0"@41425
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_357_0"@41426
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_359_0"@41427
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
pushi.e -5
pushi.e 249
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [203]

:[202]
push.s "obj_lancerboss3_slash_Step_0_gml_363_0"@41428
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_365_0"@41429
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_367_0"@41430
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_368_0"@41431
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_369_0"@41432
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_lancerboss3_slash_Step_0_gml_371_0"@41433
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_372_0"@41434
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_373_0"@41435
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
push.s "obj_lancerboss3_slash_Step_0_gml_374_0"@41436
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg

:[203]
pushi.e 4
pop.v.i self.con
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v

:[204]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [206]

:[205]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [207]

:[206]
push.e 0

:[207]
bf [211]

:[208]
pushi.e 5
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1517
pushenv [210]

:[209]
pushi.e 0
pop.v.i self.noreturn
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[210]
popenv [209]

:[211]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [end]

:[212]
pushi.e 1366
pushenv [214]

:[213]
pushi.e 1
push.v self.l
pushi.e -9
pop.v.i [stacktop]self.visible

:[214]
popenv [213]
pushi.e 1563
pushenv [216]

:[215]
call.i gml_Script_scr_monsterdefeat_ch1(argc=0)
popz.v

:[216]
popenv [215]
call.i instance_destroy(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[end]