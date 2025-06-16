.localvar 2 arguments
.localvar 26765 random_zone 13770
.localvar 26766 zone_word 13771
.localvar 26769 city_word 13772
.localvar 26774 shipStatus 13773

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [158]

:[1]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [52]

:[5]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 50
pop.v.i global.typer
push.v self.attackorder
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.attackorder

:[7]
push.v self.attackorder
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.rr

:[9]
push.v self.attackorder
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 2
pop.v.i self.rr

:[11]
push.v self.attackorder
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.i self.rr

:[13]
push.v self.attackorder
push.e 1
add.i.v
pop.v.v self.attackorder
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [18]

:[14]
push.v self.duckmode
conv.v.b
bf [16]

:[15]
push.s "obj_rouxls_enemy_slash_Step_0_gml_19_0"@26736
conv.s.v
push.s "Fly, mine Duckie! Fly!/%"@26737
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [17]

:[16]
push.s "obj_rouxls_enemy_slash_Step_0_gml_22_0"@26738
conv.s.v
push.s "Go forth,&my caravan!/%"@26739
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[17]
pushi.e 1
pop.v.i self.chosenattack
b [22]

:[18]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_rouxls_enemy_slash_Step_0_gml_28_0"@26740
conv.s.v
push.s "Solveth my puzzleth,&yon Maties!/%"@26741
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
pop.v.i self.chosenattack
b [22]

:[20]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_rouxls_enemy_slash_Step_0_gml_33_0"@26742
conv.s.v
push.s "Thrashst off&the Porthbow!/%"@26743
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.chosenattack

:[22]
pushi.e 0
pop.v.i self.talkedcon
pushi.e 0
pop.v.i self.talktimer
pushi.e 0
pop.v.i self.ralseitalks
push.v self.ballooncount
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_rouxls_enemy_slash_Step_0_gml_42_0"@26744
conv.s.v
push.s "The Rouxls&(pronounced Rules)&art Simple!/%"@26745
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.ballooncon

:[24]
push.v self.ballooncount
pushi.e 1
cmp.i.v EQ
bf [31]

:[25]
push.v self.hasplayerplacedhouses
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
cmp.v.v NEQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.s "obj_rouxls_enemy_slash_Step_0_gml_45_0"@26746
conv.s.v
push.s "O-oweth! The houses,&thoust fool! THE&HOUSES!!!/%"@26747
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [31]

:[30]
push.s "obj_rouxls_enemy_slash_Step_0_gml_46_0"@26748
conv.s.v
push.s "Soon, Victorie&will be Mineth,&and Queene will&maketh me her&Left Hande Man.../%"@26749
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[31]
push.v self.ballooncount
pushi.e 2
cmp.i.v EQ
bf [38]

:[32]
push.v self.hasplayerplacedhouses
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
cmp.v.v NEQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
push.s "obj_rouxls_enemy_slash_Step_0_gml_50_0"@26750
conv.s.v
push.s "STOP HITTINGETH&ME AND PLAYETH&MY MINI-GAME,&YOU ROGUES!!!/%"@26751
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [38]

:[37]
push.s "obj_rouxls_enemy_slash_Step_0_gml_51_0"@26752
conv.s.v
push.s "Umm,&Mr. Kaard?&What happens&if WE win?/%"@26753
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.ralseitalks
pushi.e 2
pop.v.i self.ballooncon

:[38]
push.v self.ballooncount
pushi.e 3
cmp.i.v EQ
bf [40]

:[39]
push.v self.hasplayerplacedhouses
pushi.e 1
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
push.s "obj_rouxls_enemy_slash_Step_0_gml_57_0"@26754
conv.s.v
push.s "STOP!!! STOP&BUILDINGETH HOUSES!!!&I HAVE TO WIN!!!/%"@26755
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[43]
push.v self.ballooncount
push.e 1
add.i.v
pop.v.v self.ballooncount
push.v self.ralseitalks
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
pushi.e 374
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 74
pop.v.i global.typer
pushi.e 374
conv.i.v
call.i gml_Script_scr_guardpeek(argc=1)
popz.v
pushi.e 7
conv.i.v
push.v 374.y
pushi.e 15
add.i.v
push.v 374.x
pushi.e 75
add.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
popz.v
b [49]

