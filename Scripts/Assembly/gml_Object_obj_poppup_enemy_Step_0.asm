.localvar 2 arguments
.localvar 23271 dialogText 10440
.localvar 23292 battleText 10441
.localvar 23298 randomText 10442
.localvar 23299 randomChoice 10443
.localvar 6565 __i 10447
.localvar 23341 randomX 10448
.localvar 23342 randomY 10449
.localvar 107 i 10452
.localvar 7017 a 10453
.localvar 23377 random_line 10454
.localvar 156 line 10455

:[0]
push.v self.blockbuffer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.blockbuffer
push.e 1
sub.i.v
pop.v.v self.blockbuffer

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [92]

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
bf [34]

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
pushi.e 427
pushenv [11]

:[10]
pushi.e 2
pop.v.i self.state

:[11]
popenv [10]
pushi.e 50
pop.v.i global.typer
push.s "obj_poppup_enemy_slash_Step_0_gml_18_0"@23270
conv.s.v
push.s ""@157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText
pushi.e 100
conv.i.v
call.i random(argc=1)
pushi.e 99
cmp.i.v GTE
bf [13]

:[12]
push.s "obj_poppup_enemy_slash_Step_0_gml_22_0"@23272
conv.s.v
push.s "GOKARMASHI&O INARY....?"@23273
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText
b [26]

:[13]
push.s "obj_poppup_enemy_slash_Step_0_gml_25_0"@23274
conv.s.v
push.s ""@157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText
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
bf [15]

:[14]
push.s "obj_poppup_enemy_slash_Step_0_gml_27_0"@23275
conv.s.v
push.s ".....ASOBOH&......?"@23276
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText

:[15]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_poppup_enemy_slash_Step_0_gml_28_0"@23277
conv.s.v
push.s "...OTANJOBY..&OMEDETOH...?"@23278
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText

:[17]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_poppup_enemy_slash_Step_0_gml_29_0"@23279
conv.s.v
push.s "This application is only&supported by OS 2000."@23280
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText

:[19]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_poppup_enemy_slash_Step_0_gml_30_0"@23281
conv.s.v
push.s "Click Here! Click Here!&Click Here! Click Here!"@23282
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText

:[21]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.v self.becameTired
conv.v.b
not.b
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 1
pop.v.b self.becameTired
push.s "obj_poppup_enemy_slash_Step_0_gml_35_0"@23283
conv.s.v
push.s "...NEMMUY..."@23284
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText

:[26]
push.v self.avoiding
conv.v.b
bf [28]

:[27]
push.s "obj_poppup_enemy_slash_Step_0_gml_41_0"@23285
conv.s.v
push.s "NEED...&LOOK...&ME..."@23286
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText

:[28]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [30]

:[29]
push.v self.becameSpareable
conv.v.b
not.b
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 1
pop.v.b self.becameSpareable
pushi.e 0
pop.v.b self.avoiding
push.s "obj_poppup_enemy_slash_Step_0_gml_48_0"@23287
conv.s.v
push.s "...HAPPI..."@23288
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText

:[33]
pushloc.v local.dialogText
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 10
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e 125
sub.i.v
pushi.e 62
sub.i.v
pushi.e 172
add.i.v
push.v self.x
pushi.e 40
sub.i.v
pushi.e 42
sub.i.v
pushi.e 70
add.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[34]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [37]

:[36]
push.e 0

:[37]
bf [43]

:[38]
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
bf [43]

:[39]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [41]

:[40]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[41]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [43]

:[42]
pushi.e 872
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
call.i gml_Script_instance_create(argc=3)
popz.v

:[43]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [45]

:[44]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [46]

:[45]
push.e 0

:[46]
bf [92]

:[47]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [91]

:[48]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bt [54]

:[49]
push.v self.myself
pushi.e 0
cmp.i.v NEQ
bf [51]

:[50]
push.s "Popups"@23289
conv.s.v
push.v self.myself
call.i gml_Script_scr_attackprepcheck(argc=2)
push.v self.myself
pushi.e 1
sub.i.v
cmp.v.v GT
b [52]

:[51]
push.e 0

:[52]
bt [54]

:[53]
push.v self.allblocked
conv.v.b
b [55]

:[54]
push.e 1

:[55]
bf [57]

