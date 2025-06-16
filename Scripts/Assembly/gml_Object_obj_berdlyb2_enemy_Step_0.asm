.localvar 2 arguments
.localvar 24314 _count 11209
.localvar 24315 _newwerewire 11210
.localvar 14829 rand 11212

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [238]

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
bf [147]

:[5]
pushi.e 0
pop.v.i self.talkcon
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v EQ
bf [9]

:[6]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.mytarget

:[8]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_prioritytarget(argc=3)
popz.v
b [12]

:[9]
pushi.e -5
pushi.e 0
push.v [array]self.charcantarget
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.i 231544
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.targeted
b [12]

:[11]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v

:[12]
pushi.e 363
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [14]

:[13]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[14]
push.v self.hurt_noelle
conv.v.b
not.b
bf [19]

:[15]
pushi.e -5
pushi.e 4
push.v [array]self.hp
push.v self.noelle_hp_start
cmp.v.v LT
bf [17]

:[16]
pushi.e 1
pop.v.b self.hurt_noelle
b [19]

:[17]
pushi.e -5
pushi.e 4
push.v [array]self.hp
push.v self.noelle_hp_start
cmp.v.v GT
bf [19]

:[18]
pushi.e -5
pushi.e 4
push.v [array]self.hp
pop.v.v self.noelle_hp_start

:[19]
pushi.e 69
pop.v.i global.typer
push.v self.sideb_route
conv.v.b
bf [21]

:[20]
pushi.e 2
push.v self.rr
sub.v.i
pop.v.v self.rr
b [27]

:[21]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bt [23]

:[22]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
pushi.e 2
conv.i.v
call.i irandom(argc=1)
pop.v.v self.rr
b [27]

:[26]
push.v self.attack_phase
pop.v.v self.rr

:[27]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
pushi.e 0
pop.v.i self.chosenattack
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_41_0"@24263
conv.s.v
push.s "Partake, Kris!&The Zephyr of&Punishment!"@24264
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[29]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 2
pop.v.i self.chosenattack
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_42_0"@24265
conv.s.v
push.s "See if you can&dodge this, Kris!"@24266
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[31]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1
pop.v.i self.chosenattack
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_40_0"@24267
conv.s.v
push.s "Holy Halbird!&Grant me strength!"@24268
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[33]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v EQ
bf [118]

:[34]
push.v self.turns
pushi.e 5
cmp.i.v LTE
bf [108]

:[35]
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_47_0"@24269
conv.s.v
push.s "Kris^1! I get it^1!&Your head's gotten big&from solving that puzzle&by DUMB LUCK!/%"@24270
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.talkmax
pushi.e 30
add.i.v
pop.v.v self.talkmax
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
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [45]

:[38]
push.v self.balloon_con
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
pop.v.i self.balloon_con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.alarm
push.v self.berdlytalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_79_0"@24271
conv.s.v
push.s "So now you think&it's your chance to&usurp me at my weakest.../%"@24272
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
popz.v

:[40]
push.v self.balloon_con
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
pushi.e 870
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 0
pop.v.i self.balloon_con
push.v self.berdlytalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_88_0"@24273
conv.s.v
push.s "By taking my most&precious thing..^1. Noelle!/%"@24274
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
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[45]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bf [53]

:[46]
push.v self.balloon_con
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
pushi.e 1
pop.v.i self.balloon_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.alarm
push.v self.berdlytalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_98_0"@24275
conv.s.v
push.s "But guess what, Kris!&I have one or more things&you will NEVER have!/%"@24276
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
popz.v
b [53]

:[48]
push.v self.balloon_con
pushi.e 2
cmp.i.v EQ
bf [50]

:[49]
pushi.e 870
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 0
pop.v.i self.balloon_con
push.v self.berdlytalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_128_0"@24277
conv.s.v
push.s "Behold!!!&Comrades!!!/%"@24278
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.b self.summoning
pushi.e 1
pop.v.b self.wirewait
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

:[53]
push.v self.turns
pushi.e 3
cmp.i.v EQ
bf [76]

:[54]
push.v self.balloon_con
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
pop.v.i self.balloon_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.alarm
push.v self.berdlytalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_146_0"@24279
conv.s.v
push.s "That's right, Kris!&Unlike YOU, I have a&LOVING TEAM behind me!/%"@24280
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
popz.v
b [76]

