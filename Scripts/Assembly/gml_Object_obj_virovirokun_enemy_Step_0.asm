.localvar 2 arguments
.localvar 23135 dialogue 10351
.localvar 107 i 10352

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [65]

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
bf [32]

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
pushi.e 50
pop.v.i global.typer
push.v self.omawaroid_battle_init
conv.v.b
not.b
bf [9]

:[8]
pushi.e 1
pop.v.b self.omawaroid_battle_init
pushi.e 411
conv.i.v
call.i gml_Script_i_ex(argc=1)
pop.v.v self.omawaroid_battle

:[9]
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
push.s "obj_virovirokun_enemy_slash_Step_0_gml_24_0"@23117
conv.s.v
push.s "I'm the fever,&I'm the chill."@23118
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
push.s "obj_virovirokun_enemy_slash_Step_0_gml_25_0"@23119
conv.s.v
push.s "Don't let&this bug ya!"@23120
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
push.s "obj_virovirokun_enemy_slash_Step_0_gml_26_0"@23121
conv.s.v
push.s "Happy new&year 1997!"@23122
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
push.s "obj_virovirokun_enemy_slash_Step_0_gml_27_0"@23123
conv.s.v
push.s "I've got a love&letter for you."@23124
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[17]
push.v self.ambushed
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_30_0"@23125
conv.s.v
push.s "Got your nose!"@23126
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
pop.v.i self.ambushed

:[19]
push.v self.omawaroid_battle
conv.v.b
bf [24]

:[20]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_40_0"@23127
conv.s.v
push.s "This shrink's&out of control!"@23128
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[22]
pushi.e 411
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [24]

:[23]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_46_0"@23129
conv.s.v
push.s "Yaha, I'm&home free!"@23130
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[24]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [29]

:[25]
call.i randomize(argc=0)
popz.v
pushi.e 100
conv.i.v
call.i random(argc=1)
pushi.e 50
cmp.i.v GTE
bf [27]

:[26]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_54_0"@23131
conv.s.v
push.s "Kindness is&contagious!"@23132
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [28]

:[27]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_54_1"@23133
conv.s.v
push.s "Just what the&doctor ordered!"@23134
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[28]
pop.v.v local.dialogue
pushloc.v local.dialogue
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v

:[29]
push.v self.noelle_splat
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_58_0"@23136
conv.s.v
push.s "Nice"@23137
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[31]
pushi.e 0
pop.v.i self.noelle_splat
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

:[32]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [35]

:[34]
push.e 0

:[35]
bf [41]

:[36]
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
bf [41]

:[37]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [39]

:[38]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[39]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [41]

:[40]
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

:[41]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [43]

:[42]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [65]

:[45]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 16
cmp.i.v EQ
bf [64]

:[46]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
push.i 231869
setowner.e
push.s "Invader"@23138
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
pushi.e 13
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
b [49]

:[48]
push.i 231869
setowner.e
push.s "Viruses"@21826
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
pushi.e 14
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type

:[49]
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
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.i 231921
setowner.e
push.s "obj_virovirokun_enemy_slash_Step_0_gml_114_0"@23139
conv.s.v
push.s "* Virovirokun looks extra sick."@23140
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [63]

:[51]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [53]

:[52]
push.i 231921
setowner.e
push.s "obj_virovirokun_enemy_slash_Step_0_gml_117_0"@23141
conv.s.v
push.s "* Virovirokun looks healthy."@23142
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [63]

:[53]
pushi.e 100
conv.i.v
call.i random(argc=1)
pushi.e 98
cmp.i.v GTE
bf [55]

:[54]
push.i 231921
setowner.e
push.s "obj_virovirokun_enemy_slash_Step_0_gml_122_0"@23143
conv.s.v
push.s "* Smells like cherry syrup."@23144
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
b [63]

:[55]
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
bf [57]

