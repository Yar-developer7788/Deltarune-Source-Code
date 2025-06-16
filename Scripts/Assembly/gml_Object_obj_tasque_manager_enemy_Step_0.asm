.localvar 2 arguments
.localvar 23271 dialogText 10704
.localvar 23298 randomText 10705
.localvar 23299 randomChoice 10706
.localvar 23709 hasTail 10707
.localvar 107 i 10708
.localvar 7017 a 10709
.localvar 23292 battleText 10710
.localvar 23076 simultext 10711

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
pushi.e -5
pushi.e 419
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.i 231526
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[3]
pushi.e -5
pushi.e 419
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 50
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[5]
pushi.e 1
pop.v.i self.init

:[6]
pushi.e 461
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 1
pop.v.i self.simonsayscon

:[8]
push.v self.simonsayscon
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 461
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [11]

:[10]
push.e 0

:[11]
bf [18]

:[12]
pushi.e 0
pop.v.i self.simonsayscon
push.v self.hitbysimonsaysattackcount
pushi.e 2
cmp.i.v LT
bf [14]

:[13]
push.v self.quizDifficulty
pushi.e 3
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.v self.quizDifficulty
push.e 1
add.i.v
pop.v.v self.quizDifficulty

:[17]
pushi.e 0
pop.v.i self.hitbysimonsaysattackcount

:[18]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [142]

:[19]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [21]

:[20]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [82]

:[23]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [25]

:[24]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[25]
pushi.e 50
pop.v.i global.typer
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_15_0"@23687
conv.s.v
push.s ""@157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
bf [27]

:[26]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
b [28]

:[27]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)

:[28]
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_19_0"@23688
conv.s.v
push.s "Processes! Services!&Performance! Details!"@23689
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText

:[30]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [40]

:[31]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_23_0"@23690
conv.s.v
push.s ""@157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
pop.v.v local.randomChoice
pushloc.v local.randomChoice
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_27_0"@23691
conv.s.v
push.s "Wrinkly clothing?"@23692
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText
b [39]

:[33]
pushloc.v local.randomChoice
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_30_0"@23693
conv.s.v
push.s "Slouched back?"@23694
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText
b [39]

:[35]
pushloc.v local.randomChoice
pushi.e 2
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_33_0"@23695
conv.s.v
push.s "Delinquent tendencies?"@23696
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText
b [39]

:[37]
pushloc.v local.randomChoice
pushi.e 3
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_36_0"@23697
conv.s.v
push.s "Untied shoelaces?"@23698
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText

:[39]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_39_0"@23699
conv.s.v
pushloc.v local.randomText
push.s "~1&Let me whip it into shape!"@23700
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v local.dialogText

:[40]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [45]

:[41]
push.v self.timesOrdered
push.e 1
add.i.v
pop.v.v self.timesOrdered
push.v self.timesOrdered
pushi.e 2
cmp.i.v EQ
bf [43]

:[42]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_46_0"@23701
conv.s.v
push.s "Hors d'oeuvre,&Hors d'oeuvre...&I mean, order, order!"@23702
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [44]

:[43]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_46_1"@23703
conv.s.v
push.s "Order, order!"@23704
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[44]
pop.v.v local.dialogText

:[45]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [50]

:[46]
push.v self.timesCharged
push.e 1
add.i.v
pop.v.v self.timesCharged
push.v self.timesCharged
pushi.e 1
cmp.i.v GT
bf [48]

:[47]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_53_0"@23705
conv.s.v
push.s "Kitties!!"@23706
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [49]

:[48]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_53_1"@23707
conv.s.v
push.s "Aren't my kitties just&so well behaved? Watch!"@23708
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[49]
pop.v.v local.dialogText

:[50]
pushi.e 0
pop.v.b local.hasTail
pushi.e 0
pop.v.i local.i

:[51]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [58]

:[52]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.chararmor1
pushi.e 7
cmp.i.v EQ
bt [54]

:[53]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.chararmor2
pushi.e 7
cmp.i.v EQ
b [55]

:[54]
push.e 1

:[55]
bf [57]

