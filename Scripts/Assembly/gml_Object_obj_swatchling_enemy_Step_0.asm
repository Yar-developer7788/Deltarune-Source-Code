.localvar 2 arguments
.localvar 23420 color_index 10527
.localvar 23421 changedcolor 10528
.localvar 23422 justchanged 10529
.localvar 23423 allprimary 10530
.localvar 23424 mismatch_check 10531
.localvar 23425 justcoordinated 10532
.localvar 23434 myRandom 10533
.localvar 23449 blueText 10534
.localvar 23292 battleText 10535
.localvar 23471 monsterPop 10536
.localvar 23504 warmify 10537
.localvar 23505 extreme 10538
.localvar 7017 a 10539
.localvar 11908 temp 10541
.localvar 23513 colorText 10542
.localvar 23526 newly_coordinated 10543
.localvar 15767 sentenceEnd 10544
.localvar 23527 random_text 10545

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [162]

:[1]
push.v self.myself
pop.v.v self.talkOrder
push.v self.color_init
conv.v.b
not.b
bf [6]

:[2]
pushi.e 0
pop.v.i local.color_index
pushi.e 436
pushenv [5]

:[3]
push.v self.color_init
conv.v.b
not.b
bf [5]

:[4]
pushi.e 1
pop.v.b self.color_init
pushloc.v local.color_index
pop.v.v self.new_color
pushi.e -1
push.v self.new_color
conv.v.i
push.v [array]self.base_colors
pop.v.v self.currentcolor
pushi.e -1
push.v self.new_color
conv.v.i
push.v [array]self.base_colors
pop.v.v self.previouscolor
push.v local.color_index
push.e 1
add.i.v
pop.v.v local.color_index

:[5]
popenv [3]

:[6]
push.v self.loaded_color
conv.v.b
not.b
bf [13]

:[7]
push.v self.currentcolor
push.v self.current_pal
cmp.v.v NEQ
bf [12]

:[8]
push.v self.current_pal
push.v self.currentcolor
cmp.v.v GT
bf [10]

:[9]
pushi.e 255
conv.i.v
push.v self.currentcolor
push.v self.current_pal
push.d 0.1
sub.d.v
call.i clamp(argc=3)
b [11]

:[10]
push.v self.currentcolor
pushi.e 0
conv.i.v
push.v self.current_pal
push.d 0.1
add.d.v
call.i clamp(argc=3)

:[11]
pop.v.v self.current_pal
b [13]

:[12]
pushi.e 1
pop.v.b self.loaded_color

:[13]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v self.myself
call.i gml_Script_scr_monster_make_tired(argc=1)
popz.v

:[18]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [20]

:[19]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [93]

:[22]
call.i gml_Script_scr_randomtarget(argc=0)
popz.v
pushi.e 363
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [24]

:[23]
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[24]
push.v self.currentcolor
push.v self.previouscolor
cmp.v.v NEQ
pop.v.b local.changedcolor
pushi.e 0
pop.v.b local.justchanged
pushi.e 1
pop.v.b local.allprimary
pushi.e 0
pop.v.i local.mismatch_check
pushi.e 436
pushenv [35]

:[25]
push.v self.currentcolor
push.v other.currentcolor
cmp.v.v NEQ
bf [27]

:[26]
push.v local.mismatch_check
push.e 1
add.i.v
pop.v.v local.mismatch_check

:[27]
push.v self.currentcolor
push.v self.previouscolor
cmp.v.v NEQ
bf [29]

:[28]
pushi.e 1
pop.v.b local.justchanged

:[29]
push.v self.currentcolor
push.v self.blue
cmp.v.v NEQ
bf [32]

:[30]
push.v self.currentcolor
push.v self.red
cmp.v.v NEQ
bf [32]

:[31]
push.v self.currentcolor
push.v self.yellow
cmp.v.v NEQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 0
pop.v.b local.allprimary

