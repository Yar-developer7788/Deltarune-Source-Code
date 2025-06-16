.localvar 2 arguments
.localvar 23271 dialogText 10714
.localvar 23298 randomText 10715
.localvar 23299 randomChoice 10716
.localvar 23709 hasTail 10717
.localvar 107 i 10718
.localvar 23292 battleText 10719
.localvar 23770 trainText 10720
.localvar 15767 sentenceEnd 10721

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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [116]

:[7]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [9]

:[8]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [57]

:[11]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [13]

:[12]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[13]
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
bf [15]

:[14]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
b [16]

:[15]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)

:[16]
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_19_0"@23688
conv.s.v
push.s "Processes! Services!&Performance! Details!"@23689
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText

:[18]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [28]

:[19]
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
bf [21]

:[20]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_27_0"@23691
conv.s.v
push.s "Wrinkly clothing?"@23692
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText
b [27]

:[21]
pushloc.v local.randomChoice
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_30_0"@23693
conv.s.v
push.s "Slouched back?"@23694
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText
b [27]

:[23]
pushloc.v local.randomChoice
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_33_0"@23695
conv.s.v
push.s "Delinquent tendencies?"@23696
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText
b [27]

:[25]
pushloc.v local.randomChoice
pushi.e 3
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_36_0"@23697
conv.s.v
push.s "Untied shoelaces?"@23698
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.randomText

:[27]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_39_0"@23699
conv.s.v
pushloc.v local.randomText
push.s "~1&Let me whip it into shape!"@23700
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v local.dialogText

:[28]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [33]

:[29]
push.v self.timesOrdered
push.e 1
add.i.v
pop.v.v self.timesOrdered
push.v self.timesOrdered
pushi.e 2
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_46_0"@23701
conv.s.v
push.s "Hors d'oeuvre,&Hors d'oeuvre...&I mean, order, order!"@23702
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [32]

:[31]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_46_1"@23703
conv.s.v
push.s "Order, order!"@23704
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[32]
pop.v.v local.dialogText

:[33]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [38]

:[34]
push.v self.timesCharged
push.e 1
add.i.v
pop.v.v self.timesCharged
push.v self.timesCharged
pushi.e 1
cmp.i.v GT
bf [36]

:[35]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_53_0"@23705
conv.s.v
push.s "Kitties!!"@23706
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [37]

:[36]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_53_1"@23707
conv.s.v
push.s "Aren't my kitties just&so well behaved? Watch!"@23708
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[37]
pop.v.v local.dialogText

:[38]
pushi.e 0
pop.v.b local.hasTail
pushi.e 0
pop.v.i local.i

:[39]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [46]

:[40]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.chararmor1
pushi.e 7
cmp.i.v EQ
bt [42]

:[41]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.chararmor2
pushi.e 7
cmp.i.v EQ
b [43]

:[42]
push.e 1

:[43]
bf [45]

:[44]
pushi.e 1
pop.v.b local.hasTail

:[45]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [39]

:[46]
pushloc.v local.hasTail
pushi.e 1
cmp.b.v EQ
bf [48]

:[47]
push.v self.tailcheck
conv.v.b
not.b
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
pushi.e 1
pop.v.b self.tailcheck
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_68_0"@23710
conv.s.v
push.s "Chaos, chaos!?&No, no! Order, order!&Now get rid of that&silly tail!"@23711
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText

:[51]
pushi.e -5
pushi.e 2
push.v [array]self.charweapon
pushi.e 7
cmp.i.v EQ
bf [53]

:[52]
push.v self.knifecheck
conv.v.b
not.b
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 1
pop.v.b self.knifecheck
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_74_0"@23712
conv.s.v
push.s "Chaos, chaos!?&No, no! Order, order!&Now get rid of that&silly Devilsknife!"@23713
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.dialogText

:[56]
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

:[57]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [60]

:[59]
push.e 0

:[60]
bf [66]

:[61]
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
bf [66]

:[62]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [64]

:[63]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[64]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [66]

:[65]
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

:[66]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [68]

:[67]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [116]

:[70]
push.v self.rtimer
pushi.e 0
cmp.i.v EQ
bf [79]

:[71]
push.v self.overrideAttack
conv.v.b
bf [73]

:[72]
pushi.e 2
pop.v.i self.rr
b [77]

:[73]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [75]

:[74]
pushi.e 3
conv.i.v
b [76]

:[75]
pushi.e 0
conv.i.v

:[76]
pop.v.v self.rr

:[77]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [79]

:[78]
pushi.e 45
pop.v.i 872.target_angle

:[79]
push.v self.rtimer
pushi.e 2
cmp.i.v EQ
bf [81]

:[80]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
b [82]

:[81]
push.e 0

:[82]
bf [93]

:[83]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [93]

:[84]
pushi.e 448
pushenv [92]

:[85]
push.v 453.quizDifficulty
pushi.e 1
cmp.i.v GT
bf [87]

