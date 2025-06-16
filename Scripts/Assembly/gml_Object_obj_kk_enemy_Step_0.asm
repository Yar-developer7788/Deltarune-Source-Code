.localvar 2 arguments
.localvar 7017 a 13593

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstercomment
push.s "obj_kk_enemy_slash_Step_0_gml_3_0"@26513
conv.s.v
push.s "(Tired)"@7993
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
cmp.v.v EQ
bf [2]

:[1]
push.i 231984
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstercomment
push.i 231746
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterstatus

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [96]

:[3]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [5]

:[4]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [38]

:[7]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [9]

:[8]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[9]
pushi.e 0
pop.v.i self.postattackscene
pushi.e 0
pop.v.i self.heal
pushi.e 0
pop.v.i self.groove
pushi.e 50
pop.v.i global.typer
pushi.e 0
pop.v.i local.a
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[10]
pushi.e -5
push.v 710.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v 710.myself
conv.v.i
push.v [array]self.monstermaxhp
cmp.v.v LT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1
pop.v.i local.a

:[14]
pushi.e 712
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[15]
pushi.e -5
push.v 712.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v 712.myself
conv.v.i
push.v [array]self.monstermaxhp
cmp.v.v LT
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 1
pop.v.i local.a

:[19]
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
push.v self.dancing
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_kk_enemy_slash_Step_0_gml_35_0"@26514
conv.s.v
push.s "Dance! Dance!&Everybody dance!"@26515
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [37]

:[21]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_kk_enemy_slash_Step_0_gml_38_0"@26516
conv.s.v
push.s "I like this song."@26517
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[23]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_kk_enemy_slash_Step_0_gml_39_0"@26518
conv.s.v
push.s "Can we dance?"@26519
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[25]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_kk_enemy_slash_Step_0_gml_40_0"@26520
conv.s.v
push.s "Ring-a-ding-dong."@26521
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[27]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [29]

:[28]
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
push.s "obj_kk_enemy_slash_Step_0_gml_41_0"@26522
conv.s.v
push.s "Are we having fun?"@26523
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[32]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [34]

:[33]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
push.s "obj_kk_enemy_slash_Step_0_gml_42_0"@26524
conv.s.v
push.s "Does anyone want&this milk I found?"@26525
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[37]
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[38]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [41]

:[40]
push.e 0

:[41]
bf [70]

:[42]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [70]

:[43]
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [45]

:[44]
pushi.e -5
push.v 710.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [46]

:[45]
push.e 0

:[46]
bt [55]

:[47]
pushi.e 714
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [49]

:[48]
pushi.e -5
push.v 714.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [50]

:[49]
push.e 0

:[50]
bt [55]

:[51]
pushi.e 712
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [53]

:[52]
pushi.e -5
push.v 712.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [54]

:[53]
push.e 0

:[54]
b [56]

:[55]
push.e 1

:[56]
bf [66]

:[57]
push.v 718.scon
pushi.e 0
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1
pop.v.i 718.scon

:[59]
pushi.e 710
pushenv [61]

:[60]
pushi.e 1
pop.v.i self.heal

:[61]
popenv [60]
pushi.e 714
pushenv [63]

:[62]
pushi.e 1
pop.v.i self.heal

:[63]
popenv [62]
pushi.e 712
pushenv [65]

:[64]
pushi.e 1
pop.v.i self.heal

:[65]
popenv [64]
b [70]

:[66]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [68]

:[67]
pushi.e 872
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 206
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[68]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [70]

:[69]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[70]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [72]

:[71]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [73]

:[72]
push.e 0

:[73]
bf [85]

:[74]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [84]

:[75]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
push.v self.heal
pushi.e 1
cmp.i.v EQ
bf [79]

:[76]
push.v 718.scon
pushi.e 0
cmp.i.v EQ
bf [78]

:[77]
pushi.e 1
pop.v.i 718.scon