:[35]
popenv [25]
pushloc.v local.mismatch_check
pushi.e 0
cmp.i.v EQ
pop.v.b self.coordinated
push.v self.coordinated
conv.v.b
bf [37]

:[36]
pushloc.v local.justchanged
conv.v.b
b [38]

:[37]
push.e 0

:[38]
pop.v.b local.justcoordinated
push.s "obj_swatchling_enemy_slash_Step_0_gml_54_0"@23426
conv.s.v
push.s "Welcome,&young masters."@23427
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.talkOrder
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
push.s "obj_swatchling_enemy_slash_Step_0_gml_57_0"@23428
conv.s.v
push.s "We have prepared several&attack patterns for&your enjoyment."@23429
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [42]

:[40]
push.v self.talkOrder
pushi.e 2
cmp.i.v EQ
bf [42]

:[41]
push.s "obj_swatchling_enemy_slash_Step_0_gml_60_0"@23430
conv.s.v
push.s "Please enjoy them&at your convenience."@23431
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[42]
push.v self.turns
pushi.e 1
cmp.i.v GTE
bf [76]

:[43]
push.s "obj_swatchling_enemy_slash_Step_0_gml_157_0"@23432
conv.s.v
push.s "Tut, tut.&It looks like pain."@23433
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.setmessage
conv.v.b
not.b
bf [47]

:[44]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v local.myRandom
pushi.e 436
pushenv [46]

:[45]
pushloc.v local.myRandom
pop.v.v self.randomMessage
pushi.e 1
pop.v.b self.setmessage

:[46]
popenv [45]

:[47]
push.v self.randomMessage
pushi.e 2
cmp.i.v LT
bf [59]

:[48]
push.v self.currentcolor
push.v self.blue
cmp.v.v EQ
bf [50]

:[49]
push.s "obj_swatchling_enemy_slash_Step_0_gml_162_0"@23435
conv.s.v
push.s "We'll shine your shoes&'til they're black and blue."@23436
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [58]

:[50]
push.v self.currentcolor
push.v self.red
cmp.v.v EQ
bf [52]

:[51]
push.s "obj_swatchling_enemy_slash_Step_0_gml_165_0"@23437
conv.s.v
push.s "We'll make your bed&with sheets blood red."@23438
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [58]

:[52]
push.v self.currentcolor
push.v self.yellow
cmp.v.v EQ
bf [54]

:[53]
push.s "obj_swatchling_enemy_slash_Step_0_gml_168_0"@23439
conv.s.v
push.s "We'll make yellow sweets&for you, just try&not to hurt your tooth."@23440
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [58]

:[54]
push.v self.currentcolor
push.v self.orange
cmp.v.v EQ
bf [56]

:[55]
push.s "obj_swatchling_enemy_slash_Step_0_gml_178_0"@23441
conv.s.v
push.s "Please enjoy these&complimentary birds."@23442
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [58]

:[56]
push.v self.currentcolor
push.v self.green
cmp.v.v EQ
bf [58]

:[57]
push.s "obj_swatchling_enemy_slash_Step_0_gml_181_0"@23443
conv.s.v
push.s "Would you like&some horse'dovours?"@23444
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[58]
b [65]

:[59]
push.v self.randomMessage
pushi.e 2
cmp.i.v EQ
bf [65]

:[60]
push.v self.currentcolor
push.v self.blue
cmp.v.v EQ
bf [65]

:[61]
pushi.e 100
conv.i.v
call.i random(argc=1)
pushi.e 95
cmp.i.v GTE
bf [63]

:[62]
push.s "obj_swatchling_enemy_slash_Step_0_gml_174_0"@23445
conv.s.v
push.s "What? The lasagna&has some kind of&explosive in it?"@23446
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [64]

:[63]
push.s "obj_swatchling_enemy_slash_Step_0_gml_174_1"@23447
conv.s.v
push.s "Please enjoy this&complimentary body slam."@23448
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[64]
pop.v.v local.blueText
pushloc.v local.blueText
pushi.e 0
conv.i.v
call.i gml_Script_msgset(argc=2)
popz.v

