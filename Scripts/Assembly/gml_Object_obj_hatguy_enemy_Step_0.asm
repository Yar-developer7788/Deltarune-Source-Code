.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstercomment
push.s "obj_hatguy_enemy_slash_Step_0_gml_4_0"@26474
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
bf [95]

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
bf [28]

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
bf [11]

:[10]
push.v self.dancedwithsusie
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.s "obj_hatguy_enemy_slash_Step_0_gml_29_0"@26475
conv.s.v
push.s "What, you wanna&see my moves?"@26476
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [27]

:[14]
push.v self.dancing
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.v self.dancedwithsusie
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
push.s "obj_hatguy_enemy_slash_Step_0_gml_30_0"@26477
conv.s.v
push.s "Ah-ha, if it's&a madimoizel..."@26478
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [27]

:[19]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_hatguy_enemy_slash_Step_0_gml_33_0"@26479
conv.s.v
push.s "Hey, don't touch&the hat."@26480
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[21]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_hatguy_enemy_slash_Step_0_gml_34_0"@26481
conv.s.v
push.s "Isn't this mix...&schway?"@26482
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[23]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_hatguy_enemy_slash_Step_0_gml_35_0"@26483
conv.s.v
push.s "Alright, alright.&Alright alright alright."@26484
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[25]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_hatguy_enemy_slash_Step_0_gml_36_0"@26485
conv.s.v
push.s "So did they pay&the venue fee?"@26486
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[27]
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
pushi.e 0
pop.v.i self.dancedwithsusie
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[28]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [31]

:[30]
push.e 0

:[31]
bf [60]

:[32]
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
bf [60]

:[33]
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [35]

:[34]
pushi.e -5
push.v 710.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [36]

:[35]
push.e 0

:[36]
bt [45]

:[37]
pushi.e 714
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[38]
pushi.e -5
push.v 714.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [40]

:[39]
push.e 0

:[40]
bt [45]

:[41]
pushi.e 712
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [43]

:[42]
pushi.e -5
push.v 712.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [44]

:[43]
push.e 0

:[44]
b [46]

:[45]
push.e 1

:[46]
bf [56]

:[47]
push.v 718.scon
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
pushi.e 1
pop.v.i 718.scon

:[49]
pushi.e 710
pushenv [51]

:[50]
pushi.e 1
pop.v.i self.heal

:[51]
popenv [50]
pushi.e 714
pushenv [53]

:[52]
pushi.e 1
pop.v.i self.heal

:[53]
popenv [52]
pushi.e 712
pushenv [55]

:[54]
pushi.e 1
pop.v.i self.heal

:[55]
popenv [54]
b [60]

:[56]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [58]

:[57]
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

:[58]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [60]

:[59]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[60]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [62]

:[61]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [63]

:[62]
push.e 0

:[63]
bf [83]

:[64]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [82]

:[65]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
push.v self.heal
pushi.e 1
cmp.i.v EQ
bf [69]

:[66]
push.v 718.scon
pushi.e 0
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1
pop.v.i 718.scon

:[68]
b [73]

:[69]
push.v self.dancing
conv.v.b
not.b
bf [73]

:[70]
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
bf [72]

:[71]
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
b [73]

:[72]
push.v 719.enemy_count
pushi.e 1
add.i.v
pop.v.v 719.enemy_count

:[73]
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
bf [75]

:[74]
push.i 231921
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[75]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[77]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [79]

:[78]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[79]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [81]

:[80]
push.s ""@157
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[81]
pushi.e 1
pop.v.i self.attacked
b [83]

:[82]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[83]
pushi.e 714
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [88]

:[84]
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [88]

:[85]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [88]

:[86]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [88]

:[87]
push.v self.postattackscene
pushi.e 0
cmp.i.v EQ
b [89]

:[88]
push.e 0

:[89]
bf [95]

:[90]
pushi.e 357
pushenv [92]

:[91]
pushi.e 1
pop.v.i self.noreturn

:[92]
popenv [91]
pushi.e 718
pushenv [94]

:[93]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[94]
popenv [93]
pushi.e 1
pop.v.i self.postattackscene

:[95]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[96]
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
bf [98]