:[78]
b [83]

:[79]
push.v self.dancing
conv.v.b
not.b
bf [83]

:[80]
push.i 231869
setowner.e
push.s "musical bullets"@26394
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 719
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [82]

:[81]
pushi.e 719
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dc
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 722
conv.i.v
push.v 872.y
pushi.e 80
add.i.v
push.v 872.x
pushi.e 115
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.boombox
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.boombox
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.boombox
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 722
conv.i.v
push.v 872.y
pushi.e 80
add.i.v
push.v 872.x
pushi.e 115
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.boombox
pushi.e -1
push.v self.boombox
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.boombox
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.boombox
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 727
conv.i.v
push.v 872.y
pushi.e 100
sub.i.v
push.v 872.x
pushi.e 60
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dancer
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dancer
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.dancer
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 727
conv.i.v
push.v 872.y
pushi.e 100
sub.i.v
push.v 872.x
pushi.e 20
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dancer
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dancer
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.dancer
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 727
conv.i.v
push.v 872.y
pushi.e 100
sub.i.v
push.v 872.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dancer
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dancer
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.mytarget
push.v self.dancer
pushi.e -9
pop.v.v [stacktop]self.target
b [83]

:[82]
push.v 719.enemy_count
pushi.e 1
add.i.v
pop.v.v 719.enemy_count

:[83]
pushi.e 235
pop.v.i global.turntimer
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.attacked
b [85]

:[84]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[85]
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [89]

:[86]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [89]

:[87]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [89]

:[88]
push.v self.postattackscene
pushi.e 0
cmp.i.v EQ
b [90]

:[89]
push.e 0

:[90]
bf [96]

:[91]
pushi.e 357
pushenv [93]

:[92]
pushi.e 1
pop.v.i self.noreturn

:[93]
popenv [92]
pushi.e 718
pushenv [95]

:[94]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[95]
popenv [94]
pushi.e 1
pop.v.i self.postattackscene

:[96]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[97]
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
bf [99]

:[98]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
pushi.e 1
pop.v.i self.actcon
push.s "obj_kk_enemy_slash_Step_0_gml_151_0"@26526
conv.s.v
push.s "* K_K - The silly one. Looks up to the other two./%"@26527
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[102]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [104]

:[103]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [105]

:[104]
push.e 0

:[105]
bf [129]

:[106]
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [110]

:[107]
pushi.e 710
pushenv [109]

:[108]
push.v self.actCounter
push.e 1
add.i.v
pop.v.v self.actCounter

:[109]
popenv [108]

:[110]
pushi.e 1
pop.v.i self.danceCounter
pushi.e 1
conv.i.v
push.d 0.16
conv.d.v
pushi.e 862
conv.i.v
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bt [115]

:[111]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [113]

:[112]
push.v 710.simultotal_funny
pushi.e 1
cmp.i.v EQ
b [114]

:[113]
push.e 0

:[114]
b [116]

:[115]
push.e 1

:[116]
bf [118]

:[117]
push.s "obj_kk_enemy_slash_Step_0_gml_172_0"@26528
conv.s.v
push.s "* You danced!/"@26442
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_kk_enemy_slash_Step_0_gml_173_0"@26529
conv.s.v
push.s "* K_K got lost in the groove!/%"@26530
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 4
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
b [129]

:[118]
pushi.e 1
pop.v.b self.dancing
push.v self.groove
pushi.e 0
cmp.i.v EQ
bf [123]

:[119]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [121]

:[120]
push.s "obj_kk_enemy_slash_Step_0_gml_184_0"@26531
conv.s.v
push.s "* You danced with K_K!/"@26532
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_kk_enemy_slash_Step_0_gml_185_0"@26533
conv.s.v
push.s "* K_K  got lost in the groove!/%"@26534
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [122]