:[65]
pushloc.v local.changedcolor
conv.v.b
bf [76]

:[66]
push.v self.currentcolor
push.v self.blue
cmp.v.v EQ
bf [68]

:[67]
push.s "obj_swatchling_enemy_slash_Step_0_gml_119_0"@23450
conv.s.v
push.s "I'm feeling&blue."@23451
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [76]

:[68]
push.v self.currentcolor
push.v self.red
cmp.v.v EQ
bf [70]

:[69]
push.s "obj_swatchling_enemy_slash_Step_0_gml_122_0"@23452
conv.s.v
push.s "I'm seeing&red."@23453
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [76]

:[70]
push.v self.currentcolor
push.v self.yellow
cmp.v.v EQ
bf [72]

:[71]
push.s "obj_swatchling_enemy_slash_Step_0_gml_125_0"@23454
conv.s.v
push.s "I'm a yellow&fellow."@23455
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [76]

:[72]
push.v self.currentcolor
push.v self.orange
cmp.v.v EQ
bf [74]

:[73]
push.s "obj_swatchling_enemy_slash_Step_0_gml_160_0"@23456
conv.s.v
push.s "How about some&orange peel."@23457
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [76]

:[74]
push.v self.currentcolor
push.v self.green
cmp.v.v EQ
bf [76]

:[75]
push.s "obj_swatchling_enemy_slash_Step_0_gml_164_0"@23458
conv.s.v
push.s "A green lime&for your drink?"@23459
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[76]
pushloc.v local.justcoordinated
conv.v.b
bf [83]

:[77]
push.v self.talkOrder
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_swatchling_enemy_slash_Step_0_gml_106_0"@23460
conv.s.v
push.s "We feel so&coordinated."@23461
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [83]

:[79]
push.v self.talkOrder
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_swatchling_enemy_slash_Step_0_gml_109_0"@23462
conv.s.v
push.s "Thank you,&young masters."@23463
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [83]

:[81]
push.v self.talkOrder
pushi.e 2
cmp.i.v EQ
bf [83]

:[82]
push.s "obj_swatchling_enemy_slash_Step_0_gml_112_0"@23464
conv.s.v
push.s "Thank you."@23465
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[83]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
push.v self.becameAlone
conv.v.b
not.b
b [86]

:[85]
push.e 0

:[86]
bf [88]

:[87]
pushi.e 1
pop.v.b self.becameAlone
push.s "obj_swatchling_enemy_slash_Step_0_gml_46_0"@23466
conv.s.v
push.s "My outfit is coordinated now.&With myself."@23467
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[88]
push.v self.myself
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [92]

:[89]
pushi.e 436
pushenv [91]

:[90]
push.v self.currentcolor
pop.v.v self.previouscolor

:[91]
popenv [90]

:[92]
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
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[93]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
push.s "enemytalk"@6390
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
b [96]

:[95]
push.e 0

:[96]
bf [102]

:[97]
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
bf [102]

:[98]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [100]

:[99]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[100]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [102]

:[101]
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

:[102]
push.s "bullets"@6393
conv.s.v
call.i gml_Script_scr_isphase(argc=1)
conv.v.b
bf [104]

:[103]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [105]

:[104]
push.e 0

:[105]
bf [162]

:[106]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 1
cmp.i.v EQ
bf [117]

:[107]
pushi.e 443
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [109]

:[108]
pushi.e 443
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[109]
push.v self.currentcolor
push.v self.blue
cmp.v.v EQ
bf [111]

:[110]
push.v 443.blue_count
push.e 1
add.i.v
pop.v.v 443.blue_count
b [117]

:[111]
push.v self.currentcolor
push.v self.red
cmp.v.v EQ
bt [113]

:[112]
push.v self.currentcolor
push.v self.orange
cmp.v.v EQ
b [114]

:[113]
push.e 1

:[114]
bf [116]

:[115]
push.v 443.red_count
push.e 1
add.i.v
pop.v.v 443.red_count
b [117]

