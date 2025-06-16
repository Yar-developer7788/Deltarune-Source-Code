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
call.i gml_Script_scr_randomtarget_ch1(argc=0)
popz.v
pushi.e 1526
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [13]

:[12]
pushi.e 1526
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
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
pushi.e 1540
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [18]

:[17]
pushi.e 1634
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
call.i gml_Script_scr_moveheart_ch1(argc=0)
popz.v

:[21]
pushi.e 1632
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [23]

:[22]
pushi.e 1632
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
call.i gml_Script_instance_create_ch1(argc=3)
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
pushi.e 1587
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
pushi.e 1587
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
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
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
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
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
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
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[53]
push.v self.crown
pushi.e 0
cmp.i.v GT
bf [55]

:[54]
push.v self.crown
call.i string(argc=1)
push.s "obj_checkers_enemy_slash_Step_0_gml_82_0"@22490
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
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
pushi.e 1517
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
pushi.e 1331
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
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
push.d 1.5
pop.v.d self.scon

:[71]
push.v self.scon
push.d 1.5
cmp.d.v EQ
bf [73]

:[72]
pushi.e 1331
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
pushi.e 414
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1331
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
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 999
pop.v.i global.turntimer
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 3907
conv.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.x
pushi.e 100
sub.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
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
pushi.e 431
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
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
pushi.e 1633
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create_ch1(argc=3)
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
pushi.e 1622
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
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
pushi.e 1331
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
pushi.e 1331
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
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_228_0"@22502
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_230_0"@22504
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
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
bf [119]

:[116]
pushi.e 1331
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
b [119]

:[118]
pushi.e 999
pop.v.i global.turntimer

:[119]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [270]

:[120]
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
bf [122]

:[121]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [123]

:[122]
push.e 0

:[123]
bf [133]

:[124]
pushi.e 1
pop.v.i self.actcon
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
bf [128]

:[125]
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_263_0"@22506
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.i 231837
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_264_0"@22508
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
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
bf [127]

:[126]
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_268_0"@22509
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[127]
pushi.e 1
pop.v.i self.checked
b [132]

:[128]
pushi.e -5
pushi.e 246
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_277_0"@22511
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_278_0"@22513
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [131]

:[130]
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_282_0"@22515
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_283_0"@22517
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[131]
pushi.e 1
pop.v.i self.checked

:[132]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[133]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [135]

:[134]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [136]

:[135]
push.e 0

:[136]
bf [146]

:[137]
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
bf [139]

:[138]
push.v self.crown
pushi.e 15
add.i.v
pop.v.v self.crown

:[139]
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [141]

:[140]
push.v self.crown
pushi.e 18
add.i.v
pop.v.v self.crown

:[141]
push.s "obj_checkers_enemy_slash_Step_0_gml_296_0"@22519
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1534
pushenv [143]

:[142]
pushi.e 0
pop.v.i self.visible

:[143]
popenv [142]
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
pushi.e 3816
conv.i.v
push.v 1534.y
push.v 1534.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.bowkris
push.v self.bowkris
pushi.e -9
pushenv [145]

:[144]
call.i gml_Script_scr_oflash_ch1(argc=0)
popz.v
call.i gml_Script_scr_afterimage_ch1(argc=0)
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

:[145]
popenv [144]
pushi.e 441
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 20
pop.v.i self.actcon

:[146]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bf [148]

:[147]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [149]

:[148]
push.e 0

:[149]
bf [168]

:[150]
pushi.e 0
pop.v.i self.visible
pushi.e 3919
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.bowcheck
push.v self.bowcheck
pushi.e -9
pushenv [152]

:[151]
push.d 0.334
pop.v.d self.image_speed

:[152]
popenv [151]
pushi.e 0
pop.v.i global.fc
pushi.e 4
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_327_0"@22524
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.ralsei_lecture
pushi.e 0
cmp.i.v EQ
bf [154]

:[153]
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
b [155]

:[154]
push.e 0

:[155]
bf [157]

:[156]
push.s "obj_checkers_enemy_slash_Step_0_gml_330_0"@22526
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_332_0"@22528
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_333_0"@22530
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_334_0"@22532
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_336_0"@22534
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_337_0"@22536
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_339_0"@22538
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 1
pop.v.i self.ralsei_lecture

:[157]
push.v self.thrown
pushi.e 0
cmp.i.v EQ
bf [159]

:[158]
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
b [160]

:[159]
push.e 0

:[160]
bf [167]

:[161]
push.v self.bowcounter
pushi.e 0
cmp.i.v EQ
bf [163]