:[121]
push.s "obj_kk_enemy_slash_Step_0_gml_190_0"@26535
conv.s.v
push.s "* You danced with K_K!/%"@26536
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[122]
pushi.e 1
pop.v.i self.groove
b [124]

:[123]
push.s "obj_kk_enemy_slash_Step_0_gml_190_0"@26535
conv.s.v
push.s "* You danced with K_K!/%"@26536
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[124]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [126]

:[125]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 20
pop.v.i self.actcon
b [129]

:[126]
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderkri
pushi.e 0
cmp.i.v EQ
bf [128]

:[127]
pushi.e 20
pop.v.i self.actcon
b [129]

:[128]
pushi.e 0
pop.v.i self.actcon

:[129]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [131]

:[130]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [132]

:[131]
push.e 0

:[132]
bf [138]

:[133]
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [137]

:[134]
pushi.e 710
pushenv [136]

:[135]
push.v self.actCounter
push.e 1
add.i.v
pop.v.v self.actCounter

:[136]
popenv [135]

:[137]
pushi.e 2
pop.v.i self.danceCounter
pushi.e 1
conv.i.v
push.d 0.16
conv.d.v
pushi.e 862
conv.i.v
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
pushi.e 1
conv.i.v
push.d 0.16
conv.d.v
pushi.e 778
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
pushi.e 1
conv.i.v
push.d 0.16
conv.d.v
pushi.e 818
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
push.s "obj_kk_enemy_slash_Step_0_gml_221_0"@26537
conv.s.v
push.s "* Everyone danced with K_K! They're totally lost in the groove!/%"@26538
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 4
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[138]
push.v self.actcon
pushi.e 5
cmp.i.v EQ
bf [140]

:[139]
pushi.e 1
pop.v.b self.dancing
pushi.e 1
pop.v.i self.actcon

:[140]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [142]

:[141]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [143]

:[142]
push.e 0

:[143]
bf [155]

:[144]
pushi.e 1
pop.v.b self.dancing
pushi.e 1
pop.v.i self.danceCounter
pushi.e 1
conv.i.v
push.d 0.16
conv.d.v
pushi.e 818
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
push.v self.groove
pushi.e 0
cmp.i.v EQ
bf [149]

:[145]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [147]

:[146]
push.s "obj_kk_enemy_slash_Step_0_gml_248_0"@26539
conv.s.v
push.s "* Susie danced with K_K!/"@26540
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_kk_enemy_slash_Step_0_gml_249_0"@26541
conv.s.v
push.s "* K_K got lost in the groove!/%"@26530
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [148]

:[147]
push.s "obj_kk_enemy_slash_Step_0_gml_254_0"@26542
conv.s.v
push.s "* Susie danced with K_K!/%"@26543
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[148]
pushi.e 1
pop.v.i self.groove
b [150]

:[149]
push.s "obj_kk_enemy_slash_Step_0_gml_254_0"@26542
conv.s.v
push.s "* Susie danced with K_K!/%"@26543
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[150]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [152]

:[151]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 20
pop.v.i self.actconsus
b [155]

:[152]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulordersus
pushi.e 0
cmp.i.v EQ
bf [154]

:[153]
pushi.e 20
pop.v.i self.actconsus
b [155]

:[154]
pushi.e 0
pop.v.i self.actconsus

:[155]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [157]

:[156]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [158]

:[157]
push.e 0

:[158]
bf [170]

:[159]
pushi.e 1
pop.v.b self.dancing
pushi.e 1
pop.v.i self.danceCounter
pushi.e 1
conv.i.v
push.d 0.16
conv.d.v
pushi.e 778
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
push.v self.groove
pushi.e 0
cmp.i.v EQ
bf [164]

:[160]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [162]

:[161]
push.s "obj_kk_enemy_slash_Step_0_gml_287_0"@26544
conv.s.v
push.s "* Ralsei danced with K_K!/"@26545
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_kk_enemy_slash_Step_0_gml_288_0"@26546
conv.s.v
push.s "* K_K got lost in the groove!/%"@26530
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [163]