:[56]
pushi.e 1
pop.v.b local.hasTail

:[57]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [51]

:[58]
pushloc.v local.hasTail
pushi.e 1
cmp.b.v EQ
bf [60]

:[59]
push.v self.tailcheck
conv.v.b
not.b
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
pushi.e 1
pop.v.b self.tailcheck
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_68_0"@23710
conv.s.v
push.s "Chaos, chaos!?&No, no! Order, order!&Now get rid of that&silly tail!"@23711
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText

:[63]
pushi.e -5
pushi.e 2
push.v [array]self.charweapon
pushi.e 7
cmp.i.v EQ
bf [65]

:[64]
push.v self.knifecheck
conv.v.b
not.b
b [66]

:[65]
push.e 0

:[66]
bf [68]

:[67]
pushi.e 1
pop.v.b self.knifecheck
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_74_0"@23712
conv.s.v
push.s "Chaos, chaos!?&No, no! Order, order!&Now get rid of that&silly Devilsknife!"@23713
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText

:[68]
push.v self.violenceused
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
push.v self.violenceusedcon
pushi.e 0
cmp.i.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_106_0"@23714
conv.s.v
push.s "How dare you&touch my pretty kitty!"@23715
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText
pushi.e 1
pop.v.i self.violenceusedcon
b [81]

:[73]
push.v self.violenceused
pushi.e 1
cmp.i.v EQ
bf [75]

:[74]
push.v self.violenceusedcon
pushi.e 1
cmp.i.v EQ
b [76]

:[75]
push.e 0

:[76]
bf [81]

:[77]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v local.a
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_112_0"@23716
conv.s.v
push.s "How dare you!"@23717
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText

:[79]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_113_0"@23718
conv.s.v
push.s "You've been a&bad dog..."@23719
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText

:[81]
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
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[82]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [85]

:[84]
push.e 0

:[85]
bf [91]

:[86]
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
bf [91]

:[87]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [89]

:[88]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[89]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [91]

:[90]
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

:[91]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [93]

:[92]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [142]

:[95]
push.v self.rtimer
pushi.e 0
cmp.i.v EQ
bf [101]

:[96]
push.v self.overrideAttack
conv.v.b
bf [98]

:[97]
pushi.e 1
pop.v.i self.rr
b [99]

:[98]
pushi.e 0
pop.v.i self.rr

:[99]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
pushi.e 45
pop.v.i 872.target_angle

:[101]
push.v self.rtimer
pushi.e 2
cmp.i.v EQ
bf [103]

:[102]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
b [104]

:[103]
push.e 0

:[104]
bf [115]

:[105]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [115]

:[106]
pushi.e 448
pushenv [114]

:[107]
push.v 453.quizDifficulty
pushi.e 1
cmp.i.v GT
bf [109]

:[108]
push.v 453.quizDifficulty
pushi.e 4
cmp.i.v NEQ
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
pushi.e 2
conv.i.v
b [113]

:[112]
pushi.e -1
conv.i.v

:[113]
pop.v.v self.rr

:[114]
popenv [107]

:[115]
pushglb.v global.encounterno
pushi.e 89
cmp.i.v EQ
bf [117]

:[116]
pushi.e 1
pop.v.i self.rr

:[117]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 15
cmp.i.v EQ
bf [139]

:[118]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [120]

:[119]
push.i 231869
setowner.e
push.s "WhipAttack"@23720
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
pushi.e 20
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 6
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.element
b [124]

:[120]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [124]

:[121]
pushi.e -1
pop.v.i self.lastQuizLetter
push.i 231869
setowner.e
push.s "QuizAttack"@23721
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
pushi.e 32
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 6
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.element
pushglb.v global.encounterno
pushi.e 89
cmp.i.v EQ
bf [123]

:[122]
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.special
pushi.e 4
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.difficulty
b [124]

:[123]
push.v self.quizDifficulty
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.difficulty

:[124]
pushi.e 140
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
pushi.e 0
pop.v.i self.overrideAttack
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
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
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_161_0"@23722
conv.s.v
push.s ""@157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [126]