:[56]
push.v self.balloon_con
pushi.e 2
cmp.i.v EQ
bf [58]

:[57]
pushi.e 870
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [59]

:[58]
push.e 0

:[59]
bf [66]

:[60]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
pushi.e 3
pop.v.i self.balloon_con
b [63]

:[62]
pushi.e 0
pop.v.i self.balloon_con

:[63]
push.v self.berdlytalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_161_0"@24281
conv.s.v
push.s "And you'll never beat&US fighting alone!/%"@24282
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
popz.v
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
bf [65]

:[64]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[65]
b [76]

:[66]
push.v self.balloon_con
pushi.e 3
cmp.i.v EQ
bf [68]

:[67]
pushi.e 870
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 4
pop.v.i self.balloon_con
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.alarm
b [76]

:[71]
push.v self.balloon_con
pushi.e 5
cmp.i.v EQ
bf [73]

:[72]
pushi.e 870
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
pushi.e 0
pop.v.i self.balloon_con
push.v self.berdlytalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_182_0"@24283
conv.s.v
push.s "... h-hey^1, wait^1, where'd&the other guys go!?/%"@24284
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
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[76]
push.v self.turns
pushi.e 4
cmp.i.v EQ
bf [90]

:[77]
push.v self.balloon_con
pushi.e 0
cmp.i.v EQ
bf [82]

:[78]
pushi.e 1
pop.v.i self.balloon_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.alarm
push.v self.berdlytalk
pop.v.v global.typer
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
bf [80]

:[79]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_199_0"@24285
conv.s.v
push.s "Kris..^1. you're outmatched^1!&My team is rich in&natural resources!/%"@24286
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [81]

:[80]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_202_0"@24287
conv.s.v
push.s "My..^1. my allies are gone^1?&Ha^1! They're probably just..^1.&Helping Queen search for me!/%"@24288
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.talkmax
pushi.e 30
add.i.v
pop.v.v self.talkmax

:[81]
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
push.v self.balloon_con
pushi.e 2
cmp.i.v EQ
bf [84]

:[83]
pushi.e 870
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [85]

:[84]
push.e 0

:[85]
bf [90]

:[86]
pushi.e 0
pop.v.i self.balloon_con
push.v self.berdlytalk
pop.v.v global.typer
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v GT
bf [88]

:[87]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_215_0_b"@24289
conv.s.v
push.s "Intelligence^1, yes^1.&Smarts^1, yes^1.&Nipples^1, future YES./%"@24290
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [89]

:[88]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_218_0_b"@24291
conv.s.v
push.s "Sh..^1. shut up^1, Kris^1! Shut up^1!&I don't care if you're not&saying anything!/%"@24292
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.talkmax
pushi.e 60
add.i.v
pop.v.v self.talkmax

:[89]
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

:[90]
push.v self.turns
pushi.e 5
cmp.i.v EQ
bf [107]

:[91]
push.v self.balloon_con
pushi.e 0
cmp.i.v EQ
bf [99]

:[92]
pushi.e 1
pop.v.i self.balloon_con
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [94]

:[93]
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.alarm
push.v self.berdlytalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_241_0"@24293
conv.s.v
push.s "S-summon more guys!^1?&I..^1. I don't need to do that!/%"@24294
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [98]

:[94]
pushi.e -5
pushi.e 4
push.v [array]self.hp
pushi.e 0
cmp.i.v GTE
bf [96]

:[95]
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.alarm
b [97]

:[96]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[97]
push.v self.berdlytalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_171_0"@24295
conv.s.v
push.s "Noelle, this might hurt,&but it's to save you!/%"@24296
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[98]
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

:[99]
push.v self.balloon_con
pushi.e 2
cmp.i.v EQ
bf [101]

:[100]
pushi.e 870
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [102]

:[101]
push.e 0

:[102]
bf [107]

:[103]
pushi.e 0
pop.v.i self.balloon_con
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_266_0_b"@24297
conv.s.v
push.s "Just WAIT^1! The original&ones are gonna come&back any minute now!/%"@24298
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
popz.v
b [106]

:[105]
push.v self.noelletalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_180_0"@24299
conv.s.v
push.s "(Help.)/%"@24300
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_heroblcon(argc=1)
pop.v.v self.balloon

:[106]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[107]
b [117]

:[108]
push.v self.hurt_noelle
conv.v.b
bf [110]