:[162]
push.s "obj_kk_enemy_slash_Step_0_gml_293_0"@26547
conv.s.v
push.s "* Ralsei danced with K_K!/%"@26548
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[163]
pushi.e 1
pop.v.i self.groove
b [165]

:[164]
push.s "obj_kk_enemy_slash_Step_0_gml_293_0"@26547
conv.s.v
push.s "* Ralsei danced with K_K!/%"@26548
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[165]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [167]

:[166]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 20
pop.v.i self.actconral
b [170]

:[167]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderral
pushi.e 0
cmp.i.v EQ
bf [169]

:[168]
pushi.e 20
pop.v.i self.actconral
b [170]

:[169]
pushi.e 0
pop.v.i self.actconral

:[170]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [172]

:[171]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [173]

:[172]
push.e 0

:[173]
bf [193]

:[174]
push.v 710.dancing
pushi.e 1
cmp.b.v EQ
bf [178]

:[175]
push.v 714.dancing
pushi.e 1
cmp.b.v EQ
bf [178]

:[176]
push.v 712.dancing
pushi.e 1
cmp.b.v EQ
bf [178]

:[177]
push.v 710.endcon
pushi.e 0
cmp.i.v EQ
b [179]

:[178]
push.e 0

:[179]
bf [181]

:[180]
pushi.e 1
pop.v.i 710.endcon
b [193]

:[181]
push.v 710.endcon
pushi.e 0
cmp.i.v EQ
bf [193]

:[182]
pushi.e 0
pop.v.i self.actcon
pushi.e 0
pop.v.i self.acting
pushi.e 129
pushenv [192]

:[183]
push.v self.sprite_index
pushi.e 862
cmp.i.v EQ
bt [186]

:[184]
push.v self.sprite_index
pushi.e 818
cmp.i.v EQ
bt [186]

:[185]
push.v self.sprite_index
pushi.e 778
cmp.i.v EQ
b [187]

:[186]
push.e 1

:[187]
bf [192]

:[188]
call.i instance_destroy(argc=0)
popz.v
pushi.e 371
pushenv [191]

:[189]
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [191]

:[190]
pushi.e 1
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.acttimer
pushi.e 0
pop.v.i self.state
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction

:[191]
popenv [189]

:[192]
popenv [183]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[193]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [196]

:[194]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [196]

:[195]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
b [197]

:[196]
push.e 1

:[197]
bf [end]

:[198]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [end]

:[199]
push.v 710.dancing
pushi.e 1
cmp.b.v EQ
bf [203]

:[200]
push.v 714.dancing
pushi.e 1
cmp.b.v EQ
bf [203]

:[201]
push.v 712.dancing
pushi.e 1
cmp.b.v EQ
bf [203]

:[202]
push.v 710.endcon
pushi.e 0
cmp.i.v EQ
b [204]

:[203]
push.e 0

:[204]
bf [206]

:[205]
pushi.e 1
pop.v.i 710.endcon
b [end]

:[206]
push.v 710.endcon
pushi.e 0
cmp.i.v EQ
bf [end]

:[207]
pushi.e 129
pushenv [217]

:[208]
push.v self.sprite_index
pushi.e 862
cmp.i.v EQ
bt [211]

:[209]
push.v self.sprite_index
pushi.e 818
cmp.i.v EQ
bt [211]

:[210]
push.v self.sprite_index
pushi.e 778
cmp.i.v EQ
b [212]

:[211]
push.e 1

:[212]
bf [217]

:[213]
call.i instance_destroy(argc=0)
popz.v
pushi.e 371
pushenv [216]

:[214]
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [216]

:[215]
pushi.e 1
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.acttimer
pushi.e 0
pop.v.i self.state
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction

:[216]
popenv [214]

:[217]
popenv [208]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e 1
pop.v.i self.actcon

:[end]