:[48]
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

:[49]
push.v self.ballooncon
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer
b [52]

:[51]
push.d 0.5
pop.v.d self.talked
pushi.e 0
pop.v.i self.talktimer

:[52]
push.v self.talked
push.d 0.5
cmp.d.v EQ
bf [69]

:[53]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [55]

:[54]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [56]

:[55]
push.e 0

:[56]
bt [58]

:[57]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [59]

:[58]
push.e 1

:[59]
bf [69]

:[60]
pushi.e 64
pushenv [62]

:[61]
call.i instance_destroy(argc=0)
popz.v

:[62]
popenv [61]
pushi.e 870
pushenv [64]

:[63]
call.i instance_destroy(argc=0)
popz.v

:[64]
popenv [63]
push.v self.ballooncon
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
push.s "obj_rouxls_enemy_slash_Step_0_gml_85_0"@26756
conv.s.v
push.s "Conquer Houses!&Whoeverest has the&most, Winst!/%"@26757
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm

:[66]
push.v self.ballooncon
pushi.e 2
cmp.i.v EQ
bf [68]

:[67]
push.s "obj_rouxls_enemy_slash_Step_0_gml_86_0"@26758
conv.s.v
push.s ".../%"@19972
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.alarm

:[68]
pushi.e 0
pop.v.i self.ballooncon
push.d 0.6
pop.v.d self.talked
pushi.e 50
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

:[69]
push.v self.talked
push.d 0.7
cmp.d.v EQ
bf [82]

:[70]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [72]

:[71]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [73]

:[72]
push.e 0

:[73]
bt [75]

:[74]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [76]

:[75]
push.e 1

:[76]
bf [82]

:[77]
pushi.e 64
pushenv [79]

:[78]
call.i instance_destroy(argc=0)
popz.v

:[79]
popenv [78]
pushi.e 870
pushenv [81]

:[80]
call.i instance_destroy(argc=0)
popz.v

:[81]
popenv [80]
push.s "obj_rouxls_enemy_slash_Step_0_gml_102_0"@26759
conv.s.v
push.s "Uh oh/%"@26760
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.d 0.8
pop.v.d self.talked
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm
pushi.e 50
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
bf [101]

:[86]
push.v self.talktimer
push.e 1
add.i.v
pop.v.v self.talktimer
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [88]

:[87]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [89]

:[88]
push.e 0

:[89]
bt [91]

:[90]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [92]

:[91]
push.e 1

:[92]
bf [98]

:[93]
pushi.e 64
pushenv [95]

:[94]
call.i instance_destroy(argc=0)
popz.v

:[95]
popenv [94]
pushi.e 870
pushenv [97]

:[96]
call.i instance_destroy(argc=0)
popz.v

:[97]
popenv [96]
pushi.e 1
pop.v.i self.talkedcon

:[98]
push.v self.talkedcon
pushi.e 1
cmp.i.v EQ
bf [101]

:[99]
pushi.e 0
pop.v.i self.rtimer
pushi.e -1
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [101]

:[100]
pushi.e 7
pop.v.i global.mnfight

:[101]
pushglb.v global.mnfight
pushi.e 7
cmp.i.v EQ
bf [103]

:[102]
push.v self.buildedblocks
pushi.e 0
cmp.i.v EQ
b [104]

:[103]
push.e 0

:[104]
bf [111]

:[105]
push.v self.buildedblockstimer
push.e 1
add.i.v
pop.v.v self.buildedblockstimer
push.v self.buildedblockstimer
pushi.e 1
cmp.i.v EQ
bf [109]