:[97]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
pushi.e 1
pop.v.i self.actcon
push.s "obj_hatguy_enemy_slash_Step_0_gml_143_0"@26487
conv.s.v
push.s "* CAP'N - The smooth one. Looks up to K_K./%"@26488
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[101]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [103]

:[102]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [104]

:[103]
push.e 0

:[104]
bf [128]

:[105]
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [109]

:[106]
pushi.e 710
pushenv [108]

:[107]
push.v self.actCounter
push.e 1
add.i.v
pop.v.v self.actCounter

:[108]
popenv [107]

:[109]
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
bt [114]

:[110]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [112]

:[111]
push.v 710.simultotal_funny
pushi.e 1
cmp.i.v EQ
b [113]

:[112]
push.e 0

:[113]
b [115]

:[114]
push.e 1

:[115]
bf [117]

:[116]
push.s "obj_hatguy_enemy_slash_Step_0_gml_165_0"@26489
conv.s.v
push.s "* You danced!/"@26442
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_hatguy_enemy_slash_Step_0_gml_166_0"@26490
conv.s.v
push.s "* Cap'n got lost in the groove!/%"@26491
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
b [128]

:[117]
pushi.e 1
pop.v.b self.dancing
push.v self.groove
pushi.e 0
cmp.i.v EQ
bf [122]

:[118]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [120]

:[119]
push.s "obj_hatguy_enemy_slash_Step_0_gml_177_0"@26492
conv.s.v
push.s "* You danced with Cap'n!/"@26493
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_hatguy_enemy_slash_Step_0_gml_178_0"@26494
conv.s.v
push.s "* Cap'n got lost in the groove!/%"@26491
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [121]

:[120]
push.s "obj_hatguy_enemy_slash_Step_0_gml_183_0"@26495
conv.s.v
push.s "* You danced with Cap'n!/%"@26496
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[121]
pushi.e 1
pop.v.i self.groove
b [123]

:[122]
push.s "obj_hatguy_enemy_slash_Step_0_gml_183_0"@26495
conv.s.v
push.s "* You danced with Cap'n!/%"@26496
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[123]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [125]

:[124]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 20
pop.v.i self.actcon
b [128]

:[125]
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderkri
pushi.e 0
cmp.i.v EQ
bf [127]

:[126]
pushi.e 20
pop.v.i self.actcon
b [128]

:[127]
pushi.e 0
pop.v.i self.actcon

:[128]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [130]

:[129]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [131]

:[130]
push.e 0

:[131]
bf [137]

:[132]
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [136]

:[133]
pushi.e 710
pushenv [135]

:[134]
push.v self.actCounter
push.e 1
add.i.v
pop.v.v self.actCounter

:[135]
popenv [134]

:[136]
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
push.s "obj_hatguy_enemy_slash_Step_0_gml_214_0"@26497
conv.s.v
push.s "* Everyone danced with Cap'n! They're totally lost in the groove!/%"@26498
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

:[137]
push.v self.actcon
pushi.e 5
cmp.i.v EQ
bf [139]

:[138]
pushi.e 1
pop.v.b self.dancing
pushi.e 1
pop.v.i self.actcon

:[139]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [141]

:[140]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [142]

:[141]
push.e 0

:[142]
bf [154]

:[143]
pushi.e 1
pop.v.b self.dancing
pushi.e 1
pop.v.i self.danceCounter
pushi.e 1
pop.v.i self.dancedwithsusie
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
bf [148]

:[144]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [146]

:[145]
push.s "obj_hatguy_enemy_slash_Step_0_gml_241_0"@26499
conv.s.v
push.s "* Susie danced with Cap'n!/"@26500
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_hatguy_enemy_slash_Step_0_gml_242_0"@26501
conv.s.v
push.s "* Cap'n got lost in the groove!/%"@26491
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [147]

:[146]
push.s "obj_hatguy_enemy_slash_Step_0_gml_247_0"@26502
conv.s.v
push.s "* Susie danced with Cap'n!/%"@26503
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[147]
pushi.e 1
pop.v.i self.groove
b [149]

:[148]
push.s "obj_hatguy_enemy_slash_Step_0_gml_247_0"@26502
conv.s.v
push.s "* Susie danced with Cap'n!/%"@26503
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[149]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [151]

:[150]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 20
pop.v.i self.actconsus
b [154]

