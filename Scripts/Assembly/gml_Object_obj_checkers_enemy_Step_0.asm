.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 21
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.secondtime

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [65]

:[3]
push.i 231204
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.v [array]self.flag
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 99
pop.v.i self.milk_counter

:[5]
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 99
pop.v.i self.ralsei_lecture

:[7]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [24]

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
pushi.e 1000
pop.v.i self.milkmax
push.v self.milk_counter
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
pushi.e 600
pop.v.i self.milkmax

:[15]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
push.v self.milkmax
cmp.v.v GT
bf [23]

:[16]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [18]

:[17]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[21]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [23]

:[22]
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

:[23]
pushi.e 2
pop.v.i global.mnfight
pushi.e 0
pop.v.i self.rtimer
pushi.e 50
pop.v.i global.typer
pushi.e 2
pop.v.i self.talked
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.talktimer

:[24]
push.v self.talked
pushi.e 2
cmp.i.v EQ
bf [26]

:[25]
pushi.e 2
pop.v.i global.mnfight

:[26]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [28]

:[27]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [57]

:[30]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [56]

:[31]
pushi.e 0
pop.v.i self.talked
pushi.e 1000
pop.v.i self.milkmax
push.v self.milk_counter
pushi.e 0
cmp.i.v GT
bf [33]

:[32]
pushi.e 600
pop.v.i self.milkmax

:[33]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
push.v self.milkmax
cmp.v.v LTE
bf [37]

:[34]
push.v self.scon
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i self.scon

:[36]
b [49]

:[37]
pushi.e 404
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [48]

:[38]
push.v self.attacktype
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushi.e 0
pop.v.i self.rr

:[40]
push.v self.attacktype
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 3
pop.v.i self.rr

:[42]
push.v self.attacktype
pushi.e 2
cmp.i.v EQ
bf [44]

:[43]
pushi.e 1
pop.v.i self.rr

:[44]
push.v self.attacktype
pushi.e 3
cmp.i.v EQ
bf [46]

:[45]
pushi.e 2
pop.v.i self.rr

:[46]
pushi.e 404
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dc
push.v self.rr
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.leapmode
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.attacktype
pushi.e 1
add.i.v
pop.v.v self.attacktype
push.v self.attacktype
pushi.e 3
cmp.i.v GT
bf [48]

:[47]
pushi.e 0
pop.v.i self.attacktype

:[48]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.visible
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns

:[49]
pushi.e 999
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.attacked
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.rr
push.i 231921
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_77_0"@22484
conv.s.v
push.s "* K.Round shuffles furiously."@22485
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_checkers_enemy_slash_Step_0_gml_79_0"@22486
conv.s.v
push.s "* K.Round looks weak."@22487
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[51]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
pushi.e 3
conv.i.d
div.d.v
cmp.v.v LTE
bf [53]

:[52]
push.s "obj_checkers_enemy_slash_Step_0_gml_80_0"@22488
conv.s.v
push.s "* K.Round's shuffle becomes lethargic."@22489
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[53]
push.v self.crown
pushi.e 0
cmp.i.v GT
bf [55]

:[54]
push.s "obj_checkers_enemy_slash_Step_0_gml_82_0"@22490
conv.s.v
push.v self.crown
call.i string(argc=1)
push.s "* The crown is \\cY~1-percent\\cW loose!"@22491
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[55]
b [57]

:[56]
pushi.e 120
pop.v.i global.turntimer

:[57]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [65]

:[58]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [65]

:[59]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
push.i 231526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[61]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [65]

:[62]
pushi.e 357
pushenv [64]

:[63]
pushi.e 1
pop.v.i self.noreturn

:[64]
popenv [63]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[65]
push.v self.scon
pushi.e 1
cmp.i.v EQ
bf [71]

:[66]
push.v self.milk_counter
pushi.e 0
cmp.i.v GT
bf [68]

:[67]
push.d 1.5
pop.v.d self.scon
b [71]

:[68]
pushi.e 64
pushenv [70]

:[69]
call.i instance_destroy(argc=0)
popz.v

:[70]
popenv [69]
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_119_0"@22492
conv.s.v
push.s "* K. ROUND felt stressed out and attacked!/%"@22493
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
push.d 1.5
pop.v.d self.scon

:[71]
push.v self.scon
push.d 1.5
cmp.d.v EQ
bf [73]

:[72]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [74]

:[73]
push.e 0