:[56]
push.i 231921
setowner.e
push.s "obj_virovirokun_enemy_slash_Step_0_gml_126_0"@23145
conv.s.v
push.s "* Virovirokun is poking round things with a spear."@23146
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[57]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_127_0"@23147
conv.s.v
push.s "* Virovirokun uses a text document as a tissue."@23148
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[59]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [61]

:[60]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_128_0"@23149
conv.s.v
push.s "* Virovirokun is sweating suspiciously."@23150
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[61]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [63]

:[62]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_129_0"@23151
conv.s.v
push.s "* Virovirokun is beeping a criminal tune."@23152
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[63]
pushi.e 1
pop.v.i self.attacked
b [65]

:[64]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[65]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[66]
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
bf [68]

:[67]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 1
pop.v.i self.actcon
push.s "obj_virovirokun_enemy_slash_Step_0_gml_154_0"@23153
conv.s.v
push.s "* VIROVIROKUN - This sick virus needs affordable healthcare./%"@23154
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[71]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [73]

:[72]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [78]

:[75]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1426
conv.i.v
pushi.e 1427
conv.i.v
call.i choose(argc=2)
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
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
bf [77]

:[76]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[77]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_163_0"@23155
conv.s.v
push.s "* You treated Virovirokun with care! It's no longer infectious!/%"@23156
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[78]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [80]

:[79]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [81]

:[80]
push.e 0

:[81]
bf [180]

:[82]
push.v self.noelle_special
pushi.e 0
cmp.i.v EQ
bf [96]

:[83]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1426
conv.i.v
pushi.e 1427
conv.i.v
call.i choose(argc=2)
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [85]

:[84]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1500
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1456
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_act_charsprite(argc=4)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_179_0"@23157
conv.s.v
push.s "* Everyone treated the enemy with tender loving care!! All the enemies felt great!!/%"@23158
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [90]

:[85]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v LT
bf [89]

:[86]
pushi.e 1
pop.v.b self.noelle_fall
pushi.e 0
pop.v.i self.noelle_fall_timer
push.v self.object_index
pushi.e -9
pushenv [88]

:[87]
pushi.e 1
pop.v.i self.noelle_splat

:[88]
popenv [87]

:[89]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_183_0"@23159
conv.s.v
push.s "* You and Noelle showed the enemy tender loving care!/%"@23160
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[90]
pushi.e 392
pushenv [95]

:[91]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [95]

:[92]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 35
cmp.i.v EQ
bf [94]

:[93]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
b [95]

:[94]
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[95]
popenv [91]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon
b [180]

:[96]
push.v self.noelle_special_con
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
pushi.e 1
pop.v.i self.noelle_special_con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_198_0"@23161
conv.s.v
push.s "\\E2* H..^1. huh? What are you telling me to do? ACT...?/"@23162
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_199_0"@23163
conv.s.v
push.s "\\E8* Can someone please explain what's going on?!/%"@23164
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v

:[98]
push.v self.noelle_special_con
pushi.e 2
cmp.i.v EQ
bf [100]

:[99]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
pushi.e 3
pop.v.i self.noelle_special_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 50
pop.v.i global.typer
push.s "obj_virovirokun_enemy_slash_Step_0_gml_209_0"@23165
conv.s.v
push.s "Oh boy, is this&your first time&in a battle?"@23166
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

:[103]
push.v self.noelle_special_con
pushi.e 4
cmp.i.v EQ
bf [105]

:[104]
call.i gml_Script_button1_p(argc=0)
conv.v.b
b [106]

:[105]
push.e 0

:[106]
bf [112]

:[107]
pushi.e 5
pop.v.i self.noelle_special_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
push.v self.balloon
pushi.e -9
pushenv [109]

:[108]
call.i instance_destroy(argc=0)
popz.v

:[109]
popenv [108]
pushi.e 64
pushenv [111]

:[110]
call.i instance_destroy(argc=0)
popz.v

:[111]
popenv [110]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_222_0"@23167
conv.s.v
push.s "\\E6* Uh... well... um... yes./%"@23168
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v