:[151]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulordersus
pushi.e 0
cmp.i.v EQ
bf [153]

:[152]
pushi.e 20
pop.v.i self.actconsus
b [154]

:[153]
pushi.e 0
pop.v.i self.actconsus

:[154]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [156]

:[155]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [157]

:[156]
push.e 0

:[157]
bf [169]

:[158]
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
bf [163]

:[159]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [161]

:[160]
push.s "obj_hatguy_enemy_slash_Step_0_gml_279_0"@26504
conv.s.v
push.s "* Ralsei danced with Cap'n!/"@26505
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_hatguy_enemy_slash_Step_0_gml_280_0"@26506
conv.s.v
push.s "* Cap'n got lost in the groove!/%"@26491
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [162]

:[161]
push.s "obj_hatguy_enemy_slash_Step_0_gml_285_0"@26507
conv.s.v
push.s "* Ralsei danced with Cap'n!/%"@26508
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[162]
pushi.e 1
pop.v.i self.groove
b [164]

:[163]
push.s "obj_hatguy_enemy_slash_Step_0_gml_285_0"@26507
conv.s.v
push.s "* Ralsei danced with Cap'n!/%"@26508
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[164]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [166]

:[165]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 20
pop.v.i self.actconral
b [169]

:[166]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderral
pushi.e 0
cmp.i.v EQ
bf [168]

:[167]
pushi.e 20
pop.v.i self.actconral
b [169]

:[168]
pushi.e 0
pop.v.i self.actconral

:[169]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [171]

:[170]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [172]

:[171]
push.e 0

:[172]
bf [192]

:[173]
push.v 710.dancing
pushi.e 1
cmp.b.v EQ
bf [177]

:[174]
push.v 714.dancing
pushi.e 1
cmp.b.v EQ
bf [177]

:[175]
push.v 712.dancing
pushi.e 1
cmp.b.v EQ
bf [177]

:[176]
push.v 710.endcon
pushi.e 0
cmp.i.v EQ
b [178]

:[177]
push.e 0

:[178]
bf [180]

:[179]
pushi.e 1
pop.v.i 710.endcon
b [192]

:[180]
push.v 710.endcon
pushi.e 0
cmp.i.v EQ
bf [192]

:[181]
pushi.e 129
pushenv [191]

:[182]
push.v self.sprite_index
pushi.e 862
cmp.i.v EQ
bt [185]

:[183]
push.v self.sprite_index
pushi.e 818
cmp.i.v EQ
bt [185]

:[184]
push.v self.sprite_index
pushi.e 778
cmp.i.v EQ
b [186]

:[185]
push.e 1

:[186]
bf [191]

:[187]
call.i instance_destroy(argc=0)
popz.v
pushi.e 371
pushenv [190]

:[188]
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [190]

:[189]
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

:[190]
popenv [188]

:[191]
popenv [182]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[192]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [195]

:[193]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [195]

:[194]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
b [196]

:[195]
push.e 1

:[196]
bf [end]

:[197]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [end]

:[198]
push.v 710.dancing
pushi.e 1
cmp.b.v EQ
bf [202]

:[199]
push.v 714.dancing
pushi.e 1
cmp.b.v EQ
bf [202]

:[200]
push.v 712.dancing
pushi.e 1
cmp.b.v EQ
bf [202]

:[201]
push.v 710.endcon
pushi.e 0
cmp.i.v EQ
b [203]

:[202]
push.e 0

:[203]
bf [205]

:[204]
pushi.e 1
pop.v.i 710.endcon
b [end]

:[205]
push.v 710.endcon
pushi.e 0
cmp.i.v EQ
bf [end]

:[206]
pushi.e 129
pushenv [216]

:[207]
push.v self.sprite_index
pushi.e 862
cmp.i.v EQ
bt [210]

:[208]
push.v self.sprite_index
pushi.e 818
cmp.i.v EQ
bt [210]

:[209]
push.v self.sprite_index
pushi.e 778
cmp.i.v EQ
b [211]

:[210]
push.e 1

:[211]
bf [216]

:[212]
call.i instance_destroy(argc=0)
popz.v
pushi.e 371
pushenv [215]

:[213]
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [215]

:[214]
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

:[215]
popenv [213]

:[216]
popenv [207]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e 1
pop.v.i self.actcon

:[end]