:[109]
push.v self.hurt_noelle_talk
conv.v.b
not.b
b [111]

:[110]
push.e 0

:[111]
bf [115]

:[112]
pushi.e 1
pop.v.b self.hurt_noelle_talk
push.v self.berdlytalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_54_0"@24301
conv.s.v
push.s "Don't worry,&it's part&of my&calculations!"@24302
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
popz.v
pushi.e -5
pushi.e 4
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
bf [114]

:[113]
push.v self.noelletalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_57_0"@24303
conv.s.v
push.s "WHY ARE&YOU HITTING&ME!?"@24304
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_heroblcon(argc=1)
popz.v

:[114]
b [116]

:[115]
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

:[116]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[117]
b [147]

:[118]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [120]

:[119]
push.v self.kris_defeat_con
pushi.e 99
cmp.i.v LT
b [121]

:[120]
push.e 0

:[121]
bf [123]

:[122]
pushi.e 1
pop.v.b self.kris_defeat_talk
b [124]

:[123]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[124]
push.v self.kris_defeat_talk
conv.v.b
bf [147]

:[125]
push.v self.kris_defeat_con
pushi.e 0
cmp.i.v EQ
bf [127]

:[126]
pushi.e 1
pop.v.i self.kris_defeat_con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm
push.v self.berdlytalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_226_0"@24305
conv.s.v
push.s "N-Noelle, look!&Kris is down!/%"@24306
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
popz.v

:[127]
push.v self.kris_defeat_con
pushi.e 2
cmp.i.v EQ
bf [129]

:[128]
pushi.e 870
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [130]

:[129]
push.e 0

:[130]
bf [132]

:[131]
pushi.e 3
pop.v.i self.kris_defeat_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm
push.v self.berdlytalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_236_0"@24307
conv.s.v
push.s "Now's your chance to&come back over here!/%"@24308
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
popz.v

:[132]
push.v self.kris_defeat_con
pushi.e 4
cmp.i.v EQ
bf [134]

:[133]
pushi.e 870
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [135]

:[134]
push.e 0

:[135]
bf [137]

:[136]
pushi.e 5
pop.v.i self.kris_defeat_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm
push.v self.berdlytalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_247_0"@24309
conv.s.v
push.s ".../%"@19972
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
popz.v

:[137]
push.v self.kris_defeat_con
pushi.e 6
cmp.i.v EQ
bf [139]

:[138]
pushi.e 870
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [140]

:[139]
push.e 0

:[140]
bf [142]

:[141]
pushi.e 7
pop.v.i self.kris_defeat_con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.alarm
push.v self.berdlytalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_258_0"@24310
conv.s.v
push.s "N... Noelle?/%"@24311
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
popz.v

:[142]
push.v self.kris_defeat_con
pushi.e 8
cmp.i.v EQ
bf [144]

:[143]
pushi.e 870
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
push.v self.noelletalk
pop.v.v global.typer
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_266_0"@24312
conv.s.v
push.s "(I can...&still...&hear...&their voice...)/%"@24313
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_heroblcon(argc=1)
popz.v
pushi.e 99
pop.v.i self.kris_defeat_con
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[147]
push.v self.summoning
conv.v.b
bf [156]

:[148]
push.v self.summontimer
pushi.e 0
cmp.i.v EQ
bf [154]

:[149]
pushi.e 3
call.i gml_Script_scr_monsterpop(argc=0)
sub.v.i
pop.v.v local._count
pushloc.v local._count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [153]

:[150]
pushi.e 476
conv.i.v
pushi.e 33
conv.i.v
call.i gml_Script_scr_monster_add(argc=2)
pop.v.v local._newwerewire
pushi.e -5
pushloc.v local._newwerewire
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [152]

:[151]
pushi.e 1
pop.v.b self.skiptext
call.i gml_Script_camerax(argc=0)
pushi.e 740
add.i.v
pop.v.v self.x
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermakey
pop.v.v self.y
pushi.e 0
pop.v.i self.rtimer
pushi.e 1
pop.v.i self.talkwait
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

:[152]
popenv [151]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [150]

:[153]
popz.i

:[154]
push.v self.summontimer
push.e 1
add.i.v
pop.v.v self.summontimer
push.v self.summontimer
pushi.e 20
cmp.i.v GTE
bf [156]

:[155]
pushi.e 1
pop.v.i self.talkcon
pushi.e 0
pop.v.b self.summoning