:[56]
pushi.e 0
pop.v.i self.rr
b [58]

:[57]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr

:[58]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [62]

:[59]
push.i 231869
setowner.e
push.s "Birds"@23290
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 11
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.avoiding
conv.v.b
bf [61]

:[60]
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.special

:[61]
b [64]

:[62]
push.i 231869
setowner.e
push.s "Popups"@23289
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_bulletspawner(argc=3)
pop.v.v self.dc
pushi.e 12
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.avoiding
conv.v.b
bf [64]

:[63]
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.special

:[64]
pushi.e 140
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "obj_poppup_enemy_slash_Step_0_gml_110_0"@23291
conv.s.v
push.s ""@157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText
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
bf [66]

:[65]
push.s "obj_poppup_enemy_slash_Step_0_gml_112_0"@23293
conv.s.v
push.s "* Poppup is begging you to click on a broken link with puppy dog eyes."@23294
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[66]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
push.s "obj_poppup_enemy_slash_Step_0_gml_113_0"@23295
conv.s.v
push.s "* Poppup is preening its weird rubbery flesh."@23296
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[68]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [84]

:[69]
push.s "obj_poppup_enemy_slash_Step_0_gml_116_0"@23297
conv.s.v
push.s ""@157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
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
call.i choose(argc=7)
pop.v.v local.randomChoice
pushloc.v local.randomChoice
pushi.e 0
cmp.i.v EQ
bf [71]

:[70]
push.s "obj_poppup_enemy_slash_Step_0_gml_120_0"@23300
conv.s.v
push.s "Liimo Berry"@23301
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText
b [83]

:[71]
pushloc.v local.randomChoice
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
push.s "obj_poppup_enemy_slash_Step_0_gml_123_0"@23302
conv.s.v
push.s "PlayTime"@23303
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText
b [83]

:[73]
pushloc.v local.randomChoice
pushi.e 2
cmp.i.v EQ
bf [75]

:[74]
push.s "obj_poppup_enemy_slash_Step_0_gml_126_0"@23304
conv.s.v
push.s "its tongue to be pressed in so it doesn't feel hunger anymore"@23305
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText
b [83]

:[75]
pushloc.v local.randomChoice
pushi.e 3
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_poppup_enemy_slash_Step_0_gml_129_0"@23306
conv.s.v
push.s "Scary Noise"@23307
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText
b [83]

:[77]
pushloc.v local.randomChoice
pushi.e 4
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_poppup_enemy_slash_Step_0_gml_132_0"@23308
conv.s.v
push.s "To Play With You In The Mystical Island Of Mysticisland"@23309
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText
b [83]

:[79]
pushloc.v local.randomChoice
pushi.e 5
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_poppup_enemy_slash_Step_0_gml_135_0"@23310
conv.s.v
push.s "Do Taxes At 7:44 AM"@23311
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText
b [83]

:[81]
pushloc.v local.randomChoice
pushi.e 6
cmp.i.v EQ
bf [83]

:[82]
push.s "obj_poppup_enemy_slash_Step_0_gml_138_0"@23312
conv.s.v
push.s "Randomized String 1"@23313
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText

:[83]
push.s "obj_poppup_enemy_slash_Step_0_gml_140_0"@23314
conv.s.v
pushloc.v local.randomText
push.s "* Poppup wants ~1"@23315
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v local.battleText

:[84]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_poppup_enemy_slash_Step_0_gml_142_0"@23316
conv.s.v
push.s "* Smells like tropical candy."@23317
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[86]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_poppup_enemy_slash_Step_0_gml_146_0"@23318
conv.s.v
push.s "* Poppup feels like it's been put upside down in a closet."@23319
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[88]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [90]

:[89]
push.s "obj_poppup_enemy_slash_Step_0_gml_151_0"@23320
conv.s.v
push.s "* Poppup is popping with joy!"@23321
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[90]
push.i 231921
setowner.e
pushloc.v local.battleText
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushi.e 1
pop.v.i self.attacked
b [92]

:[91]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[92]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[93]
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
bf [95]

:[94]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
pushi.e 1
pop.v.i self.actcon
push.s "obj_poppup_enemy_slash_Step_0_gml_176_0"@23322
conv.s.v
push.s "* POPPUP - A rubbery mascot starved for attention. Click it and...?/%"@23323
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[98]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [100]

