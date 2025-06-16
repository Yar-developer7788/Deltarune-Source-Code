.localvar 2 arguments
.localvar 7017 a 13563
.localvar 10271 b 13564

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [123]

:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstercomment
push.s "(Tired)"@7993
cmp.s.v EQ
bf [3]

:[2]
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

:[3]
push.v self.solo_music
call.i audio_sound_get_track_position(argc=1)
pushi.e 30
mul.i.v
call.i round(argc=1)
pop.v.v self.solotimer
push.v 710.dancing
pop.v.v self.sweetdanceprev
push.v 712.dancing
pop.v.v self.capndanceprev
push.v 714.dancing
pop.v.v self.kkdanceprev
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
bf [20]

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
pushi.e 0
pop.v.i 718.scon
pushi.e 0
pop.v.i self.simultotal_funny
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
push.s "obj_sweet_enemy_slash_Step_0_gml_27_0"@26384
conv.s.v
push.s "Hey^1, I love&this song!!"@26385
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [19]

:[11]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_sweet_enemy_slash_Step_0_gml_30_0"@26386
conv.s.v
push.s "Feel the beat^1,&feel the beatdown!"@26387
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[13]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_sweet_enemy_slash_Step_0_gml_31_0"@26388
conv.s.v
push.s "Boom^1, du-boom^1,&du-boom,"@26389
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[15]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_sweet_enemy_slash_Step_0_gml_32_0"@26390
conv.s.v
push.s "Get mixed^1,&get remixed!"@26391
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[17]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_sweet_enemy_slash_Step_0_gml_33_0"@26392
conv.s.v
push.s "Taste the rhythm^1,&prism!"@26393
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[19]
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

:[20]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [23]

:[22]
push.e 0

:[23]
bf [65]

:[24]
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
bf [65]

:[25]
pushi.e 710
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [27]

:[26]
pushi.e -5
push.v 710.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [28]

:[27]
push.e 0

:[28]
bt [37]

:[29]
pushi.e 714
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[30]
pushi.e -5
push.v 714.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [32]

:[31]
push.e 0

:[32]
bt [37]

:[33]
pushi.e 712
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [35]

:[34]
pushi.e -5
push.v 712.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 2
cmp.i.v LT
b [36]

:[35]
push.e 0

:[36]
b [38]

:[37]
push.e 1

:[38]
bf [48]

:[39]
push.v 718.scon
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
pushi.e 1
pop.v.i 718.scon

:[41]
pushi.e 710
pushenv [43]

:[42]
pushi.e 1
pop.v.i self.heal

:[43]
popenv [42]
pushi.e 714
pushenv [45]

:[44]
pushi.e 1
pop.v.i self.heal

:[45]
popenv [44]
pushi.e 712
pushenv [47]

:[46]
pushi.e 1
pop.v.i self.heal

:[47]
popenv [46]
b [65]

:[48]
push.v 710.learnedhowtoact
pushi.e 1
cmp.i.v EQ
bf [58]

:[49]
pushi.e 1
pop.v.i self.postattackscene
pushi.e 357
pushenv [51]

:[50]
pushi.e 1
pop.v.i self.noreturn

:[51]
popenv [50]
pushi.e 718
pushenv [53]

:[52]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[53]
popenv [52]
pushi.e 371
pushenv [55]

:[54]
pushi.e 0
pop.v.i self.darkify

:[55]
popenv [54]
pushi.e 363
pushenv [57]

:[56]
call.i instance_destroy(argc=0)
popz.v

:[57]
popenv [56]
b [65]

:[58]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [60]

:[59]
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

:[60]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [62]

:[61]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[62]
pushi.e 872
pushenv [64]

:[63]
pushi.e 2
pop.v.i self.maxxscale
push.d 2.5
pop.v.d self.maxyscale

:[64]
popenv [63]

:[65]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [67]

:[66]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [94]

:[69]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [93]

:[70]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
push.v self.heal
pushi.e 1
cmp.i.v EQ
bf [74]

