.localvar 2 arguments
.localvar 24229 kris_text 11165
.localvar 24231 sus_text 11166
.localvar 24232 ral_text 11167

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.init
pushi.e 502
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [145]

:[3]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [7]

:[4]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [7]

:[5]
push.v self.bumpwait
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.endcon
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [61]

:[9]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [11]

:[10]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[11]
push.v self.nitro
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.v self.nitro
pushi.e 1
sub.i.v
pop.v.v self.nitro

:[13]
push.v self.premonition
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
push.v self.premonition
pushi.e 1
sub.i.v
pop.v.v self.premonition

:[15]
pushi.e 0
pop.v.i self.talkedcon
pushi.e 0
pop.v.i self.talktimer
pushi.e 69
pop.v.i global.typer
push.v self.attackorder
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
pop.v.i self.rr

:[17]
push.v self.attackorder
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 2
pop.v.i self.rr

:[19]
push.v self.attackorder
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i self.rr
pushi.e -1
pop.v.i self.attackorder

:[21]
push.v self.attackorder
push.e 1
add.i.v
pop.v.v self.attackorder
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_29_0_b"@24165
conv.s.v
push.s "Partake, Kris! The&zephyr of punishment!/%"@24166
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
push.s "obj_berdlyb_enemy_slash_Step_0_gml_30_0"@24167
conv.s.v
push.s "Holy Halbird!&Grant me strength!/%"@24168
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
push.s "obj_berdlyb_enemy_slash_Step_0_gml_31_0"@24169
conv.s.v
push.s "Look, Susie! The&closest you'll ever&get to an \"A\"!/%"@24170
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[27]
push.v self.bumpedpast50percent
pushi.e 0
cmp.i.v EQ
bf [30]

:[28]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 50
cmp.i.v GT
bf [30]

:[29]
push.v self.balloonorder
pushi.e 4
cmp.i.v GT
b [31]

:[30]
push.e 0

:[31]
bt [37]

:[32]
push.v self.bumpedpast50percent
pushi.e 0
cmp.i.v EQ
bf [35]

:[33]
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
cmp.v.v LT
bf [35]

:[34]
push.v self.balloonorder
pushi.e 4
cmp.i.v GT
b [36]

:[35]
push.e 0

:[36]
b [38]

:[37]
push.e 1

:[38]
bf [40]

:[39]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_42_0"@24171
conv.s.v
push.s "What? My car&is breaking!?/%"@24172
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.bumpedpast50percent
pushi.e 2
pop.v.i self.ballooncon
push.v self.attackorder
push.e 1
sub.i.v
pop.v.v self.attackorder
b [58]

:[40]
push.v self.bumpedfirsttime
pushi.e 0
cmp.i.v EQ
bf [43]

:[41]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 0
cmp.i.v GT
bf [43]

:[42]
push.v self.balloonorder
pushi.e 4
cmp.i.v GT
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_36_0"@24173
conv.s.v
push.s "Ha! Go ahead, \"bump\"&me, you bumpbarians!/%"@24174
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.bumpedfirsttime
pushi.e 1
pop.v.i self.ballooncon
b [58]

:[46]
push.v self.forcedefaultballoon
pushi.e 0
cmp.i.v EQ
bf [58]

:[47]
push.v self.balloonorder
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_48_0"@24175
conv.s.v
push.s "Kris, I get why&you're getting in my&way! You're jealous,&aren't you!?/%"@24176
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[49]
push.v self.balloonorder
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_49_0"@24177
conv.s.v
push.s "Kris, you're tired&of being the class&No.3, gazing distantly&at Noelle and I's&fruited figures.../%"@24178
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[51]
push.v self.balloonorder
pushi.e 2
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_50_0"@24179
conv.s.v
push.s "So rather than ever&STUDYING, you'd enlist&SUSIE to take us down!/%"@24180
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[53]
push.v self.balloonorder
pushi.e 3
cmp.i.v EQ
bf [55]