:[99]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [113]

:[102]
push.v self.avoiding
conv.v.b
bf [104]

:[103]
pushi.e 0
pop.v.b self.avoiding
pushi.e 1644
pop.v.i self.idlesprite

:[104]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 3
cmp.i.v EQ
bf [106]

:[105]
pushi.e 1
pop.v.b self.staticOwner
pushi.e 10
pop.v.i self.actcon
push.s "obj_poppup_enemy_slash_Step_0_gml_192_0"@23324
conv.s.v
push.s "* You just kept clicking and clicking on ads!!/%"@23325
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [112]

:[106]
pushi.e 5
pop.v.i self.actcon
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [108]

:[107]
push.s "obj_poppup_enemy_slash_Step_0_gml_198_0"@23326
conv.s.v
push.s "* You unconsciously clicked on a popup about \"monsters 4 humans\" \"in your area,\"/%"@23327
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[108]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
push.s "obj_poppup_enemy_slash_Step_0_gml_199_0"@23328
conv.s.v
push.s "* You unconsciously clicked on an ad for a video about making knives out of spaghetti./%"@23329
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[110]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [112]

:[111]
push.s "obj_poppup_enemy_slash_Step_0_gml_200_0"@23330
conv.s.v
push.s "* You unconsciously clicked on a popup about demon summoning classes for teens./%"@23331
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[112]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[113]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [115]

:[114]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [116]

:[115]
push.e 0

:[116]
bf [134]

:[117]
push.v self.staticPoppup
pushi.e 21
cmp.i.v LT
bf [133]

:[118]
push.v self.staticPoppup
push.e 1
add.i.v
pop.v.v self.staticPoppup
pushi.e 1
pop.v.b self.cloning
pushi.e 195
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 195
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 435
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.overload
push.v self.siner
push.v self.overload
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.staticPoppup
pushi.e 1
cmp.i.v EQ
bf [120]

:[119]
pushi.e 180
push.v self.overload
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 14
push.v self.overload
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1
push.v self.overload
pushi.e -9
pop.v.i [stacktop]self.friction
push.v self.depth
pushi.e 1
add.i.v
push.v self.overload
pushi.e -9
pop.v.v [stacktop]self.depth

:[120]
push.v self.staticPoppup
pushi.e 2
cmp.i.v EQ
bf [122]

:[121]
pushi.e 110
push.v self.overload
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 14
push.v self.overload
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1
push.v self.overload
pushi.e -9
pop.v.i [stacktop]self.friction
push.v self.depth
pushi.e 1
add.i.v
push.v self.overload
pushi.e -9
pop.v.v [stacktop]self.depth

:[122]
push.v self.staticPoppup
pushi.e 3
cmp.i.v EQ
bf [124]

:[123]
pushi.e 290
push.v self.overload
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 10
push.v self.overload
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1
push.v self.overload
pushi.e -9
pop.v.i [stacktop]self.friction
push.v self.depth
pushi.e 1
sub.i.v
push.v self.overload
pushi.e -9
pop.v.v [stacktop]self.depth

:[124]
push.v self.staticPoppup
pushi.e 3
cmp.i.v GT
bf [126]

:[125]
push.v self.clonedirection
push.v self.overload
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 28
push.v self.overload
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1
pushi.e 53
conv.i.v
call.i random(argc=1)
pushi.e 30
conv.i.d
div.d.v
add.v.i
push.v self.overload
pushi.e -9
pop.v.v [stacktop]self.friction
push.v self.depth
pushi.e 1
sub.i.v
push.v self.overload
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.clonedirection
pushi.e 197
pushi.e 35
conv.i.v
call.i random(argc=1)
add.v.i
add.v.v
pop.v.v self.clonedirection

:[126]
pushi.e 9
pop.v.i self.actcon
push.v self.staticPoppup
pushi.e 3
cmp.i.v LT
bf [128]

:[127]
push.i 68097
setowner.e
pushi.e 9
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[128]
push.v self.staticPoppup
pushi.e 2
cmp.i.v GT
bf [130]

:[129]
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[130]
push.v self.staticPoppup
pushi.e 5
cmp.i.v GT
bf [132]

:[131]
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[132]
b [134]

:[133]
pushi.e 5
pop.v.i self.actcon