:[74]
bf [80]

:[75]
pushi.e 146
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 64
pushenv [77]

:[76]
call.i instance_destroy(argc=0)
popz.v

:[77]
popenv [76]
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_129_0"@22494
conv.s.v
push.s "* K. ROUND practiced self-care!"@22495
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 999
pop.v.i global.turntimer
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 1786
conv.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.x
pushi.e 100
sub.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.milk
push.v self.milk
pushi.e -9
pushenv [79]

:[78]
pushi.e 0
pop.v.i self.image_speed
pushi.e 4
pop.v.i self.image_xscale
pushi.e 4
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_alpha

:[79]
popenv [78]
push.v self.depth
pushi.e 1
sub.i.v
push.v self.milk
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 2
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer

:[80]
push.v self.scon
pushi.e 2
cmp.i.v EQ
bf [87]

:[81]
push.v self.milk
pushi.e -9
pushenv [83]

:[82]
push.v self.image_xscale
push.d 0.2
sub.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.2
sub.d.v
pop.v.v self.image_yscale
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[83]
popenv [82]
push.v self.milktimer
pushi.e 1
add.i.v
pop.v.v self.milktimer
push.v self.milktimer
pushi.e 10
cmp.i.v GTE
bf [87]

:[84]
pushi.e 3
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer
push.v self.milk
pushi.e -9
pushenv [86]

:[85]
push.d 1.4
pop.v.d self.image_alpha

:[86]
popenv [85]

:[87]
push.v self.scon
pushi.e 3
cmp.i.v EQ
bf [90]

:[88]
push.v self.milktimer
pushi.e 1
add.i.v
pop.v.v self.milktimer
push.v self.milktimer
pushi.e 25
cmp.i.v GTE
bf [90]

:[89]
pushi.e 4
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer

:[90]
push.v self.scon
pushi.e 4
cmp.i.v EQ
bf [105]

:[91]
push.v self.milk
pushi.e -9
pushenv [93]

:[92]
push.v self.hspeed
pushi.e 2
add.i.v
pop.v.v self.hspeed
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[93]
popenv [92]
push.v self.milktimer
pushi.e 1
add.i.v
pop.v.v self.milktimer
push.v self.milktimer
pushi.e 10
cmp.i.v EQ
bf [101]

:[94]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 10
cmp.i.v LT
bf [96]

:[95]
push.i 231909
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterat
push.d 0.5
add.d.v
pop.i.v [array]self.monsterat

:[96]
pushi.e 163
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 700
pop.v.i self.milkheal
push.v self.milk_counter
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
pushi.e 300
pop.v.i self.milkheal

:[98]
push.i 231862
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterhp
push.v self.milkheal
add.v.v
pop.i.v [array]self.monsterhp
pushi.e 873
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.healamt
push.v self.healamt
pushi.e -9
pushenv [100]

:[99]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type
pushi.e 700
pop.v.i self.damage

:[100]
popenv [99]
push.v self.milkheal
push.v self.healamt
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 858
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hanim
push.v self.id
push.v self.hanim
pushi.e -9
pop.v.v [stacktop]self.target

:[101]
push.v self.milktimer
pushi.e 15
cmp.i.v GTE
bf [105]

:[102]
push.v self.milk
pushi.e -9
pushenv [104]

:[103]
call.i instance_destroy(argc=0)
popz.v

:[104]
popenv [103]
pushi.e 5
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer

:[105]
push.v self.scon
pushi.e 5
cmp.i.v EQ
bf [115]

:[106]
push.v self.milktimer
pushi.e 1
add.i.v
pop.v.v self.milktimer
push.v self.milktimer
pushi.e 30
cmp.i.v GTE
bf [115]

:[107]
push.v self.milk_counter
pushi.e 0
cmp.i.v GT
bf [111]

:[108]
pushi.e 64
pushenv [110]

:[109]
call.i instance_destroy(argc=0)
popz.v

:[110]
popenv [109]
pushi.e 0
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer
pushi.e 0
pop.v.i global.turntimer
b [114]

:[111]
pushi.e 64
pushenv [113]

:[112]
call.i instance_destroy(argc=0)
popz.v