:[54]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_51_0"@24181
conv.s.v
push.s "Kris... you are truly&depraved. Playing&in the mud with&the class hellion./%"@24182
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[55]
push.v self.balloonorder
pushi.e 4
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_52_0"@24183
conv.s.v
push.s "But Kris, I am&a kind and brave&hero! If you come&to our side.../%"@24184
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 3
pop.v.i self.ballooncon

:[57]
push.v self.balloonorder
push.e 1
add.i.v
pop.v.v self.balloonorder

:[58]
pushi.e 0
pop.v.i self.forcedefaultballoon
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
push.v self.ballooncon
pushi.e 0
cmp.i.v EQ
bf [60]

:[59]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer
b [61]

:[60]
push.d 0.5
pop.v.d self.talked
pushi.e 0
pop.v.i self.talktimer

:[61]
push.v self.talked
push.d 0.5
cmp.d.v EQ
bf [80]

:[62]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [64]

:[63]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [65]

:[64]
push.e 0

:[65]
bt [67]

:[66]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [68]

:[67]
push.e 1

:[68]
bf [80]

:[69]
pushi.e 64
pushenv [71]

:[70]
call.i instance_destroy(argc=0)
popz.v

:[71]
popenv [70]
push.v self.ballooncon
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_80_0"@24185
conv.s.v
push.s "I'll show you&\"bumper cars\" is a&game of INTELLECT,&not skill!/%"@24186
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[73]
push.v self.ballooncon
pushi.e 2
cmp.i.v EQ
bf [75]

:[74]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_89_0"@24187
conv.s.v
push.s "Fools! This is&Smart Smoke! It means&my car is getting&stronger!/%"@24188
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[75]
push.v self.ballooncon
pushi.e 3
cmp.i.v EQ
bf [77]

:[76]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_82_0"@24189
conv.s.v
push.s "You may be a&slightly less&distant No. 3!&Haha... slightly./%"@24190
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[77]
pushi.e 69
pop.v.i global.typer
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
push.v self.ballooncon
pushi.e 2
cmp.i.v NEQ
bf [79]

:[78]
pushi.e 0
pop.v.i self.ballooncon
push.d 0.6
pop.v.d self.talked
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm
b [80]

:[79]
pushi.e 0
pop.v.i self.ballooncon
push.d 0.7
pop.v.d self.talked

:[80]
push.v self.talked
push.d 0.7
cmp.d.v EQ
bf [89]

:[81]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [83]

:[82]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [84]

:[83]
push.e 0

:[84]
bt [86]

:[85]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [87]

:[86]
push.e 1

:[87]
bf [89]

:[88]
pushi.e 0
pop.v.i self.talked
pushi.e 1
pop.v.i self.forcedefaultballoon

:[89]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [92]

:[91]
push.e 0

:[92]
bf [117]

:[93]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [95]

:[94]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [96]

:[95]
push.e 0

:[96]
bt [98]

:[97]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [99]

:[98]
push.e 1

:[99]
bf [103]

:[100]
pushi.e 64
pushenv [102]

:[101]
call.i instance_destroy(argc=0)
popz.v

:[102]
popenv [101]
pushi.e 1
pop.v.i self.talkedcon

:[103]
push.v self.talkedcon
pushi.e 1
cmp.i.v EQ
bf [117]

:[104]
pushi.e 0
pop.v.i self.rtimer
pushi.e -1
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [117]

:[105]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [107]

:[106]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [108]

:[107]
push.e 0

:[108]
bf [110]

:[109]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[110]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [112]

:[111]
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

:[112]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [114]

:[113]
push.v self.rr
pushi.e 0
cmp.i.v EQ
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
push.v 872.target_angle
pushi.e 45
add.i.v
pop.v.v 872.target_angle

:[117]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [119]

:[118]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [120]

:[119]
push.e 0

:[120]
bf [145]

:[121]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 16
cmp.i.v EQ
bf [144]

:[122]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [124]