:[134]
push.v self.actcon
pushi.e 5
cmp.i.v EQ
bf [136]

:[135]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [137]

:[136]
push.e 0

:[137]
bf [149]

:[138]
pushi.e 1
pop.v.i self.actcon
push.v self.staticPoppup
pushi.e 20
cmp.i.v GT
bf [146]

:[139]
pushi.e 435
pushenv [141]

:[140]
pushi.e 0
pop.v.i self.speed

:[141]
popenv [140]
pushi.e 195
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
push.s "obj_poppup_enemy_slash_Step_0_gml_239_0"@23333
conv.s.v
push.s "* The Poppups crashed!/%"@23334
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
push.d 5.1
pop.v.d self.actcon
pushi.e 435
pushenv [143]

:[142]
pushi.e 0
pop.v.i self.image_speed

:[143]
popenv [142]
pushi.e 426
pushenv [145]

:[144]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm

:[145]
popenv [144]
b [149]

:[146]
pushi.e 1
pop.v.b self.cloning
pushi.e 195
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 426
conv.i.v
pushi.e 31
conv.i.v
call.i gml_Script_scr_monster_add(argc=2)
pop.v.v self.newpopupid
push.i 235766
setowner.e
pushi.e 1
pushi.e -5
push.v self.newpopupid
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.b [stacktop]self.cloning
push.i 133617
setowner.e
push.v self.x
pushi.e -5
push.v self.newpopupid
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
push.v self.y
pushi.e -5
push.v self.newpopupid
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.y
push.i 231492
setowner.e
push.v self.siner
pushi.e -5
push.v self.newpopupid
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.v [stacktop]self.siner
pushi.e -5
push.v self.newpopupid
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [148]

:[147]
pushi.e 20
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermakey
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermakex
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[148]
popenv [147]
pushi.e 6
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[149]
push.v self.actcon
push.d 5.1
cmp.d.v EQ
bf [153]

:[150]
pushi.e 868
pushenv [152]

:[151]
push.v self.siner
push.d 0.5
sub.d.v
pop.v.v self.siner
push.v self.siner2
pushi.e 1
sub.i.v
pop.v.v self.siner2

:[152]
popenv [151]

:[153]
push.v self.actcon
push.d 5.1
cmp.d.v EQ
bf [155]

:[154]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [156]

:[155]
push.e 0

:[156]
bf [160]

:[157]
push.d 5.2
pop.v.d self.actcon
pushi.e 435
pushenv [159]

:[158]
pushi.e 1
pop.v.i self.con

:[159]
popenv [158]

:[160]
push.v self.actcon
push.d 5.2
cmp.d.v EQ
bf [162]

:[161]
pushi.e 435
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [163]

:[162]
push.e 0

:[163]
bf [175]

:[164]
pushi.e 426
pushenv [174]

:[165]
pushi.e 1
pop.v.i local.__i

:[166]
pushloc.v local.__i
pushi.e 3
cmp.i.v LT
bf [173]

:[167]
pushi.e -5
pushloc.v local.__i
conv.v.i
push.v [array]self.actingtarget
push.v self.myself
cmp.v.v EQ
bf [169]

:[168]
pushi.e -5
pushloc.v local.__i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v GT
b [170]

:[169]
push.e 0

:[170]
bf [172]

:[171]
push.i 231499
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.__i
conv.v.i
pop.v.v [array]self.acting
push.i 231875
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.__i
conv.v.i
pop.v.v [array]self.actingsimul
push.i 231872
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.__i
conv.v.i
pop.v.v [array]self.actingsingle
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.__i
conv.v.i
pop.v.v [array]self.faceaction

:[172]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [166]

:[173]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.v self.myself
call.i gml_Script_scr_spare(argc=1)
popz.v

:[174]
popenv [165]
pushi.e 1
pop.v.i self.actcon

:[175]
push.v self.actcon
pushi.e 7
cmp.i.v EQ
bf [177]

:[176]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [178]

:[177]
push.e 0

:[178]
bf [180]

:[179]
pushi.e 0
pop.v.b self.cloning
push.i 235766
setowner.e
pushi.e 0
pushi.e -5
push.v self.newpopupid
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pop.v.b [stacktop]self.cloning
pushi.e 1
pop.v.i self.actcon
push.s "obj_poppup_enemy_slash_Step_0_gml_298_0"@23337
conv.s.v
push.s "* Huh...!? That made another one!?/%"@23338
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[180]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [182]