:[156]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [159]

:[157]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [159]

:[158]
push.v self.summoning
conv.v.b
not.b
b [160]

:[159]
push.e 0

:[160]
bf [178]

:[161]
pushi.e 1
pop.v.i self.talkcon
pushi.e 0
pop.v.i self.rtimer
push.v self.wirewait
conv.v.b
bf [165]

:[162]
pushi.e 476
pushenv [164]

:[163]
pushi.e 2
pop.v.i self.talkwait

:[164]
popenv [163]
pushi.e 0
pop.v.b self.wirewait
b [178]

:[165]
push.v self.summontimer
pushi.e 0
cmp.i.v NEQ
bf [174]

:[166]
pushi.e 480
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [168]

:[167]
pushi.e -1
pop.v.i self.summontimer
b [173]

:[168]
push.v self.summontimer
pushi.e -1
cmp.i.v EQ
bf [170]

:[169]
pushi.e 480
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [171]

:[170]
push.e 0

:[171]
bf [173]

:[172]
pushi.e 0
pop.v.i self.summontimer

:[173]
b [178]

:[174]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [176]

:[175]
pushi.e -1
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
b [178]

:[176]
pushi.e 15
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [178]

:[177]
push.v self.default_talkmax
pop.v.v self.talkmax

:[178]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [180]

:[179]
push.v self.talkcon
pushi.e 1
cmp.i.v EQ
b [181]

:[180]
push.e 0

:[181]
bf [204]

:[182]
pushi.e 0
pop.v.i self.summontimer
pushi.e 0
pop.v.i self.talkcon
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v NEQ
bf [184]

:[183]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
b [185]

:[184]
push.e 0

:[185]
bf [189]

:[186]
pushi.e 363
pushenv [188]

:[187]
pushi.e 0
pop.v.i self.darken

:[188]
popenv [187]
call.i gml_Script_scr_mnendturn(argc=0)
popz.v
b [204]

:[189]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [191]

:[190]
pushi.e 1
conv.i.v
b [192]

:[191]
pushi.e 0
conv.i.v

:[192]
pop.v.v self.difficulty
pushi.e 379
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [194]

:[193]
pushi.e 631
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [195]

:[194]
push.e 0

:[195]
bf [197]

:[196]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[197]
pushi.e 872
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [199]

:[198]
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

:[199]
push.v self.difficulty
pushi.e 1
cmp.i.v EQ
bf [201]

:[200]
push.v self.chosenattack
pushi.e 0
cmp.i.v EQ
b [202]

:[201]
push.e 0

:[202]
bf [204]

:[203]
push.v 872.target_angle
pushi.e 45
add.i.v
pop.v.v 872.target_angle

:[204]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [206]

:[205]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [207]

:[206]
push.e 0

:[207]
bf [238]

:[208]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 16
cmp.i.v GTE
bf [237]

:[209]
pushi.e 0
pop.v.i self.rtimer
push.v self.chosenattack
pushi.e 0
cmp.i.v EQ
bf [211]

:[210]
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
push.v self.difficulty
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.difficulty
b [217]

:[211]
push.v self.chosenattack
pushi.e 1
cmp.i.v EQ
bf [216]

:[212]
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
push.v self.sideb_route
conv.v.b
bf [214]

:[213]
pushi.e 2
conv.i.v
b [215]

:[214]
push.v self.difficulty

:[215]
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.difficulty
b [217]

:[216]
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
push.v self.difficulty
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.difficulty

:[217]
pushi.e 260
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
push.v self.sideb_route
conv.v.b
not.b
bf [219]

:[218]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
b [220]

:[219]
push.e 0

:[220]
bf [222]

:[221]
push.v self.attack_phase
pushi.e 1
add.i.v
pushi.e 3
mod.i.v
pop.v.v self.attack_phase

:[222]
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
bf [224]

:[223]
push.i 231921
setowner.e
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_124_0"@24317
conv.s.v
push.s "* Berdly thanks Noelle profusely."@24318
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[224]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [226]

:[225]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_125_0"@24319
conv.s.v
push.s "* Berdly tries to entice Noelle to his side by gyrating his hips!"@24320
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[226]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [228]

:[227]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_126_0"@24321
conv.s.v
push.s "* Berdly preens condescendingly."@24322
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[228]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [230]