:[112]
push.v self.noelle_special_con
pushi.e 6
cmp.i.v EQ
bf [114]

:[113]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
pushi.e 7
pop.v.i self.noelle_special_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushi.e 50
pop.v.i global.typer
push.s "obj_virovirokun_enemy_slash_Step_0_gml_232_0"@23169
conv.s.v
push.s "Oh boy..."@23170
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

:[117]
push.v self.noelle_special_con
pushi.e 8
cmp.i.v EQ
bf [119]

:[118]
call.i gml_Script_button1_p(argc=0)
conv.v.b
b [120]

:[119]
push.e 0

:[120]
bf [124]

:[121]
pushi.e 9
pop.v.i self.noelle_special_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
push.v self.balloon
pushi.e -9
pushenv [123]

:[122]
call.i instance_destroy(argc=0)
popz.v

:[123]
popenv [122]
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i audio_pause_sound(argc=1)
popz.v
pushi.e 190
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fadeout
pushi.e 0
push.v self.fadeout
pushi.e -9
pop.v.i [stacktop]self.depth

:[124]
push.v self.noelle_special_con
pushi.e 10
cmp.i.v EQ
bf [126]

:[125]
pushi.e 6
pop.v.i global.typer
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_256_0"@23171
conv.s.v
push.s "* You and Virovirokun explained how battles work to Noelle./%"@23172
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.viro_talk
push.v self.fadeout
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
push.v self.viro_talk
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 11
pop.v.i self.noelle_special_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[126]
push.v self.noelle_special_con
pushi.e 11
cmp.i.v GTE
bf [128]

:[127]
push.v self.noelle_special_con
pushi.e 13
cmp.i.v LT
b [129]

:[128]
push.e 0

:[129]
bf [135]

:[130]
push.v self.viro_talk
pushi.e -4
cmp.i.v NEQ
bf [135]

:[131]
push.v self.viro_talk
pushi.e -9
pushenv [134]

:[132]
push.v self.writer
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [134]

:[133]
push.v self.depth
pushi.e 100
sub.i.v
push.v self.writer
pushi.e -9
pop.v.v [stacktop]self.depth

:[134]
popenv [132]

:[135]
push.v self.noelle_special_con
pushi.e 12
cmp.i.v EQ
bf [137]

:[136]
call.i gml_Script_button1_p(argc=0)
conv.v.b
b [138]

:[137]
push.e 0

:[138]
bf [142]

:[139]
pushi.e 13
pop.v.i self.noelle_special_con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushi.e 64
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 191
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.fadeout
pushi.e -9
pushenv [141]

:[140]
call.i instance_destroy(argc=0)
popz.v

:[141]
popenv [140]

:[142]
push.v self.noelle_special_con
pushi.e 14
cmp.i.v EQ
bf [144]

:[143]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [145]

:[144]
push.e 0

:[145]
bf [147]

:[146]
pushi.e 15
pop.v.i self.noelle_special_con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_296_0"@23173
conv.s.v
push.s "\\E4* I get it! It's kind of like Dragon Blazers!/"@23174
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_297_0"@23175
conv.s.v
push.s "\\E0* And if we're nice to you, we can win through mercy?/%"@23176
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v

:[147]
push.v self.noelle_special_con
pushi.e 16
cmp.i.v EQ
bf [149]

:[148]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [150]

:[149]
push.e 0

:[150]
bf [152]

:[151]
pushi.e 17
pop.v.i self.noelle_special_con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushi.e 50
pop.v.i global.typer
push.s "obj_virovirokun_enemy_slash_Step_0_gml_307_0"@23177
conv.s.v
push.s "Yeah"@23178
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

:[152]
push.v self.noelle_special_con
pushi.e 18
cmp.i.v EQ
bf [154]

:[153]
call.i gml_Script_button1_p(argc=0)
conv.v.b
b [155]

:[154]
push.e 0

