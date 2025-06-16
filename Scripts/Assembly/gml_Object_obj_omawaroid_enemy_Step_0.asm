.localvar 2 arguments
.localvar 23076 simultext 10278

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [71]

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
bf [37]

:[5]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[7]
push.v self.virokun_battle_init
conv.v.b
not.b
bf [9]

:[8]
pushi.e 1
pop.v.b self.virokun_battle_init
pushi.e 418
conv.i.v
call.i gml_Script_i_ex(argc=1)
pop.v.v self.virokun_battle

:[9]
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
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_23_0"@23021
conv.s.v
push.s "You'll need TWO&apples to stop ME!"@23022
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[11]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_24_0"@23023
conv.s.v
push.s "Wee-woo-wee-woo!"@23024
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[13]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_25_0"@23025
conv.s.v
push.s "Did you take your&bullets today?"@23026
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[15]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_26_0"@23027
conv.s.v
push.s "Where there's a wee,&there's a woo."@23028
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[17]
push.v self.virokun_battle
conv.v.b
bf [25]

:[18]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_32_0"@23029
conv.s.v
push.s "Hey! Virus!&You've gotta pay!"@23030
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[20]
pushi.e 418
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [25]

:[21]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_38_0"@23031
conv.s.v
push.s "You showed that virus,& wee-woo!"@23032
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
push.s "obj_omawaroid_enemy_slash_Step_0_gml_39_0"@23033
conv.s.v
push.s "Have some&free bullets!"@23034
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[25]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [27]

:[26]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_45_0"@23035
conv.s.v
push.s "All in a day's&work, wee-woo."@23036
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[27]
push.v self.nact_count
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.v self.nact_balloon
conv.v.b
not.b
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 1
pop.v.b self.nact_balloon
push.s "obj_omawaroid_enemy_slash_Step_0_gml_51_0"@23037
conv.s.v
push.s "This girl is so sweet...&Let's give her free bullets!"@23038
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[32]
push.v self.ultimatehealprompt
pushi.e 1
cmp.i.v EQ
bf [36]

:[33]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_56_0"@23039
conv.s.v
push.s "(That's the worst&healing I've seen)"@23040
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.myself
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_59_0"@23041
conv.s.v
push.s "(Is she charging&for that?)"@23042
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[35]
pushi.e 0
pop.v.i self.ultimatehealprompt

:[36]
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

:[37]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [40]

:[39]
push.e 0

:[40]
bf [46]

:[41]
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
bf [46]

:[42]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [44]

:[43]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[44]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [46]

:[45]
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

:[46]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [48]

:[47]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [49]

:[48]
push.e 0

:[49]
bf [71]

:[50]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 16
cmp.i.v EQ
bf [70]

:[51]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [53]

:[52]
push.v self.chasecheck
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
push.i 231869
setowner.e
push.s "Vaccine"@23043
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
pushi.e 15
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
b [59]

:[56]
push.i 231869
setowner.e
push.s "CarChase"@21816
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
pushi.e 16
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.chasecheck
pushi.e 0
cmp.i.v NEQ
bf [58]

:[57]
push.v self.chasecheck
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.special

:[58]
pushi.e 0
pop.v.i self.chasecheck

:[59]
pushi.e 0
pop.v.i self.chasecheck
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
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [61]

:[60]
push.i 231921
setowner.e
push.s "obj_omawaroid_enemy_slash_Step_0_gml_103_0"@23044
conv.s.v
push.s "* Ambyu-Lance is sucking up coffee out of a tall glass."@23045
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[61]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_104_0"@23046
conv.s.v
push.s "* Ambyu-Lance puts a clown nose on to make you comfortable."@23047
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[63]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [65]

:[64]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_105_0"@23048
conv.s.v
push.s "* Ambyu-Lance is comparing the battle to a dentist visit."@23049
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[65]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [67]

:[66]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_106_0"@23050
conv.s.v
push.s "* Ambyu-Lance is making siren noises with its mouth."@23051
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[67]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [69]

:[68]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_107_0"@23052
conv.s.v
push.s "* Smells like isopropyl."@23053
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[69]
pushi.e 1
pop.v.i self.attacked
b [71]

:[70]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[71]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[72]
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
bf [74]

:[73]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
pushi.e 1
pop.v.i self.actcon
push.s "obj_omawaroid_enemy_slash_Step_0_gml_130_0"@23054
conv.s.v
push.s "* AMBYU-LANCE - If it doesn't find an accident, it'll make one!/%"@23055
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[77]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [79]

:[78]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [92]

:[81]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [83]