:[113]
popenv [112]
pushi.e 6
pop.v.i self.scon
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_226_0"@22500
conv.s.v
push.s "* K. ROUND's HP and ATTACK went up!/"@22501
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_228_0"@22502
conv.s.v
push.s "* Susie^1! Stop attacking it^1! You're making it stronger!/"@22503
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_230_0"@22504
conv.s.v
push.s "* Pssh^1, and let it think I'm AFRAID^1? No way!/%"@22505
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[114]
push.v self.milk_counter
pushi.e 1
add.i.v
pop.v.v self.milk_counter

:[115]
push.v self.scon
pushi.e 6
cmp.i.v EQ
bf [118]

:[116]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [118]

:[117]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i self.scon
pushi.e 0
pop.v.i self.milktimer
pushi.e 0
pop.v.i global.turntimer

:[118]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [269]

:[119]
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
bf [121]

:[120]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [122]

:[121]
push.e 0

:[122]
bf [132]

:[123]
pushi.e 1
pop.v.i self.actcon
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
bf [127]

:[124]
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_263_0"@22506
conv.s.v
push.s "* K.ROUND - AT 9 DF 3&* Check^1?&* That's chess^1, not checkers!/%"@22507
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.i 231837
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_264_0"@22508
conv.s.v
push.s "Checkers"@7293
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 0
popaf.e
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 246
pop.v.v [array]self.flag
push.v self.checked
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_268_0"@22509
conv.s.v
push.s "* K.ROUND - AT 9 DF 3&* That's better./%"@22510
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[126]
pushi.e 1
pop.v.i self.checked
b [131]

:[127]
pushi.e -5
pushi.e 246
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [129]

:[128]
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_277_0"@22511
conv.s.v
push.s "* K.ROUND - AT 9 DF 3&* Watch out for its Flying King attack!/"@22512
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_278_0"@22513
conv.s.v
push.s "* (Also^1, you need to get the CROWN off of its head.)/%"@22514
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [130]

:[129]
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_282_0"@22515
conv.s.v
push.s "* K.ROUND - AT 9 DF 3&* It's being controlled into attacking...!/"@22516
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_283_0"@22517
conv.s.v
push.s "* (Though^1, wouldn't it just attack anyway...?)/%"@22518
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[130]
pushi.e 1
pop.v.i self.checked

:[131]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[132]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [134]

:[133]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [135]

:[134]
push.e 0

:[135]
bf [145]

:[136]
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
bf [138]

:[137]
push.v self.crown
pushi.e 15
add.i.v
pop.v.v self.crown

:[138]
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [140]

:[139]
push.v self.crown
pushi.e 18
add.i.v
pop.v.v self.crown

:[140]
push.s "obj_checkers_enemy_slash_Step_0_gml_296_0"@22519
conv.s.v
push.s "* You bowed to K. ROUND./%"@22520
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 372
pushenv [142]

:[141]
pushi.e 0
pop.v.i self.visible

:[142]
popenv [141]
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.faceaction
push.i 231563
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charaction
pushi.e 1410
conv.i.v
push.v 372.y
push.v 372.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.bowkris
push.v self.bowkris
pushi.e -9
pushenv [144]

:[143]
call.i gml_Script_scr_oflash(argc=0)
popz.v
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.a
pushi.e 5
push.v self.a
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.depth
pushi.e 1
add.i.v
push.v self.a
pushi.e -9
pop.v.v [stacktop]self.depth

:[144]
popenv [143]
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 20
pop.v.i self.actcon

:[145]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bf [147]

:[146]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [148]

:[147]
push.e 0

:[148]
bf [167]

:[149]
pushi.e 0
pop.v.i self.visible
push.v self.spr_checkers_bow
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.bowcheck
push.v self.bowcheck
pushi.e -9
pushenv [151]

:[150]
push.d 0.334
pop.v.d self.image_speed

:[151]
popenv [150]
pushi.e 0
pop.v.i global.fc
pushi.e 4
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_327_0"@22524
conv.s.v
push.s "* It bowed back^1.&* Its crown loosened a little./%"@22525
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.ralsei_lecture
pushi.e 0
cmp.i.v EQ
bf [153]

:[152]
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
b [154]

:[153]
push.e 0

:[154]
bf [156]