:[155]
bf [161]

:[156]
pushi.e 19
pop.v.i self.noelle_special_con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
push.v self.balloon
pushi.e -9
pushenv [158]

:[157]
call.i instance_destroy(argc=0)
popz.v

:[158]
popenv [157]
pushi.e 64
pushenv [160]

:[159]
call.i instance_destroy(argc=0)
popz.v

:[160]
popenv [159]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_320_0"@23179
conv.s.v
push.s "\\E2* And the way I have to do that is.../"@23180
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_321_0"@23181
conv.s.v
push.s "\\EH* Dressing up in a weird costume./%"@23182
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v

:[161]
push.v self.noelle_special_con
pushi.e 20
cmp.i.v EQ
bf [163]

:[162]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [164]

:[163]
push.e 0

:[164]
bf [166]

:[165]
pushi.e 21
pop.v.i self.noelle_special_con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushi.e 50
pop.v.i global.typer
push.s "obj_virovirokun_enemy_slash_Step_0_gml_331_0"@23183
conv.s.v
push.s "Yeah"@23178
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

:[166]
push.v self.noelle_special_con
pushi.e 22
cmp.i.v EQ
bf [168]

:[167]
call.i gml_Script_button1_p(argc=0)
conv.v.b
b [169]

:[168]
push.e 0

:[169]
bf [175]

:[170]
pushi.e 23
pop.v.i self.noelle_special_con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
push.v self.balloon
pushi.e -9
pushenv [172]

:[171]
call.i instance_destroy(argc=0)
popz.v

:[172]
popenv [171]
pushi.e 64
pushenv [174]

:[173]
call.i instance_destroy(argc=0)
popz.v

:[174]
popenv [173]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_344_0"@23184
conv.s.v
push.s "\\EH* .../%"@23185
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
push.s "no_one"@23186
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v

:[175]
push.v self.noelle_special_con
pushi.e 24
cmp.i.v EQ
bf [177]

:[176]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [178]

:[177]
push.e 0

:[178]
bf [180]

:[179]
pushi.e 99
pop.v.i self.noelle_special_con
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i audio_resume_sound(argc=1)
popz.v
pushi.e 0
pop.v.i self.noelle_special

:[180]
push.v self.noelle_fall
conv.v.b
bf [195]

:[181]
push.v self.noelle_fall_timer
push.e 1
add.i.v
pop.v.v self.noelle_fall_timer
push.v self.noelle_fall_timer
pushi.e 1
cmp.i.v EQ
bf [187]

:[182]
pushi.e 375
pushenv [184]

:[183]
pushi.e 1
pop.v.i self.visible
pushi.e 0
pop.v.i self.image_alpha

:[184]
popenv [183]
pushi.e 1534
conv.i.v
push.v 375.y
push.v 375.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.nise_noelle
push.v self.nise_noelle
pushi.e -9
pushenv [186]

:[185]
pushi.e 20
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 40
conv.i.d
div.d.v
sub.v.i
pop.v.v self.depth
call.i gml_Script_scr_oflash(argc=0)
popz.v
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.a
push.d 2.5
push.v self.a
pushi.e -9
pop.v.d [stacktop]self.hspeed
push.v self.depth
pushi.e 1
add.i.v
push.v self.a
pushi.e -9
pop.v.v [stacktop]self.depth
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.b
push.d 0.6
push.v self.b
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 5
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.depth
pushi.e 2
add.i.v
push.v self.b
pushi.e -9
pop.v.v [stacktop]self.depth

:[186]
popenv [185]
pushi.e 0
push.v self.nise_noelle
pushi.e -9
pop.v.i [stacktop]self.image_speed

:[187]
push.v self.noelle_fall_timer
pushi.e 30
cmp.i.v EQ
bf [191]

:[188]
pushi.e 1
push.v self.nise_noelle
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.nise_noelle
pushi.e -9
pushenv [190]

:[189]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[190]
popenv [189]