:[162]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
push.s "obj_checkers_enemy_slash_Step_0_gml_349_0"@22539
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_350_0"@22541
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_352_0"@22543
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[163]
push.v self.bowcounter
pushi.e 1
cmp.i.v EQ
bf [165]

:[164]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
push.s "obj_checkers_enemy_slash_Step_0_gml_359_0"@22545
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_360_0"@22547
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_362_0"@22549
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[165]
push.v self.bowcounter
pushi.e 2
cmp.i.v EQ
bf [167]

:[166]
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
push.s "obj_checkers_enemy_slash_Step_0_gml_369_0"@22551
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_370_0"@22553
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_372_0"@22555
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[167]
push.v self.bowcounter
pushi.e 1
add.i.v
pop.v.v self.bowcounter
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v
pushi.e 21
pop.v.i self.actcon

:[168]
push.v self.actcon
pushi.e 21
cmp.i.v EQ
bf [170]

:[169]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [171]

:[170]
push.e 0

:[171]
bf [179]

:[172]
push.v self.bowkris
pushi.e -9
pushenv [174]

:[173]
call.i instance_destroy(argc=0)
popz.v

:[174]
popenv [173]
push.v self.bowcheck
pushi.e -9
pushenv [176]

:[175]
call.i instance_destroy(argc=0)
popz.v

:[176]
popenv [175]
pushi.e 1
pop.v.i self.visible
pushi.e 1534
pushenv [178]

:[177]
pushi.e 1
pop.v.i self.visible

:[178]
popenv [177]
pushi.e 1
pop.v.i self.actcon

:[179]
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
bf [193]

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
bf [193]

:[184]
push.v self.crown
pushi.e 20
add.i.v
pop.v.v self.crown
push.s "obj_checkers_enemy_slash_Step_0_gml_398_0"@22557
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1534
pushenv [186]

:[185]
pushi.e 0
pop.v.i self.visible

:[186]
popenv [185]
pushi.e 1536
pushenv [188]

:[187]
pushi.e 0
pop.v.i self.visible

:[188]
popenv [187]
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
pushi.e 3816
conv.i.v
push.v 1534.y
push.v 1534.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.bowkris
push.v self.bowkris
pushi.e -9
pushenv [190]

:[189]
call.i gml_Script_scr_oflash_ch1(argc=0)
popz.v
call.i gml_Script_scr_afterimage_ch1(argc=0)
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

:[190]
popenv [189]
pushi.e 3856
conv.i.v
push.v 1536.y
push.v 1536.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.bowral
push.v self.bowral
pushi.e -9
pushenv [192]

:[191]
call.i gml_Script_scr_oflash_ch1(argc=0)
popz.v
call.i gml_Script_scr_afterimage_ch1(argc=0)
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

:[192]
popenv [191]
pushi.e 441
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 30
pop.v.i self.actcon

:[193]
push.v self.actcon
pushi.e 30
cmp.i.v EQ
bf [195]

:[194]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [196]

:[195]
push.e 0

:[196]
bf [205]

:[197]
pushi.e 0
pop.v.i self.visible
pushi.e 3919
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.bowcheck
push.v self.bowcheck
pushi.e -9
pushenv [199]

:[198]
push.d 0.5
pop.v.d self.image_speed

:[199]
popenv [198]
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_442_0"@22560
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.ralsei_lecture
pushi.e 0
cmp.i.v EQ
bf [201]

:[200]
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
b [202]

:[201]
push.e 0

:[202]
bf [204]

:[203]
push.s "obj_checkers_enemy_slash_Step_0_gml_445_0"@22562
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_447_0"@22564
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_448_0"@22565
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_449_0"@22566
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_451_0"@22567
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_452_0"@22569
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_454_0"@22571
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 1
pop.v.i self.ralsei_lecture

:[204]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 31
pop.v.i self.actcon

:[205]
push.v self.actcon
pushi.e 31
cmp.i.v EQ
bf [207]

:[206]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [208]

:[207]
push.e 0

:[208]
bf [220]

:[209]
push.v self.bowral
pushi.e -9
pushenv [211]

:[210]
call.i instance_destroy(argc=0)
popz.v

:[211]
popenv [210]
push.v self.bowkris
pushi.e -9
pushenv [213]

:[212]
call.i instance_destroy(argc=0)
popz.v

:[213]
popenv [212]
push.v self.bowcheck
pushi.e -9
pushenv [215]

:[214]
call.i instance_destroy(argc=0)
popz.v

:[215]
popenv [214]
pushi.e 1
pop.v.i self.visible
pushi.e 1536
pushenv [217]