:[106]
pushi.e 754
pushenv [108]

:[107]
pushi.e 2
pop.v.i self.TurnCon

:[108]
popenv [107]

:[109]
push.v self.buildedblockstimer
pushi.e 60
cmp.i.v GT
bf [111]

:[110]
pushi.e 2
pop.v.i global.mnfight
pushi.e 1
pop.v.i self.buildedblocks
pushi.e 0
pop.v.i self.buildedblockstimer

:[111]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [113]

:[112]
push.v self.buildedblocks
pushi.e 1
cmp.i.v EQ
b [114]

:[113]
push.e 0

:[114]
bf [122]

:[115]
pushi.e 2
pop.v.i self.buildedblocks
push.v self.chosenattack
pop.v.v self.rr
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [117]

:[116]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [118]

:[117]
push.e 0

:[118]
bf [120]

:[119]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[120]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [122]

:[121]
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

:[122]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [125]

:[123]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
bf [125]

:[124]
push.v self.buildedblocks
pushi.e 2
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [158]

:[127]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [157]

:[128]
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [130]

:[129]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[130]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [132]

:[131]
push.i 231869
setowner.e
push.s "ThrashHead"@26762
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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 26
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.head_difficulty
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.difficulty
b [135]

:[132]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [134]

:[133]
push.i 231869
setowner.e
push.s "ThrashFoot"@26763
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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 7
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 27
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.wheel_difficulty
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.difficulty
b [135]

:[134]
push.i 231869
setowner.e
push.s "PuzzleBlocks"@26764
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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 6
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 28
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type

:[135]
pushi.e 200
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
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pop.v.v local.random_zone
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [137]

:[136]
pushi.e -1
pushloc.v local.random_zone
conv.v.i
push.v [array]self.zone
pop.v.v local.zone_word
push.i 231921
setowner.e
push.s "obj_rouxls_enemy_slash_Step_0_gml_136_0"@26767
conv.s.v
pushloc.v local.zone_word
push.s "* You need more ~1 Zones."@26768
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[137]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [139]

:[138]
pushi.e -1
pushloc.v local.random_zone
conv.v.i
push.v [array]self.city
pop.v.v local.city_word
push.s "obj_rouxls_enemy_slash_Step_0_gml_142_0"@26770
conv.s.v
pushloc.v local.city_word
push.s "* Your city is lacking ~1."@26771
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[139]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [154]

:[140]
push.s "obj_rouxls_enemy_slash_Step_0_gml_230_0"@26772
conv.s.v
push.s "cool"@26773
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.shipStatus
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [142]

:[141]
push.s "obj_rouxls_enemy_slash_Step_0_gml_235_0"@26775
conv.s.v
push.s "elegant"@26776
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.shipStatus

:[142]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [144]

:[143]
push.s "obj_rouxls_enemy_slash_Step_0_gml_239_0"@26777
conv.s.v
push.s "lively"@26778
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.shipStatus

:[144]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [146]

:[145]
push.s "obj_rouxls_enemy_slash_Step_0_gml_243_0"@26779
conv.s.v
push.s "cute"@26780
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.shipStatus

:[146]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [148]

:[147]
push.s "obj_rouxls_enemy_slash_Step_0_gml_247_0"@26781
conv.s.v
push.s "hot"@26782
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.shipStatus

:[148]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [150]

:[149]
push.s "obj_rouxls_enemy_slash_Step_0_gml_251_0"@26783
conv.s.v
push.s "gun's"@26784
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.shipStatus

:[150]
push.v self.duckmode
conv.v.b
bf [152]

:[151]
push.s "obj_rouxls_enemy_slash_Step_0_gml_147_0"@26785
conv.s.v
push.s "* The enemy's ship seems to have fallen in love with yours."@26786
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [153]

:[152]
push.s "obj_rouxls_enemy_slash_Step_0_gml_147_1"@26787
conv.s.v
pushloc.v local.shipStatus
push.s "* You can't help but notice the enemy's ship is very ~1."@26788
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)