:[86]
push.v 453.quizDifficulty
pushi.e 4
cmp.i.v NEQ
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
pushi.e 2
conv.i.v
b [91]

:[90]
pushi.e -1
conv.i.v

:[91]
pop.v.v self.rr

:[92]
popenv [85]

:[93]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 15
cmp.i.v EQ
bf [115]

:[94]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [96]

:[95]
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
b [100]

:[96]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
push.i 231869
setowner.e
push.s "RisingDiamonds"@22389
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
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
b [100]

:[98]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [100]

:[99]
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
push.v self.quizDifficulty
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.difficulty

:[100]
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
bf [102]

:[101]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_164_0"@23723
conv.s.v
push.s "* Tasque Manager makes a list of her outfits for the next year. She only has one outfit."@23724
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText
b [110]

:[102]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [104]

:[103]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_167_0"@23725
conv.s.v
push.s "* Tasque Manager is writing \"manage tasks\" next to every entry in her daily planner."@23726
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText
b [110]

:[104]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [106]

:[105]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_170_0"@23727
conv.s.v
push.s "* Tasque Manager is straightening her whip with a hair straightener."@23728
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText
b [110]

:[106]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [108]

:[107]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_173_0"@23729
conv.s.v
push.s "* Tasque Manager is making herself take priority over everything."@23730
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText
b [110]

:[108]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [110]

:[109]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_176_0"@23731
conv.s.v
push.s "* Smells like live wiring."@23732
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[110]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [112]

:[111]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_181_0"@23733
conv.s.v
push.s "* Tasque Manager has reached her&meticulously scheduled bedtime."@23734
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[112]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [114]

:[113]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_186_0"@23735
conv.s.v
push.s "* Tasque Manager has found things&to be sufficiently organized."@23736
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[114]
push.i 231921
setowner.e
pushloc.v local.battleText
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushi.e 1
pop.v.i self.attacked
b [116]

:[115]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[116]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [201]

:[117]
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
bf [119]

:[118]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [120]

:[119]
push.e 0

:[120]
bf [122]

:[121]
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

:[122]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [124]

:[123]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [125]

:[124]
push.e 0

:[125]
bf [132]

:[126]
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
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [128]

:[127]
pushi.e 5
pop.v.i self.actcon
push.s "obj_tasque_manager_enemy_slash_Other_24_gml_235_0"@23762
conv.s.v
push.s "* Kris got trained like an animal!!/%"@23763
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
b [132]

:[128]
push.s "obj_tasque_manager_enemy_slash_Other_24_gml_238_0"@23764
conv.s.v
push.s "* Kris got managed!/%"@23765
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderkri
pushi.e 0
cmp.i.v EQ
bf [130]

:[129]
pushi.e 20
conv.i.v
b [131]

:[130]
pushi.e -1
conv.i.v

:[131]
pop.v.v self.actcon

:[132]
push.v self.actcon
pushi.e 5
cmp.i.v EQ
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
bf [140]

:[136]
push.v self.timesTrained
push.e 1
add.i.v
pop.v.v self.timesTrained
pushi.e 50
pop.v.i global.typer
push.v self.timesTrained
pushi.e 3
cmp.i.v EQ
bf [138]

:[137]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_231_0"@23766
conv.s.v
push.s "Hush, puppy!&No growling..."@23767
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [139]

:[138]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_231_1"@23768
conv.s.v
push.s "Oh, what a&perfect little&puppy you are!"@23769
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[139]
pop.v.v local.trainText
pushloc.v local.trainText
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
pop.v.v self.balloon
pushi.e 6
pop.v.i global.typer
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_236_0"@23771
conv.s.v
push.s "* Tasque Manager seemed slightly pleased at the Order!!/%"@23772
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 6
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[140]
push.v self.actcon
pushi.e 7
cmp.i.v EQ
bf [142]

:[141]
call.i gml_Script_button1_p(argc=0)
conv.v.b
b [143]

:[142]
push.e 0

:[143]
bf [149]

:[144]
push.v self.balloon
pushi.e -9
pushenv [146]

:[145]
call.i instance_destroy(argc=0)
popz.v

:[146]
popenv [145]
pushi.e 64
pushenv [148]

:[147]
call.i instance_destroy(argc=0)
popz.v

:[148]
popenv [147]
pushi.e 1
pop.v.i self.actcon

:[149]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [151]

:[150]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [152]

:[151]
push.e 0

:[152]
bf [164]

:[153]
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
pushi.e 20
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bt [155]

:[154]
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypushaf]self.actsimulsus
pushi.e 0
pushaf.e
pushi.e 0
cmp.i.v EQ
b [156]

:[155]
push.e 1

:[156]
bf [160]

:[157]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_256_0"@23773
conv.s.v
push.s "* Susie was trained like an animal.../"@23774
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "I"@9483
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "/%"@4449
pop.v.s local.sentenceEnd
push.v self.treatText
conv.v.b
not.b
bf [159]