:[216]
pushi.e 1
pop.v.i self.visible

:[217]
popenv [216]
pushi.e 1534
pushenv [219]

:[218]
pushi.e 1
pop.v.i self.visible

:[219]
popenv [218]
pushi.e 1
pop.v.i self.actcon

:[220]
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [236]

:[221]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [223]

:[222]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [224]

:[223]
push.e 0

:[224]
bf [236]

:[225]
push.v self.thrown
pushi.e 1
cmp.i.v EQ
bf [229]

:[226]
push.v self.trsus
pushi.e -9
pushenv [228]

:[227]
call.i instance_destroy(argc=0)
popz.v

:[228]
popenv [227]
pushi.e 2
pop.v.i self.thrown

:[229]
push.v self.thrown
pushi.e 0
cmp.i.v GT
bf [235]

:[230]
push.i 231837
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_487_0"@22573
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
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
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e 6
conv.i.v
call.i gml_Script_scr_get_input_name_ch1(argc=1)
add.v.v
push.s "obj_checkers_enemy_slash_Step_0_gml_489_1"@41039
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
add.v.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
pop.v.i self.flash
pushi.e 0
pop.v.i self.becomeflash
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 90
pop.v.i self.actcon
pushi.e 1584
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 1586
conv.i.v
push.v 1535.y
push.v 1535.x
call.i gml_Script_instance_create_ch1(argc=3)
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
pushi.e 1535
pushenv [232]

:[231]
pushi.e 0
pop.v.i self.visible

:[232]
popenv [231]
pushi.e 1536
pushenv [234]

:[233]
pushi.e 0
pop.v.i self.visible

:[234]
popenv [233]
pushi.e 378
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
b [236]

:[235]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.s "obj_checkers_enemy_slash_Step_0_gml_510_0"@22577
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_512_0"@22579
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_513_0"@22581
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_515_0"@22583
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_516_0"@22585
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_checkers_enemy_slash_Step_0_gml_518_0"@22587
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 10
pop.v.i self.actcon
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v

:[236]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [238]

:[237]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [239]

:[238]
push.e 0

:[239]
bf [245]

:[240]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_531_0"@22589
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_532_0"@22591
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.warned
pushi.e 1
cmp.i.v EQ
bf [242]

:[241]
push.s "obj_checkers_enemy_slash_Step_0_gml_535_0"@22593
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_536_0"@22595
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[242]
push.v self.warned
pushi.e 2
cmp.i.v EQ
bf [244]

:[243]
push.s "obj_checkers_enemy_slash_Step_0_gml_540_0"@22597
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_541_0"@22599
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_542_0"@22601
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
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

:[244]
push.v self.warned
pushi.e 1
add.i.v
pop.v.v self.warned
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[245]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [247]

:[246]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [248]

:[247]
push.e 0

:[248]
bf [252]

:[249]
pushi.e 0
pop.v.i self.actcon
push.v self.crown
pushi.e 100
cmp.i.v GTE
bf [251]

:[250]
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
b [252]

:[251]
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v

:[252]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [254]

:[253]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [255]

:[254]
push.e 0

:[255]
bf [261]

:[256]
pushi.e 11
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1535
pushenv [258]

:[257]
pushi.e 0
pop.v.i self.visible

:[258]
popenv [257]
pushi.e 1536
pushenv [260]

:[259]
pushi.e 0
pop.v.i self.visible

:[260]
popenv [259]
pushi.e 1
pop.v.i self.thrown
pushi.e 3850
conv.i.v
push.v 1535.y
push.v 1535.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.trsus
pushi.e 378
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[261]
push.v self.actcon
pushi.e 12
cmp.i.v EQ
bf [263]

:[262]
pushi.e 7
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_checkers_enemy_slash_Step_0_gml_578_0"@22603
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checkers_enemy_slash_Step_0_gml_579_0"@22605
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v
pushi.e 13
pop.v.i self.actcon

:[263]
push.v self.actcon
pushi.e 13
cmp.i.v EQ
bf [265]

:[264]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [266]

:[265]
push.e 0

:[266]
bf [268]

:[267]
pushi.e 0
pop.v.i self.actcon

:[268]
push.v self.actcon
pushi.e 50
cmp.i.v EQ
bf [270]

:[269]
pushi.e 0
pop.v.i self.visible
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1583
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.animtest
pushi.e 3914
push.v self.animtest
pushi.e -9
pop.v.i [stacktop]self.sprite_index
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

:[270]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[271]
pushi.e 15
pop.v.i self.hspeed

:[end]