:[155]
push.s "obj_checkers_enemy_slash_Step_0_gml_330_0"@22526
conv.s.v
push.s "* It bowed back^1.&* Its crown loosened a little./"@22527
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_332_0"@22528
conv.s.v
push.s "* That's it^1, Kris^1! If we can get its crown off.../"@22529
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_333_0"@22530
conv.s.v
push.s "\\E8* It should turn back into a little guy...!/"@22531
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_334_0"@22532
conv.s.v
push.s "\\E0* Susie^1! Help us bow at it!/"@22533
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_336_0"@22534
conv.s.v
push.s "* Nah^1, it's crown'll come off.../"@22535
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_337_0"@22536
conv.s.v
push.s "\\E4* When I smash this guy into the GROUND!/"@22537
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_ralface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_339_0"@22538
conv.s.v
push.s "* .../%"@14954
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 1
pop.v.i self.ralsei_lecture

:[156]
push.v self.thrown
pushi.e 0
cmp.i.v EQ
bf [158]

:[157]
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
b [159]

:[158]
push.e 0

:[159]
bf [166]

:[160]
push.v self.bowcounter
pushi.e 0
cmp.i.v EQ
bf [162]

:[161]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
push.s "obj_checkers_enemy_slash_Step_0_gml_349_0"@22539
conv.s.v
push.s "* Huh!? That hardly did anything!/"@22540
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_350_0"@22541
conv.s.v
push.s "\\E1* How can we push off that CROWN...?/"@22542
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_352_0"@22543
conv.s.v
push.s "* ... Hmm./%"@22544
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[162]
push.v self.bowcounter
pushi.e 1
cmp.i.v EQ
bf [164]

:[163]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
push.s "obj_checkers_enemy_slash_Step_0_gml_359_0"@22545
conv.s.v
push.s "* It's still hardly working!/"@22546
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_360_0"@22547
conv.s.v
push.s "\\E6* Whatever can we do^1, Kris...?/"@22548
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_362_0"@22549
conv.s.v
push.s "* ... Hey./%"@22550
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[164]
push.v self.bowcounter
pushi.e 2
cmp.i.v EQ
bf [166]

:[165]
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
push.s "obj_checkers_enemy_slash_Step_0_gml_369_0"@22551
conv.s.v
push.s "* Sometimes persistence is key^1, Kris!!/"@22552
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_370_0"@22553
conv.s.v
push.s "\\E6* It'll be hard^1, but we can do it!!/"@22554
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_372_0"@22555
conv.s.v
push.s "* HEY YOU GUYS!!!/%"@22556
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[166]
push.v self.bowcounter
pushi.e 1
add.i.v
pop.v.v self.bowcounter
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e 21
pop.v.i self.actcon

:[167]
push.v self.actcon
pushi.e 21
cmp.i.v EQ
bf [169]

:[168]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [170]

:[169]
push.e 0

:[170]
bf [178]

:[171]
push.v self.bowkris
pushi.e -9
pushenv [173]

:[172]
call.i instance_destroy(argc=0)
popz.v

:[173]
popenv [172]
push.v self.bowcheck
pushi.e -9
pushenv [175]

:[174]
call.i instance_destroy(argc=0)
popz.v

:[175]
popenv [174]
pushi.e 1
pop.v.i self.visible
pushi.e 372
pushenv [177]

:[176]
pushi.e 1
pop.v.i self.visible

:[177]
popenv [176]
pushi.e 1
pop.v.i self.actcon

:[178]
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
bf [192]

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
bf [192]

:[183]
push.v self.crown
pushi.e 20
add.i.v
pop.v.v self.crown
push.s "obj_checkers_enemy_slash_Step_0_gml_398_0"@22557
conv.s.v
push.s "* You and Ralsei bowed./%"@22558
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 372
pushenv [185]

:[184]
pushi.e 0
pop.v.i self.visible

:[185]
popenv [184]
pushi.e 374
pushenv [187]

:[186]
pushi.e 0
pop.v.i self.visible

:[187]
popenv [186]
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.faceaction
push.i 231563
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charaction
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.faceaction
push.i 231563
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charaction
pushi.e 1410
conv.i.v
push.v 372.y
push.v 372.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.bowkris
push.v self.bowkris
pushi.e -9
pushenv [189]

:[188]
call.i gml_Script_scr_oflash(argc=0)
popz.v
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.a
pushi.e 5
push.v self.a
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.depth
pushi.e 1
add.i.v
push.v self.a
pushi.e -9
pop.v.v [stacktop]self.depth

:[189]
popenv [188]
pushi.e 1487
conv.i.v
push.v 374.y
push.v 374.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.bowral
push.v self.bowral
pushi.e -9
pushenv [191]