:[181]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [183]

:[182]
push.e 0

:[183]
bf [185]

:[184]
pushi.e 5
pop.v.i self.blockAds
pushi.e 0
pop.v.i self.blocked
pushi.e 0
pop.v.b self.blockTimer
pushi.e 0
pop.v.i self.popupscreated
push.s "obj_poppup_enemy_slash_Step_0_gml_309_0"@23339
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* Press ~1 repeatedly to block the ads!!/%"@23340
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
push.d 20.5
pop.v.d self.actcon
call.i gml_Script_camerax(argc=0)
pushi.e 380
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 260
add.i.v
call.i random_range(argc=2)
pop.v.v local.randomX
call.i gml_Script_cameray(argc=0)
pushi.e 230
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 170
add.i.v
call.i random_range(argc=2)
pop.v.v local.randomY
push.i 170255
setowner.e
pushi.e 427
conv.i.v
pushloc.v local.randomY
pushloc.v local.randomX
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.popupscreated
conv.v.i
pop.v.v [array]self.ads
push.v self.popupscreated
push.e 1
add.i.v
pop.v.v self.popupscreated

:[185]
push.v self.actcon
push.d 20.5
cmp.d.v EQ
bf [187]

:[186]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [188]

:[187]
push.e 0

:[188]
bf [210]

:[189]
push.v self.poppupwait
pushi.e 1
cmp.i.v EQ
bf [191]

:[190]
pushi.e 0
pop.v.i self.poppupwait
b [196]

:[191]
push.v self.blockTimer
pushi.e 1
cmp.b.v EQ
bf [193]

:[192]
push.v self.popupscreated
pushi.e 10
cmp.i.v LT
b [194]

:[193]
push.e 0

:[194]
bf [196]

:[195]
call.i gml_Script_camerax(argc=0)
pushi.e 450
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 190
add.i.v
call.i random_range(argc=2)
pop.v.v local.randomX
call.i gml_Script_cameray(argc=0)
pushi.e 230
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 70
add.i.v
call.i random_range(argc=2)
pop.v.v local.randomY
pushi.e 427
conv.i.v
pushloc.v local.randomY
pushloc.v local.randomX
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.popupscreated
conv.v.i
pop.v.v [array]self.ads
push.v self.popupscreated
push.e 1
add.i.v
pop.v.v self.popupscreated
pushi.e 1
pop.v.i self.poppupwait

:[196]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [198]

:[197]
push.v self.blockbuffer
pushi.e 0
cmp.i.v EQ
b [199]

:[198]
push.e 0

:[199]
bf [210]

:[200]
pushi.e 2
pop.v.i self.blockbuffer
push.v self.blockTimer
pushi.e 0
cmp.b.v EQ
bf [202]

:[201]
pushi.e 1
pop.v.b self.blockTimer
push.i 68097
setowner.e
pushi.e 75
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[202]
push.v self.blockAds
pushi.e 0
cmp.i.v GTE
bf [208]

:[203]
pushi.e 426
pushenv [205]

:[204]
push.v self.mercytotal
pushi.e 10
add.i.v
pop.v.v self.mercytotal

:[205]
popenv [204]
pushi.e -1
push.v self.blocked
conv.v.i
push.v [array]self.ads
pushi.e -9
pushenv [207]

:[206]
pushi.e 1
pop.v.i self.blockstate

:[207]
popenv [206]
push.v self.blocked
push.e 1
add.i.v
pop.v.v self.blocked

:[208]
push.v self.blocked
pushi.e 10
cmp.i.v EQ
bf [210]

:[209]
push.d 21.5
pop.v.d self.actcon

:[210]
push.v self.actcon
push.d 21.5
cmp.d.v EQ
bf [212]

:[211]
push.d 21.6
pop.v.d self.actcon
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[212]
push.v self.actcon
push.d 22.6
cmp.d.v EQ
bf [229]

:[213]
push.d 22.7
pop.v.d self.actcon
pushi.e 426
pushenv [221]

:[214]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [216]

:[215]
push.v self.mercytotal
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[216]
push.v self.mercytotal
pushi.e 0
cmp.i.v GT
bf [218]