:[191]
push.v self.noelle_fall_timer
pushi.e 50
cmp.i.v EQ
bf [193]

:[192]
push.d 0.8
conv.d.v
push.d 0.6
conv.d.v
pushi.e 41
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
pushi.e 2
push.v self.nise_noelle
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 6
push.v self.nise_noelle
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.d 0.75
push.v self.nise_noelle
pushi.e -9
pop.v.d [stacktop]self.friction

:[193]
push.v self.noelle_fall_timer
pushi.e 80
cmp.i.v GT
bf [195]

:[194]
pushi.e 0
pop.v.b self.noelle_fall
pushi.e 0
pop.v.i self.noelle_fall_timer

:[195]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [197]

:[196]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [198]

:[197]
push.e 0

:[198]
bf [200]

:[199]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_428_0"@23187
conv.s.v
push.s "* Ralsei cooked up a cure./"@23188
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_scr_healallitemspell(argc=1)
popz.v
push.s "H"@5303
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_433_0"@23189
conv.s.v
push.s "\\EH* If you're sick, shouldn't you have some soup? Say \"aah\"~!/"@23190
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_436_0"@23191
conv.s.v
push.s "* Sickness was cured! Everyone's HP up!/%"@23192
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[200]
push.v self.acting
pushi.e 5
cmp.i.v EQ
bf [202]

:[201]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [203]

:[202]
push.e 0

:[203]
bf [205]

:[204]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_444_0"@23193
conv.s.v
push.s "* Susie cooked up a cure!/"@23194
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_447_0"@23195
conv.s.v
push.s "\\E2* What, you want me to cook something!?/"@23196
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_450_0"@23197
conv.s.v
push.s "* Susie put a hot dog in the microwave!/%"@23198
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 5
pop.v.i self.actcon

:[205]
push.v self.actcon
pushi.e 5
cmp.i.v EQ
bf [207]

:[206]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [208]

:[207]
push.e 0

:[208]
bf [218]

:[209]
pushi.e 128
conv.i.v
push.v 373.y
pushi.e 15
add.i.v
push.v 373.x
pushi.e 25
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.explosion
pushi.e 189
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2275
push.v self.explosion
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i local.i

:[210]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [217]

:[211]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [213]

:[212]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.monsterhp
pushi.e 10
cmp.i.v GTE
b [214]

:[213]
push.e 0

:[214]
bf [216]

:[215]
push.i 231593
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.hittarget
pushi.e 2
conv.i.v
call.i gml_Script_scr_findchar(argc=1)
pop.v.v self.caster
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.monsterhp
push.d 0.75
mul.d.v
call.i floor(argc=1)
pushloc.v local.i
call.i gml_Script_scr_damage_enemy(argc=2)
popz.v

:[216]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [210]

:[217]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_472_0"@23199
conv.s.v
push.s "* She forgot to poke holes in it! The hot dog exploded!/%"@23200
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[218]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [220]

:[219]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [221]

:[220]
push.e 0

:[221]
bf [228]

:[222]
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [224]

:[223]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_484_0"@23201
conv.s.v
push.s "* Susie commiserated with the enemy!/"@23202
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "2"@4175
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_486_0"@23203
conv.s.v
push.s "\\E2* Stick it to the man^1, dude./"@23204
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_487_0"@23205
conv.s.v
push.s "\\E2* Even if that means cloning yourself^1, or whatever./%"@23206
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconsus
b [228]

:[224]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_492_0"@23207
conv.s.v
push.s "* Susie encouraged evil!/%"@23208
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
bf [226]

:[225]
pushi.e 20
conv.i.v
b [227]

:[226]
pushi.e 0
conv.i.v

:[227]
pop.v.v self.actconsus

:[228]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [230]

:[229]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [231]

:[230]
push.e 0

:[231]
bf [240]

:[232]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [234]

:[233]
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[234]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [236]