:[190]
call.i gml_Script_scr_oflash(argc=0)
popz.v
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.a
pushi.e 5
push.v self.a
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.depth
pushi.e 1
add.i.v
push.v self.a
pushi.e -9
pop.v.v [stacktop]self.depth

:[191]
popenv [190]
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 30
pop.v.i self.actcon

:[192]
push.v self.actcon
pushi.e 30
cmp.i.v EQ
bf [194]

:[193]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [195]

:[194]
push.e 0

:[195]
bf [204]

:[196]
pushi.e 0
pop.v.i self.visible
push.v self.spr_checkers_bow
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.bowcheck
push.v self.bowcheck
pushi.e -9
pushenv [198]

:[197]
push.d 0.5
pop.v.d self.image_speed

:[198]
popenv [197]
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_442_0"@22560
conv.s.v
push.s "* K. ROUND bowed back^1.&* Its crown loosened!/%"@22561
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.ralsei_lecture
pushi.e 0
cmp.i.v EQ
bf [200]

:[199]
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
b [201]

:[200]
push.e 0

:[201]
bf [203]

:[202]
push.s "obj_checkers_enemy_slash_Step_0_gml_445_0"@22562
conv.s.v
push.s "* K. ROUND bowed back^1.&* Its crown loosened!/"@22563
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_447_0"@22564
conv.s.v
push.s "* That's it^1, Kris^1! If we can get its crown off.../"@22529
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_448_0"@22565
conv.s.v
push.s "\\E8* It should turn back into a little guy...!/"@22531
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_449_0"@22566
conv.s.v
push.s "\\E0* Susie^1! Help us bow at it!/"@22533
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_451_0"@22567
conv.s.v
push.s "* Nah^1, its crown'll come off.../"@22568
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_452_0"@22569
conv.s.v
push.s "\\E4* When I smash this guy to the GROUND!/"@22570
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_ralface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_454_0"@22571
conv.s.v
push.s "* .../%"@14954
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 1
pop.v.i self.ralsei_lecture

:[203]
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 31
pop.v.i self.actcon

:[204]
push.v self.actcon
pushi.e 31
cmp.i.v EQ
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
bf [219]

:[208]
push.v self.bowral
pushi.e -9
pushenv [210]

:[209]
call.i instance_destroy(argc=0)
popz.v

:[210]
popenv [209]
push.v self.bowkris
pushi.e -9
pushenv [212]

:[211]
call.i instance_destroy(argc=0)
popz.v

:[212]
popenv [211]
push.v self.bowcheck
pushi.e -9
pushenv [214]

:[213]
call.i instance_destroy(argc=0)
popz.v

:[214]
popenv [213]
pushi.e 1
pop.v.i self.visible
pushi.e 374
pushenv [216]

:[215]
pushi.e 1
pop.v.i self.visible

:[216]
popenv [215]
pushi.e 372
pushenv [218]

:[217]
pushi.e 1
pop.v.i self.visible

:[218]
popenv [217]
pushi.e 1
pop.v.i self.actcon

:[219]
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [235]

:[220]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [222]

:[221]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [223]

:[222]
push.e 0

:[223]
bf [235]

:[224]
push.v self.thrown
pushi.e 1
cmp.i.v EQ
bf [228]

:[225]
push.v self.trsus
pushi.e -9
pushenv [227]

:[226]
call.i instance_destroy(argc=0)
popz.v

:[227]
popenv [226]
pushi.e 2
pop.v.i self.thrown

:[228]
push.v self.thrown
pushi.e 0
cmp.i.v GT
bf [234]

:[229]
push.i 231837
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_487_0"@22573
conv.s.v
push.s "Throw"@7547
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
push.v self.myself
conv.v.i
push.v [arraypopaf]self.actname
pushi.e 2
popaf.e
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_489_0"@22574
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* Press ~1 to determine the ANGLE!"@22575
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
pop.v.i self.flash
pushi.e 0
pop.v.i self.becomeflash
call.i gml_Script_scr_battletext_default(argc=0)
popz.v
pushi.e 90
pop.v.i self.actcon
pushi.e 401
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 403
conv.i.v
push.v 373.y
push.v 373.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.throwsus
pushi.e 0
pop.v.i self.visible
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.faceaction
push.i 231563
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charaction
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.faceaction
push.i 231563
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.charaction
pushi.e 373
pushenv [231]

:[230]
pushi.e 0
pop.v.i self.visible

:[231]
popenv [230]
pushi.e 374
pushenv [233]