:[71]
push.v 718.scon
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
pushi.e 1
pop.v.i 718.scon

:[73]
b [84]

:[74]
push.v self.dancing
conv.v.b
not.b
bf [84]

:[75]
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
bf [83]

:[76]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bt [79]

:[77]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bt [79]

:[78]
push.v self.turns
pushi.e 4
cmp.i.v EQ
b [80]

:[79]
push.e 1

:[80]
bf [82]

:[81]
pushi.e 0
pop.v.i self.mytarget

:[82]
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
b [84]

:[83]
push.v 719.enemy_count
pushi.e 1
add.i.v
pop.v.v 719.enemy_count

:[84]
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
bf [86]

:[85]
push.i 231921
setowner.e
push.s "obj_sweet_enemy_slash_Step_0_gml_110_0"@26395
conv.s.v
push.s "* Sweet shimmies defiantly."@26396
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[86]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_sweet_enemy_slash_Step_0_gml_111_0"@26397
conv.s.v
push.s "* Cap'n spins his cap around."@26398
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[88]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [90]

:[89]
push.s "obj_sweet_enemy_slash_Step_0_gml_112_0"@26399
conv.s.v
push.s "* K_K is a CD player."@26400
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[90]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [92]

:[91]
push.s "obj_sweet_enemy_slash_Step_0_gml_113_0"@26401
conv.s.v
push.s "* Smells like music."@26402
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[92]
pushi.e 1
pop.v.i self.attacked
b [94]

:[93]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[94]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [96]

:[95]
push.v self.dancecon
pushi.e 5
cmp.i.v LT
b [97]

:[96]
push.e 0

:[97]
bf [123]

:[98]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [100]

:[99]
push.v self.postattackscene
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [123]

:[102]
push.v self.learnedAct
conv.v.b
not.b
bf [104]

:[103]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 3
cmp.i.v EQ
b [105]

:[104]
push.e 0

:[105]
bf [117]

:[106]
push.v self.letsdance
conv.v.b
bf [110]

:[107]
push.v self.stoppeddance
conv.v.b
not.b
bf [110]

:[108]
push.v self.turns
pushi.e 3
cmp.i.v EQ
bf [110]

:[109]
push.v self.actCounter
pushi.e 3
cmp.i.v LT
b [111]

:[110]
push.e 0

:[111]
bf [117]

:[112]
pushi.e 1
pop.v.b self.stoppeddance
pushi.e 1
pop.v.i self.postattackscene
pushi.e 357
pushenv [114]

:[113]
pushi.e 1
pop.v.i self.noreturn

:[114]
popenv [113]
pushi.e 718
pushenv [116]

:[115]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 1
pop.v.i self.theystoppeddancing

:[116]
popenv [115]

:[117]
push.v 357.noreturn
pushi.e 0
cmp.i.v EQ
bf [123]

:[118]
pushi.e 1
pop.v.i self.postattackscene
pushi.e 357
pushenv [120]

:[119]
pushi.e 1
pop.v.i self.noreturn

:[120]
popenv [119]
pushi.e 718
pushenv [122]

:[121]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[122]
popenv [121]

:[123]
push.v self.dancecon
pushi.e 1
cmp.i.v EQ
bf [132]

:[124]
pushi.e 1
pop.v.b self.learnedAct
pushi.e 712
pushenv [126]

:[125]
pushi.e 1
pop.v.b self.learnedAct

:[126]
popenv [125]
pushi.e 714
pushenv [128]

:[127]
pushi.e 1
pop.v.b self.learnedAct

:[128]
popenv [127]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [130]

:[129]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_184_0"@26404
conv.s.v
push.s "\\EZ* K... Kris!? Hey, Kris!/"@26405
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_185_0"@26406
conv.s.v
push.s "\\EK* ...The hell do we do now!?/"@26407
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_186_0"@26408
conv.s.v
push.s "\\EC* ...We can't ACT if Kris is down!/"@26409
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_188_0"@26410
conv.s.v
push.s "\\E2* Don't worry^1, Susie! I'll just heal them, and.../"@26411
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "L"@9485
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_190_0"@26412
conv.s.v
push.s "\\EL* ... hey, wait^1. Why can't we ACT without Kris?/"@26413
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [131]