:[153]
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[154]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [156]

:[155]
push.s "obj_rouxls_enemy_slash_Step_0_gml_150_0"@26789
conv.s.v
push.s "* Smells like a model house set."@26790
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[156]
pushi.e 1
pop.v.i self.attacked
pushi.e 0
pop.v.i self.buildedblocks
b [158]

:[157]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[158]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [235]

:[159]
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
bf [161]

:[160]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [162]

:[161]
push.e 0

:[162]
bf [164]

:[163]
pushi.e 1
pop.v.i self.actcon
push.s "obj_rouxls_enemy_slash_Step_0_gml_171_0"@26791
conv.s.v
push.s "* ROUXLS - Miniboss for hire. Will appear even if unhired.&\"I eventh do Partiese\"/%"@26792
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[164]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [166]

:[165]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [167]

:[166]
push.e 0

:[167]
bf [169]

:[168]
push.s "obj_rouxls_enemy_slash_Step_0_gml_178_0"@26793
conv.s.v
push.s "%%"@2565
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 9
pop.v.i self.acting
pushi.e 1
pop.v.i self.HouseCount

:[169]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [171]

:[170]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [172]

:[171]
push.e 0

:[172]
bf [174]

:[173]
push.s "obj_rouxls_enemy_slash_Step_0_gml_187_0"@26794
conv.s.v
push.s "%%"@2565
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 9
pop.v.i self.acting
pushi.e 2
pop.v.i self.HouseCount

:[174]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [176]

:[175]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [177]

:[176]
push.e 0

:[177]
bf [179]

:[178]
push.s "obj_rouxls_enemy_slash_Step_0_gml_196_0"@26795
conv.s.v
push.s "%%"@2565
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 9
pop.v.i self.acting
pushi.e 3
pop.v.i self.HouseCount

:[179]
push.v self.acting
pushi.e 5
cmp.i.v EQ
bf [181]

:[180]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [182]

:[181]
push.e 0

:[182]
bf [184]

:[183]
push.s "obj_rouxls_enemy_slash_Step_0_gml_205_0"@26796
conv.s.v
push.s "%%"@2565
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 9
pop.v.i self.acting
pushi.e 4
pop.v.i self.HouseCount

:[184]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [186]

:[185]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [187]

:[186]
push.e 0

:[187]
bf [195]

:[188]
pushi.e 754
pushenv [191]

:[189]
push.v self.RalseiDistractTwice
pushi.e 1
cmp.i.v NEQ
bf [191]

:[190]
pushi.e 1
pop.v.i self.RalseiDistract

:[191]
popenv [189]
push.v 754.RalseiDistract
pushi.e 1
cmp.i.v EQ
bf [193]

:[192]
push.s "obj_rouxls_enemy_slash_Step_0_gml_214_0"@26799
conv.s.v
push.s "* Ralsei distracted! Rouxls will place one less house next turn./%"@26800
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [194]

:[193]
push.s "obj_rouxls_enemy_slash_Step_0_gml_215_0"@26801
conv.s.v
push.s "* Ralsei distracted! But it failed./%"@26802
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[194]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconral

:[195]
push.v self.acting
pushi.e 9
cmp.i.v EQ
bf [198]

:[196]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
bf [198]

:[197]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [199]

:[198]
push.e 0

:[199]
bf [203]

:[200]
pushi.e 754
pushenv [202]

:[201]
pushi.e 1
pop.v.i self.MyTurn
pushi.e 0
pop.v.i self.TurnCon
push.v 729.HouseCount
pop.v.v self.HouseCountMax

:[202]
popenv [201]
pushi.e 10
pop.v.i self.acting

:[203]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [206]

:[204]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [206]

:[205]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
b [207]

:[206]
push.e 1

:[207]
bf [210]

:[208]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [210]

:[209]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e 1
pop.v.i self.actcon