:[232]
pushi.e 0
pop.v.i self.visible

:[233]
popenv [232]
pushi.e 61
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [235]

:[234]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.s "obj_checkers_enemy_slash_Step_0_gml_510_0"@22577
conv.s.v
push.s "* Susie^1? You want to ACT^1? Aww, what's your idea?/"@22578
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_512_0"@22579
conv.s.v
push.s "* Umm..^1. well..^1. how do I say this./"@22580
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_513_0"@22581
conv.s.v
push.s "* I kind of..^1.&* Need you for this one./"@22582
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_ralface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_515_0"@22583
conv.s.v
push.s "* That's fine^1, Susie^1!&* I'll help!/"@22584
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_516_0"@22585
conv.s.v
push.s "\\E0* You want to apologize to it for earlier^1, right?/"@22586
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_518_0"@22587
conv.s.v
push.s "* Nah^1, I just need you to stay still./%"@22588
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 10
pop.v.i self.actcon
call.i gml_Script_scr_battletext(argc=0)
popz.v

:[235]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [237]

:[236]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [238]

:[237]
push.e 0

:[238]
bf [244]

:[239]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_531_0"@22589
conv.s.v
push.s "* You explained to K. Round about the importance of dodging Susie's attacks./"@22590
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_532_0"@22591
conv.s.v
push.s "* But it didn't seem to understand.../%"@22592
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.warned
pushi.e 1
cmp.i.v EQ
bf [241]

:[240]
push.s "obj_checkers_enemy_slash_Step_0_gml_535_0"@22593
conv.s.v
push.s "* You started making siren noises with your mouth and looking at Susie./"@22594
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_536_0"@22595
conv.s.v
push.s "* K. Round still didn't understand.../%"@22596
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[241]
push.v self.warned
pushi.e 2
cmp.i.v EQ
bf [243]

:[242]
push.s "obj_checkers_enemy_slash_Step_0_gml_540_0"@22597
conv.s.v
push.s "* You started explaining that Susie is really dangerous and strong./"@22598
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_541_0"@22599
conv.s.v
push.s "* Susie got a large boost to her morale./"@22600
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_542_0"@22601
conv.s.v
push.s "* Susie's ATTACK went up massively...!/%"@22602
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.i 231955
setowner.e
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.battleat
push.d 1.5
mul.d.v
pop.i.v [array]self.battleat

:[243]
push.v self.warned
pushi.e 1
add.i.v
pop.v.v self.warned
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[244]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [246]

:[245]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [247]

:[246]
push.e 0

:[247]
bf [251]

:[248]
pushi.e 0
pop.v.i self.actcon
push.v self.crown
pushi.e 100
cmp.i.v GTE
bf [250]

:[249]
push.i 231526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
pushi.e 50
pop.v.i self.actcon
b [251]

:[250]
call.i gml_Script_scr_attackphase(argc=0)
popz.v

:[251]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [253]

:[252]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [254]

:[253]
push.e 0

:[254]
bf [260]

:[255]
pushi.e 11
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 373
pushenv [257]

:[256]
pushi.e 0
pop.v.i self.visible

:[257]
popenv [256]
pushi.e 374
pushenv [259]

:[258]
pushi.e 0
pop.v.i self.visible

:[259]
popenv [258]
pushi.e 1
pop.v.i self.thrown
pushi.e 1455
conv.i.v
push.v 373.y
push.v 373.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.trsus
pushi.e 61
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[260]
push.v self.actcon
pushi.e 12
cmp.i.v EQ
bf [262]

:[261]
pushi.e 7
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_578_0"@22603
conv.s.v
push.s "* Kris^1! We gotta get that CROWN off its head!/"@22604
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_579_0"@22605
conv.s.v
push.s "* Help me throw Ralsei at it!/%"@22606
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e 13
pop.v.i self.actcon

:[262]
push.v self.actcon
pushi.e 13
cmp.i.v EQ
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
bf [267]

:[266]
pushi.e 0
pop.v.i self.actcon

:[267]
push.v self.actcon
pushi.e 50
cmp.i.v EQ
bf [269]

:[268]
pushi.e 0
pop.v.i self.visible
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 400
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.animtest
push.v self.spr_smallchecker_transform3
push.v self.animtest
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 2
push.v self.animtest
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.animtest
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.animtest
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e 51
pop.v.i self.actcon

:[269]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[270]
pushi.e 15
pop.v.i self.hspeed

:[end]