:[116]
push.v 443.yellow_count
push.e 1
add.i.v
pop.v.v 443.yellow_count

:[117]
push.v self.currentcolor
push.v self.blue
cmp.v.v EQ
bf [119]

:[118]
push.v self.rtimer
pushi.e 2
cmp.i.v EQ
b [120]

:[119]
push.e 0

:[120]
bf [122]

:[121]
push.i 231869
setowner.e
push.s "Bounce"@23468
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
pushi.e 7
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.myself
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.creator

:[122]
push.v self.rtimer
pushi.e 16
cmp.i.v EQ
bf [161]

:[123]
pushi.e 443
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [125]

:[124]
pushi.e 443
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[125]
push.v self.currentcolor
push.v self.red
cmp.v.v EQ
bt [127]

:[126]
push.v self.currentcolor
push.v self.orange
cmp.v.v EQ
b [128]

:[127]
push.e 1

:[128]
bf [132]

:[129]
push.s "Shockwave"@23469
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
pushi.e 5
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.currentcolor
push.v self.orange
cmp.v.v EQ
bf [131]

:[130]
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.special

:[131]
push.v self.myself
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.creator
b [140]

:[132]
push.v self.currentcolor
push.v self.yellow
cmp.v.v EQ
bt [134]

:[133]
push.v self.currentcolor
push.v self.green
cmp.v.v EQ
b [135]

:[134]
push.e 1

:[135]
bf [139]

:[136]
push.s "Platter"@23470
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
pushi.e 6
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.currentcolor
push.v self.green
cmp.v.v EQ
bf [138]

:[137]
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.special

:[138]
push.v self.myself
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.creator
b [140]

:[139]
push.s "Bounce"@23468
conv.s.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterattackname

:[140]
pushi.e 180
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v
pushi.e 0
pop.v.b self.setmessage
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s ""@157
pop.v.s local.battleText
call.i gml_Script_scr_monsterpop(argc=0)
pop.v.v local.monsterPop
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
bf [145]

:[141]
pushloc.v local.monsterPop
pushi.e 1
cmp.i.v GT
bf [143]

:[142]
push.s "obj_swatchling_enemy_slash_Step_0_gml_284_0"@23472
conv.s.v
push.s "* The Swatchlings are cleaning each other off with feather dusters."@23473
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [144]

:[143]
push.s "obj_swatchling_enemy_slash_Step_0_gml_284_1"@23474
conv.s.v
push.s "* Swatchling feather dusts itself."@23475
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[144]
pop.v.v local.battleText

:[145]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [150]

:[146]
pushloc.v local.monsterPop
pushi.e 1
cmp.i.v GT
bf [148]

:[147]
push.s "obj_swatchling_enemy_slash_Step_0_gml_285_0"@23476
conv.s.v
push.s "* Swatchlings flex their backs while bending over to inspect a teacup."@23477
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [149]

:[148]
push.s "obj_swatchling_enemy_slash_Step_0_gml_285_1"@23478
conv.s.v
push.s "* Swatchling flexes all of its back muscles while inspecting a teacup."@23479
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[149]
pop.v.v local.battleText

:[150]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [152]

:[151]
push.s "obj_swatchling_enemy_slash_Step_0_gml_286_0"@23480
conv.s.v
push.s "* The Swatchlings wipe at the face of their chained pocketwatch, which is digital."@23481
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[152]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [154]

:[153]
push.s "obj_swatchling_enemy_slash_Step_0_gml_287_0"@23482
conv.s.v
push.s "* The Swatchlings are adjusting their hue and saturation."@23483
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[154]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [156]

:[155]
push.s "obj_swatchling_enemy_slash_Step_0_gml_288_0"@23484
conv.s.v
push.s "* Smells like paint and feathers."@23485
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[156]
push.v self.coordinated
conv.v.b
bf [158]

:[157]
push.s "obj_swatchling_enemy_slash_Step_0_gml_302_0"@23486
conv.s.v
push.s "* The Swatchlings are relieved their wardrobe has been coordinated."@23487
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[158]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [160]