:[229]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_127_0"@24323
conv.s.v
push.s "* Berdly laughs and goes to his mind palace."@24324
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[230]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [232]

:[231]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_338_0"@24325
conv.s.v
push.s "* Berdly crushes his Smart Scouter out of frustration."@24326
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[232]
push.v self.rr
pushi.e 5
cmp.i.v EQ
bf [234]

:[233]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_339_0"@24327
conv.s.v
push.s "* Smells like frozen chicken."@24328
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[234]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v GT
bf [236]

:[235]
push.s " "@353
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[236]
pushi.e 1
pop.v.i self.attacked
b [238]

:[237]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[238]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [322]

:[239]
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
bf [241]

:[240]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [242]

:[241]
push.e 0

:[242]
bf [247]

:[243]
pushi.e 1
pop.v.i self.actcon
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v EQ
bf [245]

:[244]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_147_0"@24329
conv.s.v
push.s "* BERDLY - He usually only gets this mad when you play games together./%"@24330
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [246]

:[245]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_371_0"@24331
conv.s.v
push.s "* Enemy Weakness: ICE&Try your strongest ice spell./%"@24332
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[246]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[247]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [249]

:[248]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [250]

:[249]
push.e 0

:[250]
bf [270]

:[251]
push.v self.kact_count
push.e 1
add.i.v
pop.v.v self.kact_count
push.v self.sideb_route
conv.v.b
not.b
bf [266]

:[252]
pushi.e 8
pop.v.i self.mercy_add_amount
push.v self.kact_count
pushi.e 1
cmp.i.v EQ
bf [254]

:[253]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_162_0"@24333
conv.s.v
push.s "* You acted like you were an idiot next to Berdly's genius!/"@24334
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_164_0"@24335
conv.s.v
push.s "* Ahh^1, Kris..^1. A shame I must defeat someone so lowly.../%"@24336
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [265]

:[254]
push.v self.spill
conv.v.b
not.b
bf [256]

:[255]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=4)
b [257]

:[256]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)

:[257]
pop.v.v local.rand
pushloc.v local.rand
pushi.e 0
cmp.i.v EQ
bf [259]

:[258]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_175_0"@24337
conv.s.v
push.s "* You did several math problems incorrectly!/%"@24338
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[259]
pushloc.v local.rand
pushi.e 1
cmp.i.v EQ
bf [261]

:[260]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_181_0"@24339
conv.s.v
push.s "* You pretended to knit a home-made dunce cap!/%"@24340
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[261]
pushloc.v local.rand
pushi.e 2
cmp.i.v EQ
bf [263]

:[262]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_187_0"@24341
conv.s.v
push.s "* You grunted like a primitive animal!/%"@24342
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[263]
pushloc.v local.rand
pushi.e 3
cmp.i.v EQ
bf [265]

:[264]
pushi.e 1
pop.v.b self.spill
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_194_0"@24343
conv.s.v
push.s "* You pretended to spill your IQ points on the floor!/"@24344
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_195_0"@24345
conv.s.v
push.s "* You got Noelle to pretend to pick them up!/"@24346
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 18
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_197_0"@24347
conv.s.v
push.s "\\EI* (Why me!?)/%"@24348
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[265]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_201_0"@24349
conv.s.v
push.s "* Berdly liked that!/%"@24350
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.berdly_last_line
pushi.e 2
pop.v.i self.actcon
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
b [270]

:[266]
push.v self.kact_count
pushi.e 1
cmp.i.v EQ
bf [268]

:[267]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_213_0"@24351
conv.s.v
push.s "* You glared at Berdly!/"@24352
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_215_0"@24353
conv.s.v
push.s "\\E3* Wh..^1. what!? Trying to psyche me out^1, Kris!?/"@24354
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_216_0"@24355
conv.s.v
push.s "\\ED* W-well..^1. It's not working!!/%"@24356
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_218_0"@24357
conv.s.v
push.s "* Berdly's DEFENSE dropped!/%"@24358
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.berdly_last_line
b [269]

:[268]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_222_0"@24359
conv.s.v
push.s "* You glared at Berdly!/%"@24360
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_223_0"@24361
conv.s.v
push.s "* His DEFENSE dropped!/%"@24362
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.berdly_last_line

:[269]
pushi.e 13
pop.v.i self.mercy_add_amount
push.i 231910
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterdf
pushi.e 5
sub.i.v
pop.i.v [array]self.monsterdf
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e 2
pop.v.i self.actcon