:[130]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_280_0"@26414
conv.s.v
push.s "\\EK* Hey, is this really working!?/"@26415
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "L"@9485
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_198_0"@26416
conv.s.v
push.s "\\EL* Maybe if Kris... um.../"@26417
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_199_0"@26418
conv.s.v
push.s "\\EK* Maybe if we tried ballroom dancing instead?/"@26419
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "H"@5303
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_201_0"@26420
conv.s.v
push.s "\\EH* Hey^1, why the hell do we need Kris to ACT?/"@26421
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[131]
push.s "Q"@9489
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_204_0"@26422
conv.s.v
push.s "\\EQ* B-because that's um^1, Kris's unique talent, so.../"@26423
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_206_0"@26424
conv.s.v
push.s "\\E5* You think I'm too stupid to dance by myself!?/%"@26425
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
push.d 1.1
pop.v.d self.dancecon

:[132]
push.v self.dancecon
push.d 1.1
cmp.d.v EQ
bf [134]

:[133]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [135]

:[134]
push.e 0

:[135]
bf [141]

:[136]
pushi.e 1
conv.i.v
push.d 0.16
conv.d.v
pushi.e 818
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
pop.v.v self.susi
push.v 374.depth
pushi.e 1
add.i.v
push.v self.susi
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 352
pushenv [138]

:[137]
call.i instance_destroy(argc=0)
popz.v

:[138]
popenv [137]
pushi.e 859
pushenv [140]

:[139]
call.i instance_destroy(argc=0)
popz.v

:[140]
popenv [139]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 34
pop.v.v [array]self.flag
pushi.e 1
pop.v.i self.learnedhowtoact
push.i 231913
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 231837
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 231833
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 231922
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 231913
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v 714.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 231837
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v 714.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 231833
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v 714.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 231922
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v 714.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
push.i 231913
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v 712.myself
conv.v.i
push.v [arraypopaf]self.canact
pushi.e 2
popaf.e
push.i 231837
setowner.e
push.s ""@157
conv.s.v
pushi.e -5
push.v 712.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 231833
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v 712.myself
conv.v.i
push.v [arraypopaf]self.actcost
pushi.e 2
popaf.e
push.i 231922
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v 712.myself
conv.v.i
push.v [arraypopaf]self.actactor
pushi.e 2
popaf.e
call.i gml_Script_scr_spellmenu_setup(argc=0)
popz.v
push.s "none"@562
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_266_0"@26427
conv.s.v
push.s "* Susie learned \\cSS-Action\\cW! She can ACT from her \\cYMAGIC\\cW menu!/"@26428
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "L"@9485
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_268_0"@26429
conv.s.v
push.s "\\EL* S-Susie^1, I-I don't think you should.../%"@26430
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
push.d 1.15
pop.v.d self.dancecon

:[141]
push.v self.dancecon
push.d 1.15
cmp.d.v EQ
bf [143]

:[142]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [144]

:[143]
push.e 0

:[144]
bf [149]

:[145]
push.v self.susi
pushi.e -9
pushenv [147]

:[146]
pushi.e 10
conv.i.v
push.v 374.y
pushi.e 5
add.i.v
push.v 374.x
pushi.e 100
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[147]
popenv [146]
push.v self.susi
pushi.e -9
push.v [stacktop]self.y
push.v 374.y
pushi.e 3
sub.i.v
cmp.v.v GTE
bf [149]

:[148]
push.v 374.x
pushi.e 100
add.i.v
push.v self.susi
pushi.e -9
pop.v.v [stacktop]self.x
push.v 374.y
pushi.e 5
add.i.v
push.v self.susi
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 0
push.v self.susi
pushi.e -9
pop.v.i [stacktop]self.speed
push.d 1.2
pop.v.d self.dancecon