:[123]
push.i 231869
setowner.e
push.s "Tornado"@24191
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
pushi.e 8
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 0
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 210
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
b [127]

:[124]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
push.i 231869
setowner.e
push.s "SpearBlast"@24192
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
pushi.e 9
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 200
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
b [127]

:[126]
push.i 231869
setowner.e
push.s "Chirashi"@24055
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
pushi.e 10
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.difficulty
pushi.e 180
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[127]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
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
call.i choose(argc=6)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [129]

:[128]
push.i 231921
setowner.e
push.s "obj_berdlyb_enemy_slash_Step_0_gml_158_0"@24193
conv.s.v
push.s "* Berdly calls Queen for help!&* But Queen is pretending to be on the phone!"@24194
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[129]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [131]

:[130]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_159_0"@24195
conv.s.v
push.s "* Berdly asks Queen what snacks they have at home!&* Queen nods! She has earbuds in!"@24196
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[131]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [133]

:[132]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_160_0"@24197
conv.s.v
push.s "* Berdly gives the secret sign!&* But Queen is busy with a coloring book!"@24198
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[133]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [135]

:[134]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_161_0"@24199
conv.s.v
push.s "* Berdly summons Queen!&* Queen calls in sick!"@24200
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[135]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [137]

:[136]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_162_0"@24201
conv.s.v
push.s "* Berdly shows Queen his card collection!&* Queen escaped successfully."@24202
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[137]
push.v self.rr
pushi.e 5
cmp.i.v EQ
bf [139]

:[138]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_163_0"@24203
conv.s.v
push.s "* Smells like fried chicken."@24204
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[139]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 75
cmp.i.v GT
bf [141]

:[140]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_167_0_b"@24205
conv.s.v
push.s "* Berdly's coaster car thing looks sick."@24206
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[141]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.25
mul.d.v
cmp.v.v LT
bf [143]

:[142]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_171_0"@24207
conv.s.v
push.s "* Berdly asks Queen for healing!&* She says \"You're Doing Great Honey\""@24208
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[143]
pushi.e 1
pop.v.i self.attacked
b [145]

:[144]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[145]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [285]

:[146]
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
bf [148]

:[147]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [149]

:[148]
push.e 0

:[149]
bf [151]

:[150]
pushi.e 1
pop.v.i self.actcon
push.s "obj_berdlyb_enemy_slash_Step_0_gml_123_0"@24209
conv.s.v
push.s "* BERDLY - Go! Use your roller coaster cars to play \"bump of chicken\"!/%"@24210
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[151]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [153]

:[152]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [154]

:[153]
push.e 0

:[154]
bf [175]

:[155]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [157]

:[156]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
b [158]

:[157]
push.e 0

:[158]
bf [160]

:[159]
pushi.e 1
pop.v.i self.dialoguecon
b [171]

:[160]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [162]

:[161]
push.v self.actingral
pushi.e 1
cmp.i.v NEQ
b [163]

:[162]
push.e 0

:[163]
bf [165]

:[164]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_130_0"@24211
conv.s.v
push.s "* You and Susie will attempt to bump into Berdly's car!/%"@24212
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
b [171]

:[165]
push.v self.actingsus
pushi.e 1
cmp.i.v NEQ
bf [167]

:[166]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
b [168]

:[167]
push.e 0

:[168]
bf [170]

:[169]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_131_0"@24213
conv.s.v
push.s "* You and Ralsei will attempt to bump into Berdly's car!/%"@24214
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
b [171]

:[170]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_132_0"@24215
conv.s.v
push.s "* You will attempt to bump into Berdly's car!/%"@24216
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[171]
pushi.e 1
pop.v.i self.kriscoaster
pushi.e 0
pop.v.i self.acting
pushi.e 1
pop.v.i self.actcon
pushi.e 1
pop.v.i self.rideactgo
push.v self.actingsus
pushi.e 2
cmp.i.v EQ
bf [173]

:[172]
pushi.e 1
pop.v.i self.suscoaster

