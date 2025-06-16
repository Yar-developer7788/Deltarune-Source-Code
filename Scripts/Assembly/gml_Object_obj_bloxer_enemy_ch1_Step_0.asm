.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [78]

:[1]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [29]

:[5]
call.i gml_Script_scr_randomtarget_ch1(argc=0)
popz.v
pushi.e 1526
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
pushi.e 1526
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[7]
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
bf [9]

:[8]
push.i 231251
setowner.e
push.s "obj_bloxer_enemy_slash_Step_0_gml_11_0"@41169
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[9]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_bloxer_enemy_slash_Step_0_gml_12_0"@41170
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[11]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_bloxer_enemy_slash_Step_0_gml_13_0"@41171
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[13]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_bloxer_enemy_slash_Step_0_gml_14_0"@41172
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[15]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [26]

:[16]
push.s "obj_bloxer_enemy_slash_Step_0_gml_18_0"@41173
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -1
pushi.e 2
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_bloxer_enemy_slash_Step_0_gml_19_0"@41174
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[18]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 3
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_bloxer_enemy_slash_Step_0_gml_20_0"@41175
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[20]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_bloxer_enemy_slash_Step_0_gml_21_0"@41176
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[22]
pushi.e -1
pushi.e 1
push.v [array]self.part
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_bloxer_enemy_slash_Step_0_gml_22_0"@41177
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[24]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [26]

:[25]
push.s "obj_bloxer_enemy_slash_Step_0_gml_24_0"@41178
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[26]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [28]

:[27]
push.s "obj_bloxer_enemy_slash_Step_0_gml_29_0"@41179
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[28]
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_enemyblcon_ch1(argc=3)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[29]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [38]

:[33]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i gml_Script_scr_blconskip_ch1(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [38]

:[34]
pushi.e 1540
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [36]

:[35]
call.i gml_Script_scr_moveheart_ch1(argc=0)
popz.v

:[36]
pushi.e 1632
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [38]

:[37]
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

:[38]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [70]

:[42]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [69]

:[43]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
pushi.e 1
pop.v.i self.biglegoqual
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pushi.e 2
cmp.i.v GTE
bf [45]

:[44]
push.v self.myself
pushi.e 1
cmp.i.v GTE
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 0
pop.v.i self.biglegoqual

:[48]
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
push.v self.biglegoqual
pushi.e 1
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 1562
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dc
pushi.e 26
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
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
pushi.e 5
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.grazepoints
pushi.e 2
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.timepoints
b [54]

:[53]
pushi.e 1562
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dc
pushi.e 27
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
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
pushi.e 5
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.grazepoints

:[54]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 170
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.attacked
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
bf [56]

:[55]
push.i 231921
setowner.e
push.s "obj_bloxer_enemy_slash_Step_0_gml_86_0"@41181
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[56]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_bloxer_enemy_slash_Step_0_gml_87_0"@41182
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[58]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [60]

:[59]
push.s "obj_bloxer_enemy_slash_Step_0_gml_88_0"@41183
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[60]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [62]

:[61]
push.s "obj_bloxer_enemy_slash_Step_0_gml_89_0"@41184
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[62]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [64]

:[63]
push.s "obj_bloxer_enemy_slash_Step_0_gml_90_0"@41185
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[64]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
push.s "obj_bloxer_enemy_slash_Step_0_gml_92_0"@41186
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[66]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [68]

:[67]
push.s "obj_bloxer_enemy_slash_Step_0_gml_93_0"@41187
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[68]
b [70]

:[69]
pushi.e 120
pop.v.i global.turntimer

:[70]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [78]

:[71]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [78]

:[72]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.i 231526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[74]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [78]

:[75]
pushi.e 1517
pushenv [77]

:[76]
pushi.e 1
pop.v.i self.noreturn

:[77]
popenv [76]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[78]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [116]

:[79]
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
bf [81]

:[80]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_bloxer_enemy_slash_Step_0_gml_127_0"@41188
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[84]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [86]

:[85]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
push.s "obj_bloxer_enemy_slash_Step_0_gml_135_0"@41189
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e 6
conv.i.v
call.i gml_Script_scr_get_input_name_ch1(argc=1)
add.v.v
push.s "obj_bloxer_enemy_slash_Step_0_gml_135_1"@41190
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
add.v.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.i 231526
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 10
pop.v.i self.actcon
pushi.e 1
pop.v.i self.swaptime
pushi.e 0
pop.v.i self.floatsin
pushi.e 0
pop.v.i self.swapx
pushi.e 0
pop.v.i self.sinmomentum
push.i 165821
setowner.e
pushi.e 28
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.party
pushi.e 54
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.party
pushi.e 70
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.party
push.i 175720
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.select
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.select
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.select
pushi.e 0
pop.v.i self.selecttotal
push.i 166556
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.movex
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.movex
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.movex
pushi.e 0
pop.v.i self.finishtimer

:[89]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [91]

:[90]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [92]

:[91]
push.e 0

:[92]
bf [101]

:[93]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_bloxer_enemy_slash_Step_0_gml_162_0"@41191
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.rr
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_bloxer_enemy_slash_Step_0_gml_165_0"@41192
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
push.s "obj_bloxer_enemy_slash_Step_0_gml_166_0"@41193
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[95]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [97]

:[96]
push.s "obj_bloxer_enemy_slash_Step_0_gml_167_0"@41194
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[97]
push.s "obj_bloxer_enemy_slash_Step_0_gml_168_0"@41195
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 0
pop.v.i self.i

:[98]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [100]

:[99]
push.i 231984
setowner.e
push.s "obj_bloxer_enemy_slash_Step_0_gml_171_0"@41196
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstercomment
push.i 231746
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterstatus
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [98]

:[100]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[101]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [103]

:[102]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v

:[106]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [108]

:[107]
push.v self.swaptime
pushi.e 0
cmp.i.v EQ
b [109]

:[108]
push.e 0

:[109]
bf [116]

:[110]
pushi.e 1331
pushenv [112]

:[111]
call.i instance_destroy(argc=0)
popz.v

:[112]
popenv [111]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [114]

:[113]
push.i 231251
setowner.e
push.s "obj_bloxer_enemy_slash_Step_0_gml_193_0"@41197
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
pop.v.i self.fixed
b [115]

:[114]
push.i 231251
setowner.e
push.s "obj_bloxer_enemy_slash_Step_0_gml_194_0"@41198
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[115]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[116]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[117]
pushi.e 15
pop.v.i self.hspeed

:[end]