:[210]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [212]

:[211]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [213]

:[212]
push.e 0

:[213]
bf [217]

:[214]
push.v self.endbattle
pushi.e 1
cmp.i.v EQ
bf [216]

:[215]
pushi.e 50
pop.v.i self.actcon
b [217]

:[216]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[217]
push.v self.actcon
pushi.e 50
cmp.i.v EQ
bf [219]

:[218]
pushi.e 45
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 51
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[219]
push.v self.actcon
pushi.e 52
cmp.i.v EQ
bf [226]

:[220]
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_rouxls_enemy_slash_Step_0_gml_263_0"@26805
conv.s.v
push.s "\\E0* It seemseth the Game hath been Overed!/"@26806
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v 754.actresult
push.s "lost"@26807
cmp.s.v EQ
bf [222]

:[221]
push.s "obj_rouxls_enemy_slash_Step_0_gml_266_0"@26808
conv.s.v
push.s "\\E2* And lo! I haveth the moste Real Estate!/"@26809
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [225]

:[222]
push.v 754.actresult
push.s "won"@21885
cmp.s.v EQ
bf [224]

:[223]
push.s "obj_rouxls_enemy_slash_Step_0_gml_270_0"@26810
conv.s.v
push.s "\\E1* What!? Howst doth you have more Houstes?!/"@26811
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [225]

:[224]
push.s "obj_rouxls_enemy_slash_Step_0_gml_274_0"@26812
conv.s.v
push.s "\\E5* I haveth noe idea who won or lost./"@26813
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.i 231204
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 435
pop.v.v [array]self.flag

:[225]
push.s "obj_rouxls_enemy_slash_Step_0_gml_364_0"@26814
conv.s.v
push.s "\\E5* CUT THE BATTLE!!!/%"@26815
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e 53
pop.v.i self.actcon

:[226]
push.v self.actcon
pushi.e 53
cmp.i.v EQ
bf [228]

:[227]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [229]

:[228]
push.e 0

:[229]
bf [235]

:[230]
pushi.e 756
pushenv [232]

:[231]
call.i instance_destroy(argc=0)
popz.v

:[232]
popenv [231]
pushi.e 755
pushenv [234]

:[233]
call.i instance_destroy(argc=0)
popz.v

:[234]
popenv [233]
call.i gml_Script_scr_wincombat(argc=0)
popz.v
pushi.e 55
pop.v.i self.actcon

:[235]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [end]

:[236]
pushi.e 103
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [238]

:[237]
pushi.e 49
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [239]

:[238]
push.e 1

:[239]
bf [241]

:[240]
pushi.e 0
pop.v.i self.bulletoverride

:[241]
pushi.e 104
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [243]

:[242]
pushi.e 50
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [244]

:[243]
push.e 1

:[244]
bf [246]

:[245]
pushi.e 1
pop.v.i self.bulletoverride

:[246]
pushi.e 105
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [248]

:[247]
pushi.e 51
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [249]

:[248]
push.e 1

:[249]
bf [251]

:[250]
pushi.e 2
pop.v.i self.bulletoverride

:[251]
pushi.e 101
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [253]

:[252]
pushi.e 52
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [254]

:[253]
push.e 1

:[254]
bf [256]

:[255]
pushi.e -1
pop.v.i self.bulletoverride

:[256]
pushi.e 72
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[257]
pushi.e 202
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [259]

:[258]
pushi.e 202
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 204
conv.i.v
call.i instance_destroy(argc=1)
popz.v
b [end]

:[259]
call.i @@This@@(argc=0)
pushi.e 202
conv.i.v
call.i gml_Script_scr_following_afterimage(argc=2)
pop.v.v self.d
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.depth
pushi.e 730
conv.i.v
pushi.e 204
conv.i.v
call.i gml_Script_scr_following_afterimage(argc=2)
pop.v.v self.d
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
pop.i.v [stacktop]self.depth

:[end]