:[270]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [272]

:[271]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [273]

:[272]
push.e 0

:[273]
bf [285]

:[274]
push.v self.nact_count
push.e 1
add.i.v
pop.v.v self.nact_count
push.v self.sideb_route
conv.v.b
not.b
bf [279]

:[275]
pushi.e 16
pop.v.i self.mercy_add_amount
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_245_0"@24363
conv.s.v
push.s "* You encouraged Noelle to use her mind!/%"@24364
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.nact_count
pushi.e 2
cmp.i.v LTE
bf [277]

:[276]
push.i 231959
setowner.e
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.battlemag
pushi.e 3
add.i.v
pop.i.v [array]self.battlemag
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_252_0"@24365
conv.s.v
push.s "* Her MAGIC increased^1! Berdly found her smarts appealing!/%"@24366
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.berdly_last_line
b [278]

:[277]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_484_0"@24367
conv.s.v
push.s "* Noelle acted smart!/%"@24368
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.berdly_last_line

:[278]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 2
pop.v.i self.actcon
b [285]

:[279]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_264_0"@24369
conv.s.v
push.s "* You told Noelle to concentrate!/"@24370
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.nact_count
pushi.e 1
cmp.i.v EQ
bf [281]

:[280]
push.s "W"@9494
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_269_0"@24371
conv.s.v
push.s "\\EW* Concentrate on what...?/"@24372
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[281]
push.v self.nact_count
pushi.e 10
cmp.i.v LTE
bf [283]

:[282]
push.i 231959
setowner.e
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.battlemag
pushi.e 3
add.i.v
pop.i.v [array]self.battlemag
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_278_0"@24373
conv.s.v
push.s "* Her MAGIC increased!/%"@24374
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [284]

:[283]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_281_0"@24375
conv.s.v
push.s "* But nothing happened!/%"@23535
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[284]
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[285]
push.v self.actingnoe
pushi.e 1
cmp.i.v EQ
bf [287]

:[286]
push.v self.actconnoe
pushi.e 1
cmp.i.v EQ
b [288]

:[287]
push.e 0

:[288]
bf [295]

:[289]
push.v self.naction_count
push.e 1
add.i.v
pop.v.v self.naction_count
pushi.e 10
pop.v.i self.mercy_add_amount
push.v self.sideb_route
conv.v.b
not.b
bf [293]

:[290]
push.v self.naction_count
pushi.e 1
cmp.i.v EQ
bf [292]

:[291]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_299_0"@24376
conv.s.v
push.s "* Noelle tried to talk to Berdly!/"@24377
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 18
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_301_0"@24378
conv.s.v
push.s "\\EI* Umm^1, Berdly^1, I'm glad you're trying to help me.../"@24379
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 19
conv.i.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_303_0"@24380
conv.s.v
push.s "\\EJ* No need to thank me^1, dearest Noelle!/%"@24381
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v

:[292]
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_305_0"@24382
conv.s.v
push.s "* Noelle accidentally complimented Berdly!/%"@24383
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.berdly_last_line
b [294]

:[293]
pushi.e 0
pop.v.i self.mercy_add_amount
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_299_0"@24376
conv.s.v
push.s "* Noelle tried to talk to Berdly!/"@24377
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_617_0"@24384
conv.s.v
push.s "* But it failed./%"@24385
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.berdly_last_line

:[294]
pushi.e 2
pop.v.i self.actconnoe

:[295]
push.v self.actcon
pushi.e 2
cmp.i.v EQ
bt [297]

:[296]
push.v self.actconnoe
pushi.e 2
cmp.i.v EQ
b [298]

:[297]
push.e 1

:[298]
bf [300]

:[299]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [301]

:[300]
push.e 0

:[301]
bf [305]

:[302]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [304]

:[303]
push.v self.mercy_add_amount
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[304]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.v self.berdly_last_line
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e -1
pop.v.i self.actconnoe
pushi.e 1
pop.v.i self.actcon

:[305]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [307]

:[306]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [308]

:[307]
push.e 0

:[308]
bf [312]

:[309]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [311]

:[310]
call.i gml_Script_scr_wincombat(argc=0)
popz.v
b [312]

:[311]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[312]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bt [316]

:[313]
push.v self.actconsus
pushi.e 20
cmp.i.v EQ
bt [316]