:[149]
push.v self.dancecon
push.d 1.2
cmp.d.v EQ
bt [154]

:[150]
push.v self.dancescenetimer
pushi.e 0
cmp.i.v GT
bf [152]

:[151]
push.v self.dancescenetimer
pushi.e 146
cmp.i.v LTE
b [153]

:[152]
push.e 0

:[153]
b [155]

:[154]
push.e 1

:[155]
bf [195]

:[156]
push.v self.dancescenetimer
push.e 1
add.i.v
pop.v.v self.dancescenetimer
push.v self.dancescenetimer
pushi.e 1
cmp.i.v EQ
bf [162]

:[157]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushi.e 818
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
pop.v.v self.susi
push.v 374.depth
pushi.e 1
add.i.v
push.v self.susi
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 352
pushenv [159]

:[158]
call.i instance_destroy(argc=0)
popz.v

:[159]
popenv [158]
pushi.e 859
pushenv [161]

:[160]
call.i instance_destroy(argc=0)
popz.v

:[161]
popenv [160]
pushi.e -5
push.v self.susi
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v 374.x
pushi.e 100
add.i.v
push.v self.susi
pushi.e -9
pop.v.v [stacktop]self.x
push.v 374.y
pushi.e 5
add.i.v
push.v self.susi
pushi.e -9
pop.v.v [stacktop]self.y

:[162]
push.v self.dancescenetimer
pushi.e 10
cmp.i.v EQ
bf [168]

:[163]
pushi.e 10
push.v self.susi
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e 1
pop.v.i self.dancescenetimer2
pushi.e 1
conv.i.v
push.d 0.16
conv.d.v
pushi.e 1511
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
pop.v.v self.rals
pushi.e 352
pushenv [165]

:[164]
call.i instance_destroy(argc=0)
popz.v

:[165]
popenv [164]
pushi.e 859
pushenv [167]

:[166]
call.i instance_destroy(argc=0)
popz.v

:[167]
popenv [166]

:[168]
push.v self.dancescenetimer
pushi.e 15
cmp.i.v EQ
bf [170]

:[169]
pushi.e -5
push.v self.susi
pushi.e -9
pop.v.i [stacktop]self.hspeed

:[170]
push.v self.dancescenetimer
pushi.e 25
cmp.i.v EQ
bf [172]

:[171]
pushi.e 10
push.v self.susi
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e 1
pop.v.i self.dancescenetimer2
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_307_0"@26432
conv.s.v
push.s "\\EH* Happy feet dumbass!/%"@26433
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v

:[172]
push.v self.dancescenetimer
pushi.e 30
cmp.i.v EQ
bf [174]

:[173]
pushi.e -5
push.v self.susi
pushi.e -9
pop.v.i [stacktop]self.hspeed

:[174]
push.v self.dancescenetimer
pushi.e 40
cmp.i.v EQ
bf [176]

:[175]
pushi.e 10
push.v self.susi
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e 1
pop.v.i self.dancescenetimer2
pushi.e 25
pop.v.i self.dancescenetimer

:[176]
push.v self.dancescenetimer2
pushi.e 0
cmp.i.v GT
bf [190]

:[177]
push.v self.dancescenetimer2
push.e 1
add.i.v
pop.v.v self.dancescenetimer2
push.v self.dancescenetimer2
pushi.e 1
cmp.i.v GT
bf [179]

:[178]
push.v self.dancescenetimer2
pushi.e 6
cmp.i.v LTE
b [180]

:[179]
push.e 0

:[180]
bf [182]

:[181]
push.v 374.x
pushi.e 6
push.v self.dancescenetimer2
sub.v.i
pushi.e 6
push.v self.dancescenetimer2
sub.v.i
pushi.e -1
mul.i.v
call.i random_range(argc=2)
add.v.v
push.v self.rals
pushi.e -9
pop.v.v [stacktop]self.x
push.v 374.y
pushi.e 6
push.v self.dancescenetimer2
sub.v.i
pushi.e 6
push.v self.dancescenetimer2
sub.v.i
pushi.e -1
mul.i.v
call.i random_range(argc=2)
add.v.v
push.v self.rals
pushi.e -9
pop.v.v [stacktop]self.y