:[159]
push.s "obj_swatchling_enemy_slash_Step_0_gml_307_0"@23488
conv.s.v
push.s "* The Swatchling is dreading doing all of the work by itself."@23489
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.battleText

:[160]
push.i 231921
setowner.e
pushloc.v local.battleText
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushi.e 1
pop.v.i self.attacked
b [162]

:[161]
pushi.e 120
conv.i.v
call.i gml_Script_scr_turntimer(argc=1)
popz.v

:[162]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [end]

:[163]
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
bf [165]

:[164]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [166]

:[165]
push.e 0

:[166]
bf [168]

:[167]
pushi.e 1
pop.v.i self.actcon
push.s "obj_swatchling_enemy_slash_Step_0_gml_328_0"@23490
conv.s.v
push.s "* SWATCHLING - Happiest when their outfits are color-coordinated./%"@23491
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[168]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [170]

:[169]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [171]

:[170]
push.e 0

:[171]
bf [179]

:[172]
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
bf [174]

:[173]
push.s "obj_swatchling_enemy_slash_Step_0_gml_336_0"@23492
conv.s.v
push.s "* Talked about the color of the summer sun shining on a beach ball./%"@23493
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[174]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [176]

:[175]
push.s "obj_swatchling_enemy_slash_Step_0_gml_337_0"@23494
conv.s.v
push.s "* Talked about the steam of a fresh hot chocolate./%"@23495
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[176]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [178]

:[177]
push.s "obj_swatchling_enemy_slash_Step_0_gml_338_0"@23496
conv.s.v
push.s "* Talked about the warmth of a loving embrace./%"@23497
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[178]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 5
pop.v.i self.actcon

:[179]
push.v self.acting
pushi.e 3
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
bf [190]

:[183]
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
bf [185]

:[184]
push.s "obj_swatchling_enemy_slash_Step_0_gml_348_0"@23498
conv.s.v
push.s "* Talked about the crunch of the last pickle in the refrigerator./%"@23499
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[185]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [187]

:[186]
push.s "obj_swatchling_enemy_slash_Step_0_gml_349_0"@23500
conv.s.v
push.s "* Talked about the chill of the wind on the ice skating pond./%"@23501
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[187]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [189]

:[188]
push.s "obj_swatchling_enemy_slash_Step_0_gml_350_0"@23502
conv.s.v
push.s "* Talked about the snow matted on your brother's nose./%"@23503
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[189]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 5
pop.v.i self.actcon

:[190]
push.v self.actcon
pushi.e 5
cmp.i.v EQ
bf [237]

:[191]
push.v self.currentcolor
pop.v.v self.previouscolor
push.v self.acting
pushi.e 2
cmp.i.v EQ
bt [193]

:[192]
push.v self.actconsus
pushi.e 2
cmp.i.v EQ
b [194]

:[193]
push.e 1

:[194]
pop.v.b local.warmify
push.v self.actconsus
pushi.e 2
cmp.i.v EQ
bt [196]

:[195]
push.v self.actconral
pushi.e 2
cmp.i.v EQ
b [197]

:[196]
push.e 1

:[197]
bf [199]

:[198]
pushi.e 1
conv.i.v
b [200]

:[199]
pushi.e 2
conv.i.v

:[200]
pop.v.v local.extreme
pushloc.v local.extreme
pushi.e 2
cmp.i.v EQ
bf [202]

:[201]
pushi.e 436
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v NEQ
b [203]

:[202]
push.e 0

:[203]
bf [233]

:[204]
pushi.e 0
pop.v.i local.a
push.v self.currentcolor
push.v self.blue
cmp.v.v EQ
bt [206]

:[205]
push.v self.currentcolor
push.v self.yellow
cmp.v.v EQ
b [207]

:[206]
push.e 1

:[207]
bf [213]

:[208]
pushi.e 0
pop.v.i self.i