:[173]
push.v self.actingral
pushi.e 2
cmp.i.v EQ
bf [175]

:[174]
pushi.e 1
pop.v.i self.ralcoaster

:[175]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [177]

:[176]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [178]

:[177]
push.e 0

:[178]
bf [180]

:[179]
pushi.e 1
pop.v.i self.dialoguecon
pushi.e 0
pop.v.i self.acting
pushi.e 1
pop.v.i self.actcon
pushi.e 1
pop.v.i self.rideactgo
pushi.e 1
pop.v.i self.kriscoaster
pushi.e 1
pop.v.i self.suscoaster
pushi.e 1
pop.v.i self.ralcoaster

:[180]
push.v self.acting
pushi.e 4
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
pushi.e 1
pop.v.i self.dialoguecon
pushi.e 0
pop.v.i self.acting
pushi.e 1
pop.v.i self.actcon
pushi.e 1
pop.v.i self.rideactgo
pushi.e 1
pop.v.i self.mrboneswildride
pushi.e 1
pop.v.i self.kriscoaster
pushi.e 1
pop.v.i self.suscoaster
pushi.e 1
pop.v.i self.ralcoaster

:[185]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [187]

:[186]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [188]

:[187]
push.e 0

:[188]
bf [205]

:[189]
push.v self.bumpactstarted
pushi.e 1
cmp.i.v EQ
bf [191]

:[190]
pushi.e 0
pop.v.i self.acting
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actingsus
pushi.e 0
pop.v.i self.actconsus
b [205]

:[191]
push.v self.actingral
pushi.e 1
cmp.i.v NEQ
bf [193]

:[192]
push.v self.rideactgo
pushi.e 0
cmp.i.v EQ
b [194]

:[193]
push.e 0

:[194]
bf [196]

:[195]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_186_0"@24217
conv.s.v
push.s "* Susie will attempt to bump into Berdly's car!/%"@24218
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[196]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [198]

:[197]
push.v self.rideactgo
pushi.e 0
cmp.i.v EQ
b [199]

:[198]
push.e 0

:[199]
bf [201]

:[200]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_187_0"@24219
conv.s.v
push.s "* Susie and Ralsei will attempt to bump into Berdly's car!/%"@24220
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[201]
pushi.e 0
pop.v.i self.acting
pushi.e 1
pop.v.i self.actcon
pushi.e 1
pop.v.i self.rideactgo
pushi.e 0
pop.v.i self.actconsus
pushi.e 1
pop.v.i self.suscoaster
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [203]

:[202]
pushi.e 1
pop.v.i self.kriscoaster

:[203]
push.v self.actingral
pushi.e 2
cmp.i.v EQ
bf [205]

:[204]
pushi.e 1
pop.v.i self.ralcoaster

:[205]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [207]

:[206]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [208]

:[207]
push.e 0

:[208]
bf [220]

:[209]
push.v self.bumpactstarted
pushi.e 1
cmp.i.v EQ
bf [211]

:[210]
pushi.e 0
pop.v.i self.acting
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconral
pushi.e 0
pop.v.i self.actingral
b [220]

:[211]
push.v self.actingsus
pushi.e 1
cmp.i.v NEQ
bf [213]

:[212]
push.v self.rideactgo
pushi.e 0
cmp.i.v EQ
b [214]

:[213]
push.e 0

:[214]
bf [216]

:[215]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_221_0"@24221
conv.s.v
push.s "* Ralsei will attempt to bump into Berdly's car!/%"@24222
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[216]
pushi.e 0
pop.v.i self.acting
pushi.e 1
pop.v.i self.actcon
pushi.e 1
pop.v.i self.rideactgo
pushi.e 0
pop.v.i self.actconral
pushi.e 1
pop.v.i self.ralcoaster
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [218]

:[217]
pushi.e 1
pop.v.i self.kriscoaster

:[218]
push.v self.actingsus
pushi.e 2
cmp.i.v EQ
bf [220]