:[158]
push.i 231917
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulsus
pushi.e 0
popaf.e
pushi.e 1
pop.v.b self.treatText
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_265_0"@23775
conv.s.v
push.s "A treat!! Somebody give her a treat!!"@23776
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 50
conv.i.v
pushi.e 300
conv.i.v
pushi.e 12
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "\\f0/%"@16441
pop.v.s local.sentenceEnd

:[159]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_269_0"@23777
conv.s.v
pushloc.v local.sentenceEnd
push.s "\\EH* Play dead!? I'll teach YOU to play dead!!~1"@23778
conv.s.v
call.i gml_Script_msgnextsubloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 2
pop.v.i self.actconsus
b [164]

:[160]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_274_0"@23779
conv.s.v
push.s "* Susie got managed!/%"@23780
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulordersus
pushi.e 0
cmp.i.v EQ
bf [162]

:[161]
pushi.e 20
conv.i.v
b [163]

:[162]
pushi.e -1
conv.i.v

:[163]
pop.v.v self.actconsus

:[164]
push.v self.actconsus
pushi.e 2
cmp.i.v EQ
bf [166]

:[165]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [167]

:[166]
push.e 0

:[167]
bf [169]

:[168]
pushi.e 50
pop.v.i global.typer
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_284_0"@23781
conv.s.v
push.s "What a wonderfully crafted&signpost^1! I'm giving it an&obedience medal!"@23782
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
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
pop.v.v self.balloon
pushi.e 0
pop.v.i self.actconsus
pushi.e 6
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[169]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [171]

:[170]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [172]

:[171]
push.e 0

:[172]
bf [184]

:[173]
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
pushi.e 20
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bt [175]

:[174]
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypushaf]self.actsimulral
pushi.e 0
pushaf.e
pushi.e 0
cmp.i.v EQ
b [176]

:[175]
push.e 1

:[176]
bf [180]

:[177]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_299_0"@23783
conv.s.v
push.s "* Ralsei got trained like an animal!!/"@23784
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "/%"@4449
pop.v.s local.sentenceEnd
push.v self.badgeText
conv.v.b
not.b
bf [179]

:[178]
push.i 231920
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actsimulral
pushi.e 0
popaf.e
pushi.e 1
pop.v.b self.badgeText
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_307_0"@23785
conv.s.v
push.s "Why the hell do YOU get one of those!!"@23786
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 50
conv.i.v
pushi.e 300
conv.i.v
pushi.e 12
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "\\f0/%"@16441
pop.v.s local.sentenceEnd

:[179]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_311_0"@23787
conv.s.v
pushloc.v local.sentenceEnd
push.s "* Due to good behavior^1, he received an obedience badge.~1"@23788
conv.s.v
call.i gml_Script_msgnextsubloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 2
pop.v.i self.actconral
b [184]

:[180]
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_316_0"@23789
conv.s.v
push.s "* Ralsei got managed!/%"@23790
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderral
pushi.e 0
cmp.i.v EQ
bf [182]

:[181]
pushi.e 20
conv.i.v
b [183]

:[182]
pushi.e -1
conv.i.v

:[183]
pop.v.v self.actconral

:[184]
push.v self.actconral
pushi.e 2
cmp.i.v EQ
bf [186]

:[185]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [187]

:[186]
push.e 0

:[187]
bf [189]

:[188]
pushi.e 50
pop.v.i global.typer
push.s "obj_tasque_manager_enemy_slash_Step_0_gml_326_0"@23791
conv.s.v
push.s "He really&loves to do&what he's told^1,&doesn't he?/%"@23792
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
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
pop.v.v self.balloon
pushi.e 0
pop.v.i self.actconral
pushi.e 6
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[189]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [191]

:[190]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [192]

:[191]
push.e 0

:[192]
bf [194]

:[193]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[194]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [197]

:[195]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [197]

:[196]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
b [198]

:[197]
push.e 1

:[198]
bf [201]

:[199]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [201]

:[200]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e 1
pop.v.i self.actcon

:[201]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[202]
pushi.e 66
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [206]

:[203]
push.v self.overrideAttack
pushi.e 0
cmp.i.v EQ
bf [205]

:[204]
pushi.e 1
pop.v.i self.overrideAttack
b [206]

:[205]
pushi.e 0
pop.v.i self.overrideAttack

:[206]
pushi.e 81
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [208]

:[207]
push.v self.quizDifficulty
pushi.e 0
cmp.i.v GT
b [209]

:[208]
push.e 0

:[209]
bf [211]

:[210]
push.v self.quizDifficulty
push.e 1
sub.i.v
pop.v.v self.quizDifficulty

:[211]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [213]

:[212]
push.v self.quizDifficulty
pushi.e 5
cmp.i.v LT
b [214]

:[213]
push.e 0

:[214]
bf [end]

:[215]
push.v self.quizDifficulty
push.e 1
add.i.v
pop.v.v self.quizDifficulty

:[end]