:[82]
pushi.e 1
pop.v.i self.actcon
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_omawaroid_enemy_slash_Step_0_gml_147_0"@23056
conv.s.v
push.s "\\E5* Ambulance? Hell no. Like doctors even GET me!/"@23057
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_omawaroid_enemy_slash_Step_0_gml_149_0"@23058
conv.s.v
push.s "* (Susie told you to \\cYavoid getting hit\\cW by the ambulances!)/%"@23059
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
pop.v.i self.chasecheck
call.i gml_Script_scr_battletext(argc=0)
popz.v
b [91]

:[83]
push.v self.nact_count
push.e 1
add.i.v
pop.v.v self.nact_count
pushi.e 411
pushenv [85]

:[84]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[85]
popenv [84]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GTE
bf [87]

:[86]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_omawaroid_enemy_slash_Step_0_gml_179_0"@23060
conv.s.v
push.s "* Noelle mutters to herself about saws and needles./%"@23061
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [90]

:[87]
push.v self.nact_count
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_omawaroid_enemy_slash_Step_0_gml_169_0"@23062
conv.s.v
push.s "* Noelle acted warmly towards Ambyu-Lance!/"@23063
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "2"@4175
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_omawaroid_enemy_slash_Step_0_gml_171_0"@23064
conv.s.v
push.s "\\E2* Needles aren't scary..^1. medicine's important^1, you know?/%"@23065
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [90]

:[89]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_omawaroid_enemy_slash_Step_0_gml_183_0_b"@23066
conv.s.v
push.s "* Noelle muttered absentmindedly about hospital tools!/%"@23067
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[90]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 5
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[91]
b [97]

:[92]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [94]

:[93]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [95]

:[94]
push.e 0

:[95]
bf [97]

:[96]
pushi.e 1
pop.v.i self.actcon
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_omawaroid_enemy_slash_Step_0_gml_199_0"@23068
conv.s.v
push.s "\\EH* We'll use your service^1, friends!/"@23069
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_omawaroid_enemy_slash_Step_0_gml_201_0"@23070
conv.s.v
push.s "* (Ralsei encouraged you to \\cYget hit\\cW by the ambulances!)/%"@23071
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e -1
pop.v.i self.chasecheck
call.i gml_Script_scr_battletext(argc=0)
popz.v

:[97]
push.v self.actcon
pushi.e 6
cmp.i.v EQ
bf [99]

:[98]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
pushi.e 1
pop.v.i self.actcon

:[102]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [104]

:[103]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [105]

:[104]
push.e 0

:[105]
bf [113]

:[106]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [108]

:[107]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_227_0"@23072
conv.s.v
push.s "* Susie lies about how often she brushes and flosses!/%"@23073
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [109]

:[108]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_227_1"@23074
conv.s.v
push.s "* Susie lies about her health!/%"@23075
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[109]
pop.v.v local.simultext
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulordersus
pushi.e 0
cmp.i.v EQ
bf [111]

:[110]
pushi.e 20
conv.i.v
b [112]

:[111]
pushi.e 0
conv.i.v

:[112]
pop.v.v self.actconsus

:[113]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [115]

:[114]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [116]

:[115]
push.e 0

:[116]
bf [124]

:[117]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [119]

:[118]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_238_0"@23077
conv.s.v
push.s "* Ralsei washes his hands for 60 seconds!/%"@23078
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [120]

:[119]
push.s "obj_omawaroid_enemy_slash_Step_0_gml_238_1"@23079
conv.s.v
push.s "* Ralsei washes his hands!/%"@23080
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[120]
pop.v.v local.simultext
pushloc.v local.simultext
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulorderral
pushi.e 0
cmp.i.v EQ
bf [122]

:[121]
pushi.e 20
conv.i.v
b [123]

:[122]
pushi.e 0
conv.i.v

:[123]
pop.v.v self.actconral

:[124]
push.v self.actingnoe
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
push.v self.actconnoe
pushi.e 1
cmp.i.v EQ
b [127]

:[126]
push.e 0

:[127]
bf [129]

:[128]
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.s "obj_omawaroid_enemy_slash_Step_0_gml_253_0"@23081
conv.s.v
push.s "* Noelle takes on and off her nurse hat really fast!/%"@23082
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconnoe

:[129]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [131]

:[130]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [132]

:[131]
push.e 0

:[132]
bf [134]

:[133]
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[134]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [138]

:[135]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [138]

:[136]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
bt [138]

:[137]
push.v self.actconnoe
pushi.e 20
cmp.i.v EQ
b [139]

:[138]
push.e 1

:[139]
bf [end]

:[140]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [end]

:[141]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e -1
pop.v.i self.actconnoe
pushi.e 1
pop.v.i self.actcon

:[end]