:[217]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
b [219]

:[218]
push.e 0

:[219]
bf [221]

:[220]
pushi.e 1
pop.v.i self.allblocked

:[221]
popenv [214]
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i local.i

:[222]
pushloc.v local.i
push.v self.ads
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [226]

:[223]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.ads
pushi.e -9
pushenv [225]

:[224]
call.i instance_destroy(argc=0)
popz.v

:[225]
popenv [224]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [222]

:[226]
pushi.e 428
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [228]

:[227]
pushi.e 428
conv.i.v
push.v self.y
push.v self.x
pushi.e 50
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fx
push.v self.blocked
push.v self.fx
pushi.e -9
pop.v.v [stacktop]self.count

:[228]
pushi.e 149
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[229]
push.v self.actcon
push.d 23.7
cmp.d.v EQ
bf [234]

:[230]
pushi.e 1
pop.v.i self.actcon
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [234]

:[231]
pushi.e 64
pushenv [233]

:[232]
call.i instance_destroy(argc=0)
popz.v

:[233]
popenv [232]

:[234]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [236]

:[235]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [237]

:[236]
push.e 0

:[237]
bf [239]

:[238]
pushi.e 30
pop.v.i self.actcon
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_poppup_enemy_slash_Step_0_gml_415_0"@23345
conv.s.v
push.s "* Noelle got nervous and looked at the ground!/%"@23346
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[239]
push.v self.actcon
pushi.e 30
cmp.i.v EQ
bf [241]

:[240]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [242]

:[241]
push.e 0

:[242]
bf [251]

:[243]
push.v self.avoiding
conv.v.b
not.b
bf [247]

:[244]
pushi.e 426
pushenv [246]

:[245]
pushi.e 1
pop.v.b self.avoiding
pushi.e 1646
pop.v.i self.idlesprite

:[246]
popenv [245]

:[247]
pushi.e 392
pushenv [250]

:[248]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v NEQ
bf [250]

:[249]
push.v self.myself
call.i gml_Script_scr_monster_make_tired(argc=1)
popz.v

:[250]
popenv [248]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_poppup_enemy_slash_Step_0_gml_438_0"@23347
conv.s.v
push.s "* The enemies got shrivelled and TIRED from lack of attention!/%"@23348
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[251]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [253]

:[252]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [254]

:[253]
push.e 0

:[254]
bf [262]

:[255]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v local.a
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [257]

:[256]
push.s "obj_poppup_enemy_slash_Step_0_gml_449_0"@23349
conv.s.v
push.s "* Susie accidentally clicked on an ad featuring a flaming eggplant holding a chainsaw!!/%"@23350
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[257]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [259]

:[258]
push.s "obj_poppup_enemy_slash_Step_0_gml_453_0"@23351
conv.s.v
push.s "* Susie accidentally clicked on a picture of a steak./"@23352
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_poppup_enemy_slash_Step_0_gml_454_0"@23353
conv.s.v
push.s "* It wasn't actually an ad, just a static image of a steak.../%"@23354
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[259]
pushloc.v local.a
pushi.e 2
cmp.i.v EQ
bf [261]

:[260]
push.s "obj_poppup_enemy_slash_Step_0_gml_458_0"@23355
conv.s.v
push.s "* Susie missed clicking on an ad and ended up clicking on the word processor./"@23356
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_poppup_enemy_slash_Step_0_gml_459_0"@23357
conv.s.v
push.s "* It got a virus somehow./%"@23358
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[261]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
push.d 1.1
pop.v.d self.actconsus

:[262]
push.v self.actconsus
push.d 1.1
cmp.d.v EQ
bf [264]

:[263]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [265]

:[264]
push.e 0

:[265]
bf [269]

:[266]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 997
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_poppup_enemy_slash_Step_0_gml_470_0"@23359
conv.s.v
push.s "\\E5* D..^1. Damn!^1! They knew what I'd fall for!!/%"@23360
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [268]

:[267]
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[268]
pushi.e 0
pop.v.i self.actconsus
pushi.e 1
pop.v.i self.actcon

:[269]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [272]

:[270]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
bf [272]

:[271]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [273]

:[272]
push.e 0

:[273]
bf [281]

:[274]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v local.a
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [276]