:[125]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_164_0"@23723
conv.s.v
push.s "* Tasque Manager makes a list of her outfits for the next year. She only has one outfit."@23724
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText
b [134]

:[126]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [128]

:[127]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_167_0"@23725
conv.s.v
push.s "* Tasque Manager is writing \"manage tasks\" next to every entry in her daily planner."@23726
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText
b [134]

:[128]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [130]

:[129]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_170_0"@23727
conv.s.v
push.s "* Tasque Manager is straightening her whip with a hair straightener."@23728
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText
b [134]

:[130]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [132]

:[131]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_173_0"@23729
conv.s.v
push.s "* Tasque Manager is making herself take priority over everything."@23730
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText
b [134]

:[132]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [134]

:[133]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_176_0"@23731
conv.s.v
push.s "* Smells like live wiring."@23732
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[134]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [136]

:[135]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_181_0"@23733
conv.s.v
push.s "* Tasque Manager has reached her&meticulously scheduled bedtime."@23734
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[136]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [138]

:[137]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_186_0"@23735
conv.s.v
push.s "* Tasque Manager has found things&to be sufficiently organized."@23736
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[138]
push.i 231921
setowner.e
pushloc.v local.battleText
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushi.e 1
pop.v.i self.attacked
b [140]

:[139]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[140]
pushglb.v global.encounterno
pushi.e 89
cmp.i.v EQ
bf [142]

:[141]
push.i 99999
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[142]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [228]

:[143]
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
bf [145]

:[144]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [146]

:[145]
push.e 0

:[146]
bf [148]

:[147]
pushi.e 1
pop.v.i self.actcon
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_205_0"@23737
conv.s.v
push.s "* TASQUE MANAGER - Obsessed with order, and abhors Chaos. Whip it good!/%"@23738
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[148]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [150]

:[149]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [151]

:[150]
push.e 0

:[151]
bf [167]

:[152]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1429
conv.i.v
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
push.v self.violenceused
pushi.e 1
cmp.i.v EQ
bf [154]

:[153]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_254_0"@23739
conv.s.v
push.s "* (Your act failed...)/%"@23740
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.simultext
pushi.e 1
pop.v.i self.actcon
b [163]

:[154]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [156]

:[155]
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [157]

:[156]
push.e 0

:[157]
bf [159]

:[158]
pushi.e 15
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
b [160]

:[159]
pushi.e 10
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[160]
pushi.e 1
pop.v.i self.overrideAttack
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [162]

:[161]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_263_0"@23741
conv.s.v
push.s "* (You asked Tasque Manager to show you order. She obliges!)/%"@23742
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.simultext
b [163]

:[162]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_264_0"@23743
conv.s.v
push.s "* (You asked for order!)/%"@23744
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.simultext

:[163]
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderkri
pushi.e 0
cmp.i.v EQ
bf [165]

:[164]
pushi.e 20
conv.i.v
b [166]

:[165]
pushi.e -1
conv.i.v

:[166]
pop.v.v self.actcon

:[167]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [169]

:[168]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [170]

:[169]
push.e 0

:[170]
bf [175]

:[171]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1429
conv.i.v
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
push.v self.violenceused
pushi.e 1
cmp.i.v EQ
bf [173]

:[172]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_277_0"@23745
conv.s.v
push.s "* (You talked to Tasque Manager, but no effect...)/%"@23746
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.actcon
b [174]

:[173]
pushi.e 1
pop.v.i self.overrideAttack
pushi.e 25
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_282_0"@23747
conv.s.v
push.s "* (Everyone asked Tasque Manager to show you order. She obliges!)/%"@23748
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.actcon

:[174]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[175]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [177]

:[176]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [178]

:[177]
push.e 0

:[178]
bf [195]

:[179]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1459
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
push.v self.violenceused
pushi.e 1
cmp.i.v EQ
bf [181]

:[180]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_293_0"@23749
conv.s.v
push.s "* S-Action failed!/%"@23750
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.simultext
b [191]

:[181]
pushi.e -5
pushi.e 0
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [183]