:[314]
push.v self.actconral
pushi.e 20
cmp.i.v EQ
bt [316]

:[315]
push.v self.actconnoe
pushi.e 20
cmp.i.v EQ
b [317]

:[316]
push.e 1

:[317]
bf [322]

:[318]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [320]

:[319]
call.i gml_Script_scr_wincombat(argc=0)
popz.v
b [322]

:[320]
call.i gml_Script_scr_terminate_writer(argc=0)
conv.v.b
bf [322]

:[321]
pushi.e -1
pop.v.i self.actconsus
pushi.e -1
pop.v.i self.actconral
pushi.e -1
pop.v.i self.actconnoe
pushi.e 1
pop.v.i self.actcon

:[322]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [325]

:[323]
pushi.e 66
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [325]

:[324]
pushi.e 1
push.v self.difficulty
sub.v.i
pop.v.v self.difficulty

:[325]
pushglb.v global.bmenuno
pushi.e 99
cmp.i.v EQ
bf [344]

:[326]
push.v self.snowgrave_con
pushi.e 0
cmp.i.v EQ
bf [338]

:[327]
pushi.e 2
pop.v.i self.snowgrave_con
pushi.e 0
pop.v.i self.snowgrave_timer
pushi.e -5
pushi.e 924
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [329]

:[328]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_358_0"@24387
conv.s.v
push.s "\\Ec* S..^1. Snowgrave?/"@24388
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_359_0"@24389
conv.s.v
push.s "\\Ee* I..^1. I don't know that spell./"@24390
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_698_0"@24391
conv.s.v
push.s "%%"@2565
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[329]
pushi.e -5
pushi.e 924
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [331]

:[330]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_365_0"@24392
conv.s.v
push.s "\\Ee* I'm telling you^1, I..^1. I.../"@24393
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_366_0"@24394
conv.s.v
push.s "\\EW* I don't know what you're talking about./"@24395
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_707_0"@24396
conv.s.v
push.s "%%"@2565
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[331]
pushi.e -5
pushi.e 924
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [333]

:[332]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_372_0"@24397
conv.s.v
push.s "\\EW* I'm telling you^1, stop!/"@24398
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_373_0"@24399
conv.s.v
push.s "\\EZ* I... I don't know what you're talking about!/"@24400
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_716_0"@24401
conv.s.v
push.s "%%"@2565
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[333]
pushi.e -5
pushi.e 924
push.v [array]self.flag
pushi.e 3
cmp.i.v GTE
bf [335]

:[334]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_722_0"@24402
conv.s.v
push.s "\\EW* .../"@24403
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_379_0"@24404
conv.s.v
push.s "\\EV* Fine^1. You want to see what happens so bad?/"@24405
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_380_0"@24406
conv.s.v
push.s "\\Ef* Watch what happens when I cast a spell I don't know!/"@24407
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_726_0"@24408
conv.s.v
push.s "%%"@2565
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[335]
push.i 231204
setowner.e
pushi.e -5
pushi.e 924
dup.i 1
push.v [array]self.flag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.flag
popz.v
pushi.e 64
pushenv [337]

:[336]
call.i instance_destroy(argc=0)
popz.v

:[337]
popenv [336]
call.i gml_Script_scr_battletext(argc=0)
popz.v

:[338]
push.v self.snowgrave_con
pushi.e 2
cmp.i.v EQ
bf [340]

:[339]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [341]

:[340]
push.e 0

:[341]
bf [344]

:[342]
push.v self.snowgrave_timer
push.e 1
add.i.v
pop.v.v self.snowgrave_timer
push.v self.snowgrave_timer
pushi.e 10
cmp.i.v GTE
bf [344]

:[343]
pushi.e 0
pop.v.i self.snowgrave_timer
pushi.e 0
pop.v.i self.snowgrave_con
pushi.e 2
pop.v.i global.bmenuno

:[344]
push.v self.sidebcon
pushi.e 0
cmp.i.v GT
bf [end]

:[345]
push.v self.sidebcon
pushi.e 1
cmp.i.v EQ
bf [347]

:[346]
pushi.e 2
pop.v.i self.sidebcon
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[347]
push.v self.sidebcon
pushi.e 3
cmp.i.v EQ
bf [353]

:[348]
pushi.e 869
pushenv [352]

:[349]
push.v self.spellwriter
pushi.e -9
pushenv [351]