:[182]
push.v self.dancescenetimer2
pushi.e 7
cmp.i.v EQ
bf [184]

:[183]
push.v 374.x
push.v self.rals
pushi.e -9
pop.v.v [stacktop]self.x
push.v 374.y
push.v self.rals
pushi.e -9
pop.v.v [stacktop]self.y

:[184]
push.v self.dancescenetimer2
pushi.e 6
cmp.i.v GT
bf [186]

:[185]
push.v self.dancescenetimer2
pushi.e 12
cmp.i.v LT
b [187]

:[186]
push.e 0

:[187]
bf [188]

:[188]
push.v self.dancescenetimer2
pushi.e 12
cmp.i.v EQ
bf [190]

:[189]
pushi.e 0
pop.v.i self.dancescenetimer2

:[190]
push.v self.dancescenetimer
pushi.e 36
cmp.i.v GTE
bf [192]

:[191]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [193]

:[192]
push.e 0

:[193]
bf [195]

:[194]
pushi.e 0
pop.v.i self.dancescenetimer
pushi.e 0
push.v self.susi
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e 2
push.v self.rals
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.rals
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 2.3
pop.v.d self.dancecon

:[195]
push.v self.dancecon
push.d 2.3
cmp.d.v EQ
bf [197]

:[196]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [198]

:[197]
push.e 0

:[198]
bf [204]

:[199]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushi.e 818
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
pop.v.v self.susi
push.v 374.x
pushi.e 80
add.i.v
push.v self.susi
pushi.e -9
pop.v.v [stacktop]self.x
push.v 374.y
pushi.e 5
add.i.v
push.v self.susi
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 1
conv.i.v
push.d 0.16
conv.d.v
pushi.e 1511
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
pushi.e 352
pushenv [201]

:[200]
call.i instance_destroy(argc=0)
popz.v

:[201]
popenv [200]
pushi.e 859
pushenv [203]

:[202]
call.i instance_destroy(argc=0)
popz.v

:[203]
popenv [202]
push.d 2.4
pop.v.d self.dancecon

:[204]
push.v self.dancecon
push.d 2.4
cmp.d.v EQ
bf [206]

:[205]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [207]

:[206]
push.e 0

:[207]
bf [221]

:[208]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
push.s "none"@562
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
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
pop.v.v self.susi
push.v 374.x
pushi.e 100
add.i.v
push.v self.susi
pushi.e -9
pop.v.v [stacktop]self.x
push.v 374.y
pushi.e 5
add.i.v
push.v self.susi
pushi.e -9
pop.v.v [stacktop]self.y
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
push.s "obj_sweet_enemy_slash_Step_0_gml_354_0"@26434
conv.s.v
push.s "* (Susie made Ralsei learn \\cVR-Action\\cW even though he didn't want to!)/"@26435
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "U"@4641
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_356_0"@26436
conv.s.v
push.s "\\EU* (I... I'm sorry^1, Kris!!!)/%"@26437
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e 718
pushenv [210]

:[209]
pushi.e 1
pop.v.i self.happyfeetscene

:[210]
popenv [209]
push.v self.danceCounter
pushi.e 1
cmp.i.v GT
bf [212]

:[211]
pushi.e 1
pop.v.i self.danceCounter

:[212]
push.v 712.danceCounter
pushi.e 1
cmp.i.v GT
bf [214]

:[213]
pushi.e 1
pop.v.i 712.danceCounter

:[214]
push.v 714.danceCounter
pushi.e 1
cmp.i.v GT
bf [216]

:[215]
pushi.e 1
pop.v.i 714.danceCounter

:[216]
pushi.e 1
pop.v.i self.happyfeetscenejusthappened
pushi.e 352
pushenv [218]