:[275]
push.s "obj_poppup_enemy_slash_Step_0_gml_484_0"@23361
conv.s.v
push.s "* Ralsei moved to click on an ad with a bunny on it teaching you how to make friends.../"@23362
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_poppup_enemy_slash_Step_0_gml_485_0"@23363
conv.s.v
push.s "* ...and accidentally clicked on an ad of a machine gun that appeared over it!/%"@23364
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[276]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [278]

:[277]
push.s "obj_zpoppup_enemy_slash_Step_0_gml_489_0"@23365
conv.s.v
push.s "* Ralsei tried to click on an ad with a castle on it.../"@23366
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_poppup_enemy_slash_Step_0_gml_490_0"@23367
conv.s.v
push.s "* ...but it was actually an ad for a company that demolishes buildings with bazookas!/%"@23368
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[278]
pushloc.v local.a
pushi.e 2
cmp.i.v EQ
bf [280]

:[279]
push.s "obj_poppup_enemy_slash_Step_0_gml_494_0"@23369
conv.s.v
push.s "* Ralsei accidentally clicked on an ad for \"lightners 4 darkners in ur area\" and was mortified./"@23370
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_poppup_enemy_slash_Step_0_gml_495_0"@23371
conv.s.v
push.s "* He deleted the browser shortcut on the desktop entirely.../"@23372
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_poppup_enemy_slash_Step_0_gml_496_0"@23373
conv.s.v
push.s "* ...but immediately felt guilty because he thought he had \"deleted the entire internet\"./%"@23374
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[280]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
push.d 1.1
pop.v.d self.actconral

:[281]
push.v self.actconral
push.d 1.1
cmp.d.v EQ
bf [283]

:[282]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [284]

:[283]
push.e 0

:[284]
bf [288]

:[285]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1511
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_poppup_enemy_slash_Step_0_gml_507_0"@23375
conv.s.v
push.s "\\EU* I... I didn't mean to do it... I... I'm sorry!!^1! I repent!!!/%"@23376
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [287]

:[286]
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[287]
pushi.e 0
pop.v.i self.actconral
pushi.e 1
pop.v.i self.actcon

:[288]
push.v self.actingnoe
pushi.e 1
cmp.i.v EQ
bf [290]

:[289]
push.v self.actconnoe
pushi.e 1
cmp.i.v EQ
b [291]

:[290]
push.e 0

:[291]
bf [302]

:[292]
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v local.random_line
push.s ""@157
pop.v.s local.line
pushloc.v local.random_line
pushi.e 0
cmp.i.v EQ
bf [294]

:[293]
push.s "obj_poppup_enemy_slash_Step_0_gml_524_0"@23378
conv.s.v
push.s "* Noelle misclicked on a link to buy How To Draw Dragons!/"@23379
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.line
b [298]

:[294]
pushloc.v local.random_line
pushi.e 1
cmp.i.v EQ
bf [296]

:[295]
push.s "obj_poppup_enemy_slash_Step_0_gml_527_0"@23380
conv.s.v
push.s "* Noelle clicked on a link for creepy game glitch compilations!/"@23381
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.line
b [298]

:[296]
pushloc.v local.random_line
pushi.e 2
cmp.i.v EQ
bf [298]

:[297]
push.s "obj_poppup_enemy_slash_Step_0_gml_530_0"@23382
conv.s.v
push.s "* Noelle clicked on a link for Hot Female Santas In Your Area!/"@23383
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.line

:[298]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushloc.v local.line
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.s "8"@9477
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_poppup_enemy_slash_Step_0_gml_536_0"@23384
conv.s.v
push.s "\\E8* Wh-what!? What did I do wrong??/%"@23385
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
push.v self.simulordernoe
pushi.e 0
cmp.i.v EQ
bf [300]

:[299]
pushi.e 20
conv.i.v
b [301]

:[300]
pushi.e 0
conv.i.v

:[301]
pop.v.v self.actconnoe

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
bf [307]

:[306]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[307]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [311]

:[308]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [311]

:[309]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
bt [311]

:[310]
push.v self.actconnoe
pushi.e 20
cmp.i.v EQ
b [312]

:[311]
push.e 1

:[312]
bf [end]

:[313]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [end]

:[314]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e -1
pop.v.i self.actconnoe
pushi.e 1
pop.v.i self.actcon

:[end]