:[219]
pushi.e 1
pop.v.i self.suscoaster

:[220]
push.v self.dialoguecon
pushi.e 0
cmp.i.v NEQ
bf [228]

:[221]
push.v self.dialoguecon
pushi.e 1
cmp.i.v EQ
bf [223]

:[222]
push.s "obj_berdlyb_enemy_slash_Step_0_gml_306_0"@24223
conv.s.v
push.s "* The whole gang will attempt to bump into Berdly's car!/%"@24224
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[223]
push.v self.dialoguecon
pushi.e 2
cmp.i.v EQ
bf [224]

:[224]
push.v self.dialoguecon
pushi.e 3
cmp.i.v EQ
bf [225]

:[225]
push.v self.dialoguecon
pushi.e 4
cmp.i.v EQ
bf [226]

:[226]
push.v self.dialoguecon
pushi.e 5
cmp.i.v EQ
bf [227]

:[227]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 0
pop.v.i self.dialoguecon

:[228]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [230]

:[229]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [231]

:[230]
push.e 0

:[231]
bf [285]

:[232]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 99
cmp.i.v GT
bf [234]

:[233]
b [285]

:[234]
pushglb.v global.currentactingchar
pushi.e 0
cmp.i.v EQ
bf [238]

:[235]
push.v self.actingsus
pushi.e 0
cmp.i.v EQ
bf [238]

:[236]
push.v self.actingral
pushi.e 0
cmp.i.v EQ
bf [238]

:[237]
push.v self.rideactgo
pushi.e 1
cmp.i.v EQ
b [239]

:[238]
push.e 0

:[239]
bt [249]

:[240]
pushglb.v global.currentactingchar
pushi.e 1
cmp.i.v EQ
bf [243]

:[241]
push.v self.actingral
pushi.e 0
cmp.i.v EQ
bf [243]

:[242]
push.v self.rideactgo
pushi.e 1
cmp.i.v EQ
b [244]

:[243]
push.e 0

:[244]
bt [249]

:[245]
pushglb.v global.currentactingchar
pushi.e 2
cmp.i.v EQ
bf [247]

:[246]
push.v self.rideactgo
pushi.e 1
cmp.i.v EQ
b [248]

:[247]
push.e 0

:[248]
b [250]

:[249]
push.e 1

:[250]
bf [284]

:[251]
push.v self.mrboneswildride
pushi.e 1
cmp.i.v EQ
bf [253]

:[252]
pushi.e 250
pop.v.i 502.timermax

:[253]
pushi.e 0
pop.v.i 502.timer
pushi.e 0
pop.v.i 502.playerinputtimer
pushi.e 1
pop.v.i 502.actcon
pushi.e 495
pushenv [259]

:[254]
push.v self.HeroID
pushi.e 0
cmp.i.v EQ
bf [256]

:[255]
push.v 484.kriscoaster
pushi.e 1
cmp.i.v EQ
b [257]

:[256]
push.e 0

:[257]
bf [259]

:[258]
pushi.e 1422
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed

:[259]
popenv [254]
pushi.e 495
pushenv [265]

:[260]
push.v self.HeroID
pushi.e 1
cmp.i.v EQ
bf [262]

:[261]
push.v 484.suscoaster
pushi.e 1
cmp.i.v EQ
b [263]

:[262]
push.e 0

:[263]
bf [265]

:[264]
pushi.e 1438
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed

:[265]
popenv [260]
pushi.e 495
pushenv [271]

:[266]
push.v self.HeroID
pushi.e 2
cmp.i.v EQ
bf [268]

:[267]
push.v 484.ralcoaster
pushi.e 1
cmp.i.v EQ
b [269]

:[268]
push.e 0

:[269]
bf [271]

:[270]
pushi.e 1512
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed

:[271]
popenv [266]
pushi.e 1
pop.v.i self.bumpactstarted
pushi.e 0
pop.v.i self.acting
pushi.e 0
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconsus
pushi.e 0
pop.v.i self.actconral
pushi.e -1
pop.v.i 496.forceypos
push.s "Z,"@24228
pop.v.s local.kris_text
push.s "X,"@24230
pop.v.s local.sus_text
push.s "C"@9479
pop.v.s local.ral_text
push.v self.kriscoaster
pushi.e 1
cmp.i.v EQ
bf [273]

:[272]
pushi.e 1
pop.v.i self.krisgo

:[273]
push.v self.suscoaster
pushi.e 1
cmp.i.v EQ
bf [275]

:[274]
pushi.e 1
pop.v.i self.susiego

:[275]
push.v self.ralcoaster
pushi.e 1
cmp.i.v EQ
bf [277]

:[276]
pushi.e 1
pop.v.i self.ralseigo

:[277]
push.v self.kriscoaster
pushi.e 1
cmp.i.v EQ
bf [280]

:[278]
push.v self.suscoaster
pushi.e 1
cmp.i.v EQ
bf [280]

:[279]
push.v self.ralcoaster
pushi.e 1
cmp.i.v EQ
b [281]

:[280]
push.e 0

:[281]
bf [283]

:[282]
pushi.e 1
pop.v.i self.bumpactfast

:[283]
pushi.e 0
pop.v.i self.mrboneswildride
pushi.e 0
pop.v.i self.kriscoaster
pushi.e 0
pop.v.i self.suscoaster
pushi.e 0
pop.v.i self.ralcoaster
b [285]

:[284]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[285]
pushi.e 496
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [287]

:[286]
push.v 496.x
push.v 496.xstart
sub.v.v
pushi.e 60
sub.i.v
pop.v.v self.sactionboxx

:[287]
push.v self.endcon
pushi.e 1
cmp.i.v EQ
bf [307]

:[288]
push.v self.endtime
push.e 1
add.i.v
pop.v.v self.endtime
push.v self.endtime
pushi.e 1
cmp.i.v EQ
bf [296]

:[289]
pushi.e 495
pushenv [291]

:[290]
pushi.e 1
pop.v.i self.endscene

:[291]
popenv [290]
pushi.e 496
pushenv [293]

:[292]
pushi.e 1
pop.v.i self.endscene

:[293]
popenv [292]
pushi.e 357
pushenv [295]

:[294]
pushi.e 1
pop.v.i self.skipvictory

:[295]
popenv [294]

:[296]
push.v self.endtime
pushi.e 30
cmp.i.v EQ
bf [300]

:[297]
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i gml_Script_snd_free(argc=1)
popz.v
pushi.e 10
pop.v.i 496.xshake
pushi.e 163
pop.v.i 496.sprite_index
pushi.e 952
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [299]

:[298]
pushi.e 1854
push.v 952.coaster_berdly
pushi.e -9
pop.v.i [stacktop]self.character_sprite
pushi.e -10
push.v 952.coaster_berdly
pushi.e -9
pop.v.i [stacktop]self.character_offset_x
pushi.e -5
push.v 952.coaster_berdly
pushi.e -9
pop.v.i [stacktop]self.character_offset_y

:[299]
pushi.e 142
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[300]
push.v self.endtime
pushi.e 90
cmp.i.v EQ
bf [302]

:[301]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
push.s "obj_berdlyb_enemy_slash_Step_0_gml_450_0"@24237
conv.s.v
push.s "W-what...?&My coaster, it's...!/%"@24238
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 69
pop.v.i global.typer
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

:[302]
push.v self.endtime
pushi.e 90
cmp.i.v GTE
bf [304]

:[303]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [305]

:[304]
push.e 0

:[305]
bf [307]

:[306]
pushi.e 0
pop.v.i self.endcon
call.i gml_Script_scr_wincombat(argc=0)
popz.v

:[307]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[308]
pushi.e 66
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[309]
pushi.e 1
push.v self.difficulty
sub.v.i
pop.v.v self.difficulty

:[end]