:[217]
call.i instance_destroy(argc=0)
popz.v

:[218]
popenv [217]
pushi.e 859
pushenv [220]

:[219]
call.i instance_destroy(argc=0)
popz.v

:[220]
popenv [219]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 34
pop.v.v [array]self.flag
push.d 2.5
pop.v.d self.dancecon

:[221]
push.v self.dancecon
push.d 2.5
cmp.d.v EQ
bf [223]

:[222]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [224]

:[223]
push.e 0

:[224]
bf [229]

:[225]
push.v self.susi
pushi.e -9
pushenv [227]

:[226]
pushi.e 10
conv.i.v
push.v 373.y
push.v 373.x
call.i move_towards_point(argc=3)
popz.v
push.v 374.depth
pushi.e 1
add.i.v
pop.v.v self.depth

:[227]
popenv [226]
push.v self.susi
pushi.e -9
push.v [stacktop]self.y
push.v 373.y
pushi.e 8
add.i.v
cmp.v.v LTE
bf [229]

:[228]
push.v 373.x
push.v self.susi
pushi.e -9
pop.v.v [stacktop]self.x
push.v 373.y
push.v self.susi
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 0
push.v self.susi
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 4
pop.v.i self.dancecon

:[229]
push.v self.dancecon
pushi.e 4
cmp.i.v EQ
bf [231]

:[230]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [232]

:[231]
push.e 0

:[232]
bf [236]

:[233]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
pushi.e 0
pop.v.i self.dancecon
pushi.e 718
pushenv [235]

:[234]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[235]
popenv [234]
push.s "none"@562
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v

:[236]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [350]

:[237]
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
bf [239]

:[238]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [240]

:[239]
push.e 0

:[240]
bf [242]

:[241]
pushi.e 1
pop.v.i self.actcon
push.s "obj_sweet_enemy_slash_Step_0_gml_403_0"@26439
conv.s.v
push.s "* SWEET - The energetic one. Looks up to K_K./%"@26440
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[242]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [244]

:[243]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [245]

:[244]
push.e 0

:[245]
bf [265]

:[246]
push.v self.actCounter
push.e 1
add.i.v
pop.v.v self.actCounter
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
bt [251]

:[247]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [249]

:[248]
push.v self.simultotal_funny
pushi.e 1
cmp.i.v EQ
b [250]

:[249]
push.e 0

:[250]
b [252]

:[251]
push.e 1

:[252]
bf [254]

:[253]
push.s "obj_sweet_enemy_slash_Step_0_gml_422_0"@26441
conv.s.v
push.s "* You danced!/"@26442
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_423_0"@26443
conv.s.v
push.s "* Sweet got lost in the groove!/%"@26444
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
b [265]

:[254]
pushi.e 1
pop.v.b self.dancing
push.v self.groove
pushi.e 0
cmp.i.v EQ
bf [259]

:[255]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [257]

:[256]
push.s "obj_sweet_enemy_slash_Step_0_gml_435_0"@26445
conv.s.v
push.s "* You danced with Sweet!/"@26446
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_436_0"@26447
conv.s.v
push.s "* Sweet got lost in the groove!/%"@26444
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [258]

:[257]
push.s "obj_sweet_enemy_slash_Step_0_gml_534_0"@26448
conv.s.v
push.s "* You danced with Sweet!/%"@26449
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[258]
pushi.e 1
pop.v.i self.groove
b [260]

:[259]
push.s "obj_sweet_enemy_slash_Step_0_gml_441_0"@26450
conv.s.v
push.s "* You danced with Sweet!/%"@26449
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[260]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [262]

:[261]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 20
pop.v.i self.actcon
b [265]

:[262]
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderkri
pushi.e 0
cmp.i.v EQ
bf [264]

:[263]
pushi.e 20
pop.v.i self.actcon
b [265]

:[264]
pushi.e 0
pop.v.i self.actcon

:[265]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [267]

:[266]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [268]