:[350]
call.i instance_destroy(argc=0)
popz.v

:[351]
popenv [350]
call.i instance_destroy(argc=0)
popz.v

:[352]
popenv [349]
pushi.e 4
pop.v.i self.sidebcon
pushi.e 150
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[353]
push.v self.sidebcon
pushi.e 5
cmp.i.v EQ
bf [355]

:[354]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 0
pop.v.i global.fc
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_429_0"@24409
conv.s.v
push.s "* .../%"@14954
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e 6
pop.v.i self.sidebcon

:[355]
push.v self.sidebcon
pushi.e 6
cmp.i.v EQ
bf [357]

:[356]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [358]

:[357]
push.e 0

:[358]
bf [362]

:[359]
push.v self.fn
pushi.e -9
pushenv [361]

:[360]
push.s "h"@6667
conv.s.v
call.i gml_Script_scr_flip(argc=1)
popz.v

:[361]
popenv [360]
push.d 0.9
push.v self.fb
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 7
pop.v.i self.sidebcon
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_441_0"@24410
conv.s.v
push.s "* What.../"@24411
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_442_0"@24412
conv.s.v
push.s "* What happened?/"@24413
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_443_0"@24414
conv.s.v
push.s "* There was so much snow^1, I couldn't see anything.../"@24415
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_444_0"@24416
conv.s.v
push.s "* I.../%"@24417
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v

:[362]
push.v self.sidebcon
pushi.e 7
cmp.i.v EQ
bf [364]

:[363]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [365]

:[364]
push.e 0

:[365]
bf [369]

:[366]
push.v self.fn
pushi.e -9
pushenv [368]

:[367]
push.s "h"@6667
conv.s.v
call.i gml_Script_scr_flip(argc=1)
popz.v

:[368]
popenv [367]
pushi.e 728
push.v self.fn
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.fn
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 8
pop.v.i self.sidebcon
pushi.e 0
pop.v.i self.fntimer
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[369]
push.v self.sidebcon
pushi.e 9
cmp.i.v EQ
bf [371]

:[370]
pushi.e 15
pop.v.i self.sidebcon
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_463_0"@24418
conv.s.v
push.s "* I don't feel so good./"@24419
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_464_0"@24420
conv.s.v
push.s "* I think/"@24421
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_berdlyb2_enemy_slash_Step_0_gml_465_0"@24422
conv.s.v
push.s "* I'm going to go home./%"@24423
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v

:[371]
push.v self.sidebcon
pushi.e 15
cmp.i.v EQ
bf [373]

:[372]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [374]

:[373]
push.e 0

:[374]
bf [376]

:[375]
pushi.e 29
pop.v.i self.sidebcon
pushi.e 320
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
push.d 0.1
push.v self.fn
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e -1
push.v self.fn
pushi.e -9
pop.v.i [stacktop]self.vspeed

:[376]
push.v self.sidebcon
pushi.e 29
cmp.i.v EQ
bf [378]

:[377]
push.v self.fntimer
push.e 1
add.i.v
pop.v.v self.fntimer
push.v self.fn
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.fntimer
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.7
mul.d.v
add.v.v
pop.i.v [stacktop]self.x

:[378]
push.v self.sidebcon
pushi.e 30
cmp.i.v EQ
bf [380]

:[379]
pushi.e 64
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [381]

:[380]
push.e 0

:[381]
bf [end]

:[382]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 38
pop.v.v [array]self.flag
pushi.e 1
pop.v.i global.specialbattle
push.i 231884
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.monstergold
push.i 231885
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.monsterexp
pushi.e 105
conv.i.v
pushi.e 97
conv.i.v
pushi.e 607
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.berdlysign
pushi.e 700
push.v self.berdlysign
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.fn
pushi.e -9
pushenv [384]

:[383]
call.i instance_destroy(argc=0)
popz.v

:[384]
popenv [383]
push.v self.fb
pushi.e -9
pushenv [386]

:[385]
call.i instance_destroy(argc=0)
popz.v

:[386]
popenv [385]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
pushenv [388]

:[387]
call.i instance_destroy(argc=0)
popz.v

:[388]
popenv [387]
pushi.e 11
pop.v.i self.sidebcon
push.i 231204
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 915
pop.v.v [array]self.flag
call.i gml_Script_scr_wincombat(argc=0)
popz.v

:[end]