:[209]
push.v self.i
pushi.e 436
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [213]

:[210]
push.i 170297
setowner.e
push.v self.i
pushi.e 436
conv.i.v
call.i instance_find(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.enemy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.enemy
pushi.e -9
push.v [stacktop]self.currentcolor
push.v self.green
cmp.v.v EQ
bf [212]

:[211]
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[212]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [209]

:[213]
push.v self.currentcolor
push.v self.red
cmp.v.v EQ
bt [215]

:[214]
push.v self.currentcolor
push.v self.yellow
cmp.v.v EQ
b [216]

:[215]
push.e 1

:[216]
bf [222]

:[217]
pushi.e 0
pop.v.i self.i

:[218]
push.v self.i
pushi.e 436
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [222]

:[219]
push.i 170297
setowner.e
push.v self.i
pushi.e 436
conv.i.v
call.i instance_find(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.enemy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.enemy
pushi.e -9
push.v [stacktop]self.currentcolor
push.v self.orange
cmp.v.v EQ
bf [221]

:[220]
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[221]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [218]

:[222]
push.v self.currentcolor
push.v self.orange
cmp.v.v EQ
bt [224]

:[223]
push.v self.currentcolor
push.v self.green
cmp.v.v EQ
b [225]

:[224]
push.e 1

:[225]
bf [231]

:[226]
pushi.e 0
pop.v.i self.i

:[227]
push.v self.i
pushi.e 436
conv.i.v
call.i instance_number(argc=1)
cmp.v.v LT
bf [231]

:[228]
push.i 170297
setowner.e
push.v self.i
pushi.e 436
conv.i.v
call.i instance_find(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.enemy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.enemy
pushi.e -9
push.v [stacktop]self.currentcolor
push.v self.yellow
cmp.v.v EQ
bf [230]

:[229]
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[230]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [227]

:[231]
pushloc.v local.a
pushi.e 436
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [233]

:[232]
pushi.e 1
pop.v.i local.extreme

:[233]
pushloc.v local.warmify
conv.v.b
bf [235]

:[234]
push.v self.red
push.v self.blue
push.v self.currentcolor
pushloc.v local.extreme
add.v.v
call.i clamp(argc=3)
pop.v.v self.currentcolor
b [236]

:[235]
push.v self.red
push.v self.blue
push.v self.currentcolor
pushloc.v local.extreme
sub.v.v
call.i clamp(argc=3)
pop.v.v self.currentcolor

:[236]
pushi.e 10
pop.v.i self.actcon
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[237]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [239]

:[238]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [240]

:[239]
push.e 0

:[240]
bf [247]

:[241]
push.v self.currentcolor
push.v self.current_pal
cmp.v.v NEQ
bf [246]

:[242]
push.v self.current_pal
push.v self.currentcolor
cmp.v.v GT
bf [244]

:[243]
pushi.e 255
conv.i.v
push.v self.currentcolor
push.v self.current_pal
push.d 0.1
sub.d.v
call.i clamp(argc=3)
b [245]

:[244]
push.v self.currentcolor
pushi.e 0
conv.i.v
push.v self.current_pal
push.d 0.1
add.d.v
call.i clamp(argc=3)

:[245]
pop.v.v self.current_pal
b [247]

:[246]
pushi.e 20
pop.v.i self.actcon

:[247]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bf [249]

:[248]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [250]

:[249]
push.e 0

:[250]
bf [282]

:[251]
push.v self.currentcolor
push.v self.previouscolor
cmp.v.v NEQ
pop.v.b local.changedcolor
pushloc.v local.changedcolor
pushi.e 0
cmp.b.v EQ
bf [256]

:[252]
push.v self.currentcolor
push.v self.blue
cmp.v.v EQ
bf [254]

:[253]
push.s "obj_swatchling_enemy_slash_Step_0_gml_383_0"@23506
conv.s.v
push.s "cold"@23507
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [255]

:[254]
push.s "obj_swatchling_enemy_slash_Step_0_gml_383_1"@23508
conv.s.v
push.s "warm"@23509
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[255]
pop.v.v local.temp
push.s "obj_swatchling_enemy_slash_Step_0_gml_395_0"@23510
conv.s.v
pushloc.v local.temp
push.s "* But Swatchling is already as ~1 as can be!/%"@23511
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [273]

:[256]
push.v self.currentcolor
push.v self.previouscolor
cmp.v.v GT
pop.v.b local.warmify
push.s "obj_swatchling_enemy_slash_Step_0_gml_422_0_b"@23512
conv.s.v
push.s "blue"@17738
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.colorText
push.v self.currentcolor
push.v self.red
cmp.v.v EQ
bf [258]

:[257]
push.s "obj_swatchling_enemy_slash_Step_0_gml_425_0"@23514
conv.s.v
push.s "red"@7911
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.colorText
b [260]

:[258]
push.v self.currentcolor
push.v self.yellow
cmp.v.v EQ
bf [260]

:[259]
push.s "obj_swatchling_enemy_slash_Step_0_gml_428_0"@23515
conv.s.v
push.s "yellow"@10317
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.colorText

:[260]
push.v self.currentcolor
push.v self.green
cmp.v.v EQ
bf [262]

:[261]
push.s "obj_swatchling_enemy_slash_Step_0_gml_431_0"@23516
conv.s.v
push.s "green"@17739
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.colorText

:[262]
push.v self.currentcolor
push.v self.orange
cmp.v.v EQ
bf [264]

:[263]
push.s "obj_swatchling_enemy_slash_Step_0_gml_434_0"@23517
conv.s.v
push.s "orange"@17740
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.colorText

:[264]
push.v self.actconsus
pushi.e 2
cmp.i.v EQ
bt [266]

:[265]
push.v self.actconral
pushi.e 2
cmp.i.v EQ
b [267]

:[266]
push.e 1

:[267]
bf [269]

:[268]
push.s "obj_swatchling_enemy_slash_Step_0_gml_404_0"@23518
conv.s.v
push.s "a little bit"@23519
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
b [270]

:[269]
push.s "obj_swatchling_enemy_slash_Step_0_gml_404_1"@23520
conv.s.v
push.s "a lot"@23521
conv.s.v
call.i gml_Script_stringsetloc(argc=2)

:[270]
pop.v.v local.extreme
pushloc.v local.warmify
conv.v.b
bf [272]

:[271]
push.s "obj_swatchling_enemy_slash_Step_0_gml_419_0"@23522
conv.s.v
pushloc.v local.colorText
pushloc.v local.extreme
push.s "* Swatchling's color got ~1 warmer...! It's now ~2!/%"@23523
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=5)
popz.v
b [273]

:[272]
push.s "obj_swatchling_enemy_slash_Step_0_gml_422_0"@23524
conv.s.v
pushloc.v local.colorText
pushloc.v local.extreme
push.s "* Swatchling's color turned ~1 colder...! It's now ~2!/%"@23525
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=5)
popz.v

:[273]
pushi.e 0
pop.v.i local.mismatch_check
pushi.e 436
pushenv [276]

:[274]
push.v self.currentcolor
push.v other.currentcolor
cmp.v.v NEQ
bf [276]

:[275]
push.v local.mismatch_check
push.e 1
add.i.v
pop.v.v local.mismatch_check

:[276]
popenv [274]
pushloc.v local.mismatch_check
pushi.e 0
cmp.i.v EQ
pop.v.b local.newly_coordinated
pushloc.v local.newly_coordinated
conv.v.b
bf [281]

:[277]
pushi.e 436
pushenv [280]

:[278]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v LT
bf [280]

:[279]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[280]
popenv [278]

:[281]
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconral
pushi.e 0
pop.v.i self.actconsus
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[282]
push.v self.actingsus
pushi.e 1
cmp.i.v EQ
bf [284]

:[283]
push.v self.actconsus
pushi.e 1
cmp.i.v EQ
b [285]

:[284]
push.e 0

:[285]
bf [299]

:[286]
push.v self.currentcolor
push.v self.red
cmp.v.v EQ
bf [288]

:[287]
push.s "/"@4448
conv.s.v
b [289]

:[288]
push.s "/%"@4449
conv.s.v

:[289]
pop.v.v local.sentenceEnd
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v local.random_text
pushloc.v local.random_text
pushi.e 0
cmp.i.v EQ
bf [291]

:[290]
push.s "obj_swatchling_enemy_slash_Step_0_gml_444_0"@23528
conv.s.v
pushloc.v local.sentenceEnd
push.s "* Susie mentions explosions.~1"@23529
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v

:[291]
pushloc.v local.random_text
pushi.e 1
cmp.i.v EQ
bf [293]

:[292]
push.s "obj_swatchling_enemy_slash_Step_0_gml_432_0"@23530
conv.s.v
pushloc.v local.sentenceEnd
push.s "* Susie mentions lava.~1"@23531
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v

:[293]
pushloc.v local.random_text
pushi.e 2
cmp.i.v EQ
bf [295]

:[294]
push.s "obj_swatchling_enemy_slash_Step_0_gml_436_0"@23532
conv.s.v
pushloc.v local.sentenceEnd
push.s "* Susie mentions hot peppers.~1"@23533
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v

:[295]
push.v self.currentcolor
push.v self.red
cmp.v.v EQ
bf [297]

:[296]
push.s "obj_swatchling_enemy_slash_Step_0_gml_437_0"@23534
conv.s.v
push.s "* But nothing happened!/%"@23535
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconsus
b [298]

:[297]
pushi.e 5
pop.v.i self.actcon
pushi.e 2
pop.v.i self.actconsus

:[298]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[299]
push.v self.actingral
pushi.e 1
cmp.i.v EQ
bf [301]

:[300]
push.v self.actconral
pushi.e 1
cmp.i.v EQ
b [302]

:[301]
push.e 0

:[302]
bf [316]

:[303]
push.v self.currentcolor
push.v self.blue
cmp.v.v EQ
bf [305]

:[304]
push.s "/"@4448
conv.s.v
b [306]

:[305]
push.s "/%"@4449
conv.s.v

:[306]
pop.v.v local.sentenceEnd
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v local.random_text
pushloc.v local.random_text
pushi.e 0
cmp.i.v EQ
bf [308]

:[307]
push.s "obj_swatchling_enemy_slash_Step_0_gml_456_0"@23536
conv.s.v
pushloc.v local.sentenceEnd
push.s "* Ralsei mentions mint tea.~1"@23537
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v

:[308]
pushloc.v local.random_text
pushi.e 1
cmp.i.v EQ
bf [310]

:[309]
push.s "obj_swatchling_enemy_slash_Step_0_gml_465_0"@23538
conv.s.v
pushloc.v local.sentenceEnd
push.s "* Ralsei mentions icy scarves.~1"@23539
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v

:[310]
pushloc.v local.random_text
pushi.e 2
cmp.i.v EQ
bf [312]

:[311]
push.s "obj_swatchling_enemy_slash_Step_0_gml_469_0"@23540
conv.s.v
pushloc.v local.sentenceEnd
push.s "* Ralsei mentions ice cream.~1"@23541
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v

:[312]
push.v self.currentcolor
push.v self.blue
cmp.v.v EQ
bf [314]

:[313]
push.s "obj_swatchling_enemy_slash_Step_0_gml_460_0"@23542
conv.s.v
push.s "* But nothing happened!/%"@23535
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
pop.v.i self.actcon
pushi.e 0
pop.v.i self.actconral
b [315]

:[314]
pushi.e 5
pop.v.i self.actcon
pushi.e 2
pop.v.i self.actconral

:[315]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[316]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [318]

:[317]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [319]

:[318]
push.e 0

:[319]
bf [end]

:[320]
call.i gml_Script_scr_nextact(argc=0)
popz.v

:[end]