:[267]
push.e 0

:[268]
bf [270]

:[269]
push.v self.actCounter
push.e 1
add.i.v
pop.v.v self.actCounter
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
push.s "obj_sweet_enemy_slash_Step_0_gml_470_0"@26451
conv.s.v
push.s "* Everyone danced with Sweet! They're totally lost in the groove!/%"@26452
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

:[270]
push.v self.actcon
pushi.e 5
cmp.i.v EQ
bf [272]

:[271]
pushi.e 1
pop.v.b self.dancing
pushi.e 1
pop.v.i self.actcon

:[272]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [274]

:[273]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [275]

:[274]
push.e 0

:[275]
bf [287]

:[276]
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
bf [281]

:[277]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [279]

:[278]
push.s "obj_sweet_enemy_slash_Step_0_gml_495_0"@26453
conv.s.v
push.s "* Susie danced with Sweet!/"@26454
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_496_0"@26455
conv.s.v
push.s "* Sweet got lost in the groove!/%"@26444
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [280]

:[279]
push.s "obj_sweet_enemy_slash_Step_0_gml_501_0"@26456
conv.s.v
push.s "* Susie danced with Sweet!/%"@26457
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[280]
pushi.e 1
pop.v.i self.groove
b [282]

:[281]
push.s "obj_sweet_enemy_slash_Step_0_gml_501_0"@26456
conv.s.v
push.s "* Susie danced with Sweet!/%"@26457
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[282]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [284]

:[283]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 20
pop.v.i self.actconsus
b [287]

:[284]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulordersus
pushi.e 0
cmp.i.v EQ
bf [286]

:[285]
pushi.e 20
pop.v.i self.actconsus
b [287]

:[286]
pushi.e 0
pop.v.i self.actconsus

:[287]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [289]

:[288]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [290]

:[289]
push.e 0

:[290]
bf [302]

:[291]
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
bf [296]

:[292]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [294]

:[293]
push.s "obj_sweet_enemy_slash_Step_0_gml_532_0"@26458
conv.s.v
push.s "* Ralsei danced with Sweet!/"@26459
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_sweet_enemy_slash_Step_0_gml_533_0"@26460
conv.s.v
push.s "* Sweet got lost in the groove!/%"@26444
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [295]

:[294]
push.s "obj_sweet_enemy_slash_Step_0_gml_538_0"@26461
conv.s.v
push.s "* Ralsei danced with Sweet!/%"@26462
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[295]
pushi.e 1
pop.v.i self.groove
b [297]

:[296]
push.s "obj_sweet_enemy_slash_Step_0_gml_538_0"@26461
conv.s.v
push.s "* Ralsei danced with Sweet!/%"@26462
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[297]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [299]

:[298]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 20
pop.v.i self.actconral
b [302]

:[299]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderral
pushi.e 0
cmp.i.v EQ
bf [301]

:[300]
pushi.e 20
pop.v.i self.actconral
b [302]

:[301]
pushi.e 0
pop.v.i self.actconral

:[302]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [304]

:[303]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [305]

:[304]
push.e 0

:[305]
bf [325]

:[306]
push.v 710.dancing
pushi.e 1
cmp.b.v EQ
bf [310]

:[307]
push.v 714.dancing
pushi.e 1
cmp.b.v EQ
bf [310]

:[308]
push.v 712.dancing
pushi.e 1
cmp.b.v EQ
bf [310]

:[309]
push.v self.endcon
pushi.e 0
cmp.i.v EQ
b [311]

:[310]
push.e 0

:[311]
bf [313]

:[312]
pushi.e 1
pop.v.i self.endcon
b [325]

:[313]
push.v self.endcon
pushi.e 0
cmp.i.v EQ
bf [325]

:[314]
pushi.e 129
pushenv [324]

:[315]
push.v self.sprite_index
pushi.e 862
cmp.i.v EQ
bt [318]

:[316]
push.v self.sprite_index
pushi.e 818
cmp.i.v EQ
bt [318]