:[235]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_504_0"@23209
conv.s.v
push.s "* Ralsei tried to steer the enemy down the right path./"@23210
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "0"@3491
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_506_0"@23211
conv.s.v
push.s "\\E0* Not everybody knows this^1, but.../"@23212
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_virovirokun_enemy_slash_Step_0_gml_507_0"@23213
conv.s.v
push.s "\\E2* Crimes are bad. ..^1. Did you know that?/%"@23214
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconral
b [240]

:[236]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_512_0"@23215
conv.s.v
push.s "* Ralsei tried to rehabilitate!/%"@23216
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
bf [238]

:[237]
pushi.e 20
conv.i.v
b [239]

:[238]
pushi.e 0
conv.i.v

:[239]
pop.v.v self.actconral

:[240]
push.v self.actingnoe
pushi.e 1
cmp.i.v EQ
bf [242]

:[241]
push.v self.actconnoe
pushi.e 1
cmp.i.v EQ
b [243]

:[242]
push.e 0

:[243]
bf [255]

:[244]
push.v self.noelle_special
pushi.e 0
cmp.i.v EQ
bf [254]

:[245]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [247]

:[246]
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[247]
push.v self.simultotal
pushi.e 1
cmp.i.v EQ
bf [249]

:[248]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_527_0"@23217
conv.s.v
push.s "* Noelle offered a cold compress!/%"@23218
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
b [253]

:[249]
push.s "obj_virovirokun_enemy_slash_Step_0_gml_532_0"@23219
conv.s.v
push.s "* Noelle tried her best!/%"@23220
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_simultext(argc=1)
popz.v
push.v self.simulordernoe
pushi.e 0
cmp.i.v EQ
bf [251]

:[250]
pushi.e 20
conv.i.v
b [252]

:[251]
pushi.e 0
conv.i.v

:[252]
pop.v.v self.actconnoe

:[253]
b [255]

:[254]
pushi.e 20
pop.v.i self.actconnoe
push.s "obj_virovirokun_enemy_slash_Step_0_gml_540_0"@23221
conv.s.v
push.s "* Noelle was clueless!/%"@23222
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[255]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [257]

:[256]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [258]

:[257]
push.e 0

:[258]
bf [271]

:[259]
push.v self.noelle_fall
conv.v.b
not.b
bf [271]

:[260]
push.v self.nise_noelle
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [266]

:[261]
push.v self.nise_noelle
pushi.e -9
pushenv [263]

:[262]
call.i instance_destroy(argc=0)
popz.v

:[263]
popenv [262]
pushi.e 375
pushenv [265]

:[264]
pushi.e 1
pop.v.i self.image_alpha

:[265]
popenv [264]

:[266]
push.v self.explosion
pushi.e -4
cmp.i.v NEQ
bf [270]

:[267]
push.v self.explosion
pushi.e -9
pushenv [269]

:[268]
call.i instance_destroy(argc=0)
popz.v

:[269]
popenv [268]

:[270]
pushi.e 0
pop.v.i self.noelle_fall
pushi.e 0
pop.v.i self.noelle_fall_timer
call.i gml_Script_scr_act_charsprite_end(argc=0)
popz.v
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[271]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [275]

:[272]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [275]

:[273]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
bt [275]

:[274]
push.v self.actconnoe
pushi.e 20
cmp.i.v EQ
b [276]

:[275]
push.e 1

:[276]
bf [end]

:[277]
push.v self.noelle_fall
conv.v.b
not.b
bf [end]

:[278]
push.v self.nise_noelle
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [284]

:[279]
push.v self.nise_noelle
pushi.e -9
pushenv [281]

:[280]
call.i instance_destroy(argc=0)
popz.v

:[281]
popenv [280]
pushi.e 375
pushenv [283]

:[282]
pushi.e 1
pop.v.i self.image_alpha

:[283]
popenv [282]

:[284]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [end]

:[285]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e -1
pop.v.i self.actconnoe
pushi.e 1
pop.v.i self.actcon

:[end]