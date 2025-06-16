.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [63]

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
bf [20]

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
push.s "obj_diamondenemy_slash_Step_0_gml_11_0"@41272
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
push.s "obj_diamondenemy_slash_Step_0_gml_12_0"@41273
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
push.s "obj_diamondenemy_slash_Step_0_gml_13_0"@41274
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
push.s "obj_diamondenemy_slash_Step_0_gml_14_0"@41275
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[15]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_diamondenemy_slash_Step_0_gml_24_0"@41276
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[17]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
push.s "obj_diamondenemy_slash_Step_0_gml_28_0"@41277
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[19]
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

:[20]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [29]

:[24]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i gml_Script_scr_blconskip_ch1(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [29]

:[25]
pushi.e 1540
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [27]

:[26]
call.i gml_Script_scr_moveheart_ch1(argc=0)
popz.v

:[27]
pushi.e 1632
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [29]

:[28]
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

:[29]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [31]

:[30]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [55]

:[33]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [54]

:[34]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1562
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dc
pushi.e 0
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
b [37]

:[36]
pushi.e 1562
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dc
pushi.e 1
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

:[37]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 140
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
bf [39]

:[38]
push.i 231921
setowner.e
push.s "obj_diamondenemy_slash_Step_0_gml_77_0"@41278
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[39]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
push.s "obj_diamondenemy_slash_Step_0_gml_78_0"@41279
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[41]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [43]

:[42]
push.s "obj_diamondenemy_slash_Step_0_gml_79_0"@41280
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[43]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_diamondenemy_slash_Step_0_gml_80_0"@41281
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[45]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_diamondenemy_slash_Step_0_gml_81_0"@41282
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[47]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
push.s "obj_diamondenemy_slash_Step_0_gml_82_0"@41283
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[49]
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
bf [51]

:[50]
push.s "obj_diamondenemy_slash_Step_0_gml_83_0"@41284
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

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
push.i 231251
setowner.e
push.s "obj_diamondenemy_slash_Step_0_gml_84_0"@41285
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[53]
b [55]

:[54]
pushi.e 120
pop.v.i global.turntimer

:[55]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [63]

:[56]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [63]

:[57]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
push.i 231526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[59]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [63]

:[60]
pushi.e 1517
pushenv [62]

:[61]
pushi.e 1
pop.v.i self.noreturn

:[62]
popenv [61]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[63]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[65]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [67]

:[66]
pushi.e 50
pop.v.i global.typer
push.i 231526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod
push.i 231251
setowner.e
push.s "obj_diamondenemy_slash_Step_0_gml_118_0"@41286
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_enemyblcon_ch1(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[67]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [69]

:[68]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [70]

:[69]
push.e 0

:[70]
bf [74]

:[71]
pushi.e 15
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1517
pushenv [73]

:[72]
pushi.e 17
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[73]
popenv [72]

:[74]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [78]

:[75]
pushi.e 1517
pushenv [77]

:[76]
pushi.e 0
pop.v.i self.noreturn

:[77]
popenv [76]
call.i gml_Script_scr_monsterdefeat_ch1(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[78]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [134]

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
push.s "obj_diamondenemy_slash_Step_0_gml_154_0"@41287
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
bf [91]

:[88]
push.v self.nexttry
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 208
pop.v.v [array]self.flag

:[90]
push.i 231251
setowner.e
push.s "obj_diamondenemy_slash_Step_0_gml_163_0"@41288
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[91]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [93]

:[92]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [99]

:[95]
push.s "obj_diamondenemy_slash_Step_0_gml_173_0"@41289
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_diamondenemy_slash_Step_0_gml_174_0"@41290
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 0
pop.v.i self.i

:[96]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [98]

:[97]
push.i 231984
setowner.e
push.s "obj_diamondenemy_slash_Step_0_gml_177_0"@41291
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
b [96]

:[98]
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[99]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [101]

:[100]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [102]

:[101]
push.e 0

:[102]
bf [109]

:[103]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_diamondenemy_slash_Step_0_gml_188_0"@41292
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pushi.e 1
cmp.i.v GT
bf [105]

:[104]
push.s "obj_diamondenemy_slash_Step_0_gml_190_0"@41293
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[105]
pushi.e 0
pop.v.i self.i

:[106]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [108]

:[107]
push.i 231984
setowner.e
push.s "obj_diamondenemy_slash_Step_0_gml_193_0"@41294
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monstercomment
push.i 231956
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.automiss
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [106]

:[108]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[109]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [111]

:[110]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v

:[114]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [116]

:[115]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
pushi.e 50
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_diamondenemy_slash_Step_0_gml_215_0"@41295
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_enemyblcon_ch1(argc=3)
popz.v
pushi.e 11
pop.v.i self.actcon

:[119]
push.v self.actcon
pushi.e 11
cmp.i.v EQ
bf [121]

:[120]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [122]

:[121]
push.e 0

:[122]
bf [124]

:[123]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
push.s "obj_diamondenemy_slash_Step_0_gml_225_0"@41296
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v
pushi.e 12
pop.v.i self.actcon

:[124]
push.v self.actcon
pushi.e 12
cmp.i.v EQ
bf [126]

:[125]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [127]

:[126]
push.e 0

:[127]
bf [129]

:[128]
pushi.e 50
pop.v.i global.typer
push.s "obj_diamondenemy_slash_Step_0_gml_233_0"@41297
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_diamondenemy_slash_Step_0_gml_234_0"@41298
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_enemyblcon_ch1(argc=3)
popz.v
pushi.e 14
pop.v.i self.actcon

:[129]
push.v self.actcon
pushi.e 14
cmp.i.v EQ
bf [131]

:[130]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [132]

:[131]
push.e 0

:[132]
bf [134]

:[133]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.s "obj_diamondenemy_slash_Step_0_gml_244_0"@41299
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.nexttry
pushi.e 1
pop.v.i self.actcon

:[134]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[135]
pushi.e 15
pop.v.i self.hspeed

:[end]