:[317]
push.v self.sprite_index
pushi.e 778
cmp.i.v EQ
b [319]

:[318]
push.e 1

:[319]
bf [324]

:[320]
call.i instance_destroy(argc=0)
popz.v
pushi.e 371
pushenv [323]

:[321]
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [323]

:[322]
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

:[323]
popenv [321]

:[324]
popenv [315]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[325]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [328]

:[326]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [328]

:[327]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
b [329]

:[328]
push.e 1

:[329]
bf [350]

:[330]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [350]

:[331]
push.v 710.dancing
pushi.e 1
cmp.b.v EQ
bf [335]

:[332]
push.v 714.dancing
pushi.e 1
cmp.b.v EQ
bf [335]

:[333]
push.v 712.dancing
pushi.e 1
cmp.b.v EQ
bf [335]

:[334]
push.v self.endcon
pushi.e 0
cmp.i.v EQ
b [336]

:[335]
push.e 0

:[336]
bf [338]

:[337]
pushi.e 1
pop.v.i self.endcon
b [350]

:[338]
push.v self.endcon
pushi.e 0
cmp.i.v EQ
bf [350]

:[339]
pushi.e 129
pushenv [349]

:[340]
push.v self.sprite_index
pushi.e 862
cmp.i.v EQ
bt [343]

:[341]
push.v self.sprite_index
pushi.e 818
cmp.i.v EQ
bt [343]

:[342]
push.v self.sprite_index
pushi.e 778
cmp.i.v EQ
b [344]

:[343]
push.e 1

:[344]
bf [349]

:[345]
call.i instance_destroy(argc=0)
popz.v
pushi.e 371
pushenv [348]

:[346]
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [348]

:[347]
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

:[348]
popenv [346]

:[349]
popenv [340]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e 1
pop.v.i self.actcon

:[350]
push.v self.endcon
pushi.e 1
cmp.i.v EQ
bf [354]

:[351]
push.d 1.5
pop.v.d self.endcon
push.s "                            "@26463
pop.v.s local.a
push.s "obj_sweet_enemy_slash_Step_0_gml_699_0"@26464
conv.s.v
push.s "* Everyone is dancing!"@26465
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.b
pushloc.v local.b
pushloc.v local.a
add.v.v
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 64
pushenv [353]

:[352]
pushi.e 3
pop.v.i self.rate
pushi.e 0
pop.v.i self.skippable

:[353]
popenv [352]
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e 126
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e 130
conv.i.v
call.i gml_Script_snd_volume(argc=3)
popz.v

:[354]
push.v self.endcon
push.d 1.5
cmp.d.v EQ
bf [357]

:[355]
push.v self.endtimer
push.e 1
add.i.v
pop.v.v self.endtimer
push.v self.endtimer
pushi.e 150
cmp.i.v GT
bf [357]

:[356]
pushi.e 2
pop.v.i self.endcon

:[357]
push.v self.endcon
pushi.e 2
cmp.i.v EQ
bf [361]

:[358]
pushi.e 64
pushenv [360]

:[359]
call.i instance_destroy(argc=0)
popz.v

:[360]
popenv [359]
pushi.e 720
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i self.endcon

:[361]
push.v self.endcon
pushi.e 4
cmp.i.v EQ
bf [367]

:[362]
pushi.e 5
pop.v.i self.endcon
pushi.e 714
pushenv [364]

:[363]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v

:[364]
popenv [363]
pushi.e 712
pushenv [366]

:[365]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v

:[366]
popenv [365]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
pushi.e 1
pop.v.i 357.skipvictory
call.i gml_Script_scr_wincombat(argc=0)
popz.v

:[367]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[368]
pushi.e 77
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[369]
push.v self.songplaying
conv.v.b
bf [end]

:[370]
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_sound_get_track_position(argc=1)
pop.v.v self.songtime
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i audio_pause_sound(argc=1)
popz.v
pushi.e 0
pop.v.i self.songplaying

:[end]