:[182]
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [184]

:[183]
push.e 0

:[184]
bf [186]

:[185]
pushi.e 10
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
b [187]

:[186]
pushi.e 6
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[187]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v local.a
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [189]

:[188]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_301_0"@23751
conv.s.v
push.s "* Susie barked madly!/%"@23752
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.simultext

:[189]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [191]

:[190]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_302_0"@23753
conv.s.v
push.s "* Susie's mouth froths!/%"@23754
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.simultext

:[191]
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulordersus
pushi.e 0
cmp.i.v EQ
bf [193]

:[192]
pushi.e 20
conv.i.v
b [194]

:[193]
pushi.e 0
conv.i.v

:[194]
pop.v.v self.actconsus

:[195]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [197]

:[196]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [198]

:[197]
push.e 0

:[198]
bf [215]

:[199]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1501
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
push.v self.violenceused
pushi.e 1
cmp.i.v EQ
bf [201]

:[200]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_314_0"@23755
conv.s.v
push.s "* R-Action failed!/%"@23756
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.simultext
b [211]

:[201]
pushi.e -5
pushi.e 0
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [203]

:[202]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [204]

:[203]
push.e 0

:[204]
bf [206]

:[205]
pushi.e 10
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
b [207]

:[206]
pushi.e 6
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[207]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v local.a
pushloc.v local.a
pushi.e 0
cmp.i.v EQ
bf [209]

:[208]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_322_0"@23757
conv.s.v
push.s "* Ralsei fell in line!/%"@23758
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.simultext

:[209]
pushloc.v local.a
pushi.e 1
cmp.i.v EQ
bf [211]

:[210]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_323_0"@23759
conv.s.v
push.s "* Ralsei listened closely!/%"@23760
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.simultext

:[211]
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderral
pushi.e 0
cmp.i.v EQ
bf [213]

:[212]
pushi.e 20
conv.i.v
b [214]

:[213]
pushi.e 0
conv.i.v

:[214]
pop.v.v self.actconral

:[215]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [217]

:[216]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [218]

:[217]
push.e 0

:[218]
bf [220]

:[219]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[220]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [223]

:[221]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [223]

:[222]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
b [224]

:[223]
push.e 1

:[224]
bf [227]

:[225]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [227]

:[226]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e 1
pop.v.i self.actcon

:[227]
b [240]

:[228]
push.v 372.image_alpha
pushi.e 0
cmp.i.v EQ
bt [237]

:[229]
pushi.e 373
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [231]

:[230]
push.v 373.image_alpha
pushi.e 0
cmp.i.v EQ
b [232]

:[231]
push.e 0

:[232]
bt [237]

:[233]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [235]

:[234]
push.v 374.image_alpha
pushi.e 0
cmp.i.v EQ
b [236]

:[235]
push.e 0

:[236]
b [238]

:[237]
push.e 1

:[238]
bf [240]

:[239]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v

:[240]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[241]
pushi.e 66
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [245]

:[242]
push.v self.overrideAttack
pushi.e 0
cmp.i.v EQ
bf [244]

:[243]
pushi.e 1
pop.v.i self.overrideAttack
b [245]

:[244]
pushi.e 0
pop.v.i self.overrideAttack

:[245]
pushi.e 81
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [247]

:[246]
push.v self.quizDifficulty
pushi.e 0
cmp.i.v GT
b [248]

:[247]
push.e 0

:[248]
bf [250]

:[249]
push.v self.quizDifficulty
push.e 1
sub.i.v
pop.v.v self.quizDifficulty
push.s "Quiz difficulty = "@23761
push.v self.quizDifficulty
call.i string(argc=1)
add.v.s
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[250]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [252]

:[251]
push.v self.quizDifficulty
pushi.e 5
cmp.i.v LT
b [253]

:[252]
push.e 0

:[253]
bf [end]

:[254]
push.v self.quizDifficulty
push.e 1
add.i.v
pop.v.v self.quizDifficulty
push.s "Quiz difficulty = "@23761
push.v self.quizDifficulty
call.i string(argc=1)
add.v.s
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[end]