.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.defeated
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [55]

:[4]
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
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [13]

:[8]
pushi.e 0
pop.v.i self.rtimer
pushi.e 15
conv.i.v
call.i gml_Script_scr_blconskip_ch1(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [13]

:[9]
pushi.e 1540
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [11]

:[10]
call.i gml_Script_scr_moveheart_ch1(argc=0)
popz.v

:[11]
pushi.e 1632
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [13]

:[12]
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

:[13]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [47]

:[17]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [46]

:[18]
pushi.e 180
pop.v.i global.turntimer
push.v self.attacktype
pushi.e 2
cmp.i.v EQ
bf [23]

:[19]
pushi.e 1562
conv.i.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dc
pushi.e 85
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
pushi.e 3
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.timepoints
pushi.e 5
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [23]

:[20]
push.v self.dc
pushi.e -9
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]

:[23]
push.v self.attacktype
pushi.e 1
cmp.i.v EQ
bf [28]

:[24]
pushi.e 1562
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dc
pushi.e 20
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
pushi.e 3
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.timepoints
pushi.e 3
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.grazepoints
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [28]

:[25]
push.v self.dc
pushi.e -9
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]

:[28]
push.v self.attacktype
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
push.v self.sleeping
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [35]

:[32]
pushi.e 1605
conv.i.v
push.v 1611.y
push.v 1611.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.bike
pushi.e 1611
pushenv [34]

:[33]
pushi.e 0
pop.v.i self.visible

:[34]
popenv [33]
push.v self.mytarget
push.v self.bike
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.bike
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 999
pop.v.i global.turntimer

:[35]
push.v self.attacktype
pushi.e 1
add.i.v
pop.v.v self.attacktype
push.v self.attacktype
pushi.e 3
cmp.i.v GTE
bf [37]

:[36]
pushi.e 0
pop.v.i self.attacktype

:[37]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
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
push.i 231921
setowner.e
push.s "obj_susieenemy_slash_Step_0_gml_79_0"@41311
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_susieenemy_slash_Step_0_gml_80_0"@41312
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[39]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [41]

:[40]
push.s "obj_susieenemy_slash_Step_0_gml_81_0"@41313
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[41]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [43]

:[42]
push.s "obj_susieenemy_slash_Step_0_gml_82_0"@41314
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[43]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_susieenemy_slash_Step_0_gml_83_0"@41315
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[45]
b [47]

:[46]
pushi.e 120
pop.v.i global.turntimer

:[47]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [55]

:[48]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [55]

:[49]
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.i 231526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[51]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [55]

:[52]
pushi.e 1517
pushenv [54]

:[53]
pushi.e 1
pop.v.i self.noreturn

:[54]
popenv [53]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[55]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[57]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [59]

:[58]
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
push.s "obj_susieenemy_slash_Step_0_gml_118_0"@41316
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

:[59]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [61]

:[60]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [62]

:[61]
push.e 0

:[62]
bf [66]

:[63]
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
pushenv [65]

:[64]
pushi.e 17
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[65]
popenv [64]

:[66]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [70]

:[67]
pushi.e 1517
pushenv [69]

:[68]
pushi.e 0
pop.v.i self.noreturn

:[69]
popenv [68]
call.i gml_Script_scr_monsterdefeat_ch1(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[70]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [130]

:[71]
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
pushi.e 1
pop.v.i self.actcon
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.itemdf
pushi.e 0
pushaf.e
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.itemdf
pushi.e 1
pushaf.e
add.v.v
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.itemdf
pushi.e 2
pushaf.e
add.v.v
pop.v.v self._armordf
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.itemat
pushi.e 0
pushaf.e
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.itemat
pushi.e 1
pushaf.e
add.v.v
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.itemat
pushi.e 2
pushaf.e
add.v.v
pop.v.v self._armorat
pushi.e -5
pushi.e 2
push.v [array]self.df
push.v self._armordf
add.v.v
call.i string(argc=1)
pop.v.v self.totaldf
pushi.e -5
pushi.e 2
push.v [array]self.at
push.v self._armorat
add.v.v
call.i string(argc=1)
pop.v.v self.totalat
pushi.e -5
pushi.e 2
push.v [array]self.maxhp
call.i string(argc=1)
pop.v.v self.totalhp
push.i 231251
setowner.e
push.v self.totalhp
push.v self.totaldf
push.v self.totalat
push.s "obj_susieenemy_slash_Step_0_gml_159_0"@41321
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=4)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self._armordf
pushi.e 0
cmp.i.v GT
bf [77]

:[76]
push.v self.totalhp
push.v self.totaldf
push.v self.totalat
push.s "obj_susieenemy_slash_Step_0_gml_162_0"@41322
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=4)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[77]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[78]
push.v self.acting
pushi.e 2
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
bf [93]

:[82]
push.s "obj_susieenemy_slash_Step_0_gml_170_0"@41323
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.anythingcounter
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
push.s "obj_susieenemy_slash_Step_0_gml_171_0"@41324
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[84]
push.v self.anythingcounter
pushi.e 2
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_susieenemy_slash_Step_0_gml_172_0"@41325
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[86]
push.v self.anythingcounter
pushi.e 3
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_susieenemy_slash_Step_0_gml_173_0"@41326
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[88]
push.v self.anythingcounter
pushi.e 4
cmp.i.v GTE
bf [90]

:[89]
push.s "obj_susieenemy_slash_Step_0_gml_174_0"@41327
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[90]
push.s "obj_susieenemy_slash_Step_0_gml_175_0"@41328
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.anythingcounter
pushi.e 1
cmp.i.v GTE
bf [92]

:[91]
push.s "obj_susieenemy_slash_Step_0_gml_176_0"@41329
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[92]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
push.v self.anythingcounter
pushi.e 1
add.i.v
pop.v.v self.anythingcounter
pushi.e 1
pop.v.i self.actcon

:[93]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [95]

:[94]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [111]

:[97]
pushi.e 1563
pushenv [99]

:[98]
pushi.e 3
pop.v.i self.susie_act

:[99]
popenv [98]
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i gml_Script_snd_pause_ch1(argc=1)
popz.v
push.v self.lullabied
pushi.e 0
cmp.i.v EQ
bf [103]

:[100]
pushi.e 394
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
pop.v.v self.singy
push.v self.object_index
pushi.e -9
pushenv [102]

:[101]
pushi.e 1
pop.v.i self.lullabied

:[102]
popenv [101]
b [106]

:[103]
pushi.e 395
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
pop.v.v self.singy
push.v self.object_index
pushi.e -9
pushenv [105]

:[104]
pushi.e 0
pop.v.i self.lullabied

:[105]
popenv [104]

:[106]
push.s "obj_susieenemy_slash_Step_0_gml_197_0"@41330
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1536
pushenv [108]

:[107]
pushi.e 0
pop.v.i self.visible

:[108]
popenv [107]
pushi.e 3853
conv.i.v
push.v 1536.y
push.v 1536.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.ralsing
push.v self.ralsing
pushi.e -9
pushenv [110]

:[109]
push.d 0.2
pop.v.d self.image_speed

:[110]
popenv [109]
pushi.e 0
pop.v.i self.lullatimer
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 10
pop.v.i self.actcon

:[111]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [114]

:[112]
push.v self.lullatimer
pushi.e 1
add.i.v
pop.v.v self.lullatimer
push.v self.lullatimer
pushi.e 30
cmp.i.v GTE
bf [114]

:[113]
pushi.e 11
pop.v.i self.actcon

:[114]
push.v self.actcon
pushi.e 11
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
bf [125]

:[118]
push.v self.ralsing
pushi.e -9
pushenv [120]

:[119]
call.i instance_destroy(argc=0)
popz.v

:[120]
popenv [119]
pushi.e 1536
pushenv [122]

:[121]
pushi.e 1
pop.v.i self.visible

:[122]
popenv [121]
push.v self.singy
call.i gml_Script_snd_stop_ch1(argc=1)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.batmusic
call.i gml_Script_snd_resume_ch1(argc=1)
popz.v
push.s "obj_susieenemy_slash_Step_0_gml_223_0"@41331
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.sleeping
pushi.e 1
cmp.i.v EQ
bf [124]

:[123]
push.s "obj_susieenemy_slash_Step_0_gml_224_0"@41332
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[124]
pushi.e 3979
pop.v.i self.idlesprite
pushi.e 0
pop.v.i self.sleepcounter
pushi.e 1
pop.v.i self.sleeping
push.i 231984
setowner.e
push.s "obj_susieenemy_slash_Step_0_gml_228_0"@41333
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstercomment
push.i 231746
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterstatus
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[125]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [127]

:[126]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [128]

:[127]
push.e 0

:[128]
bf [130]

:[129]
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v

:[130]
push.v self.pacifycon
pushi.e 0
cmp.i.v GT
bf [135]

:[131]
pushi.e 999
pop.v.i global.spelldelay
pushi.e 1629
pushenv [134]

:[132]
push.v self.spelltimer
pushi.e 30
cmp.i.v GT
bf [134]

:[133]
pushi.e 30
pop.v.i self.spelltimer

:[134]
popenv [132]

:[135]
push.v self.pacifycon
pushi.e 1
cmp.i.v EQ
bf [140]

:[136]
push.v 1629.spelltimer
pushi.e 15
cmp.i.v GTE
bf [140]

:[137]
pushi.e 0
pop.v.i self.pacifytimer
pushi.e 2
pop.v.i self.pacifycon
pushi.e 1611
pushenv [139]

:[138]
pushi.e 0
pop.v.i self.visible

:[139]
popenv [138]
pushi.e 3796
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 40
sub.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.temp_l
push.v self.depth
pushi.e 2
sub.i.v
push.v self.temp_l
pushi.e -9
pop.v.v [stacktop]self.depth

:[140]
push.v self.pacifycon
pushi.e 2
cmp.i.v EQ
bf [144]

:[141]
pushi.e 454
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.temp_l
pushi.e -9
pushenv [143]

:[142]
call.i gml_Script_scr_oflash_ch1(argc=0)
pop.v.v self.o
push.i 16711680
push.v self.o
pushi.e -9
pop.v.i [stacktop]self.flashcolor

:[143]
popenv [142]
pushi.e 3
pop.v.i self.pacifycon

:[144]
push.v self.pacifycon
pushi.e 3
cmp.i.v EQ
bf [160]

:[145]
push.v self.pacifytimer
pushi.e 1
add.i.v
pop.v.v self.pacifytimer
push.v self.pacifytimer
pushi.e 30
cmp.i.v GTE
bf [147]

:[146]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [148]

:[147]
push.e 0

:[148]
bf [160]

:[149]
push.v self.temp_l
pushi.e -9
pushenv [151]

:[150]
call.i instance_destroy(argc=0)
popz.v

:[151]
popenv [150]
pushi.e 1611
pushenv [153]

:[152]
pushi.e 1
pop.v.i self.visible

:[153]
popenv [152]
pushi.e 4
pop.v.i self.pacifycon
pushi.e 1563
pushenv [155]

:[154]
pushi.e 9
pop.v.i self.susie_act

:[155]
popenv [154]
push.i 231251
setowner.e
push.s "obj_susieenemy_slash_Step_0_gml_283_0"@41336
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_susieenemy_slash_Step_0_gml_285_0"@41337
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_susieenemy_slash_Step_0_gml_287_0"@41338
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.v self.tirespare
pushi.e 1
cmp.i.v EQ
bf [157]

:[156]
push.s "obj_susieenemy_slash_Step_0_gml_290_0"@41339
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_susieenemy_slash_Step_0_gml_291_0"@41340
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_susieenemy_slash_Step_0_gml_292_0"@41341
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_susieenemy_slash_Step_0_gml_293_0"@41342
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_susieenemy_slash_Step_0_gml_294_0"@41343
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[157]
push.v self.tirespare
pushi.e 2
cmp.i.v GTE
bf [159]

:[158]
push.s "obj_susieenemy_slash_Step_0_gml_298_0"@41344
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_susieenemy_slash_Step_0_gml_299_0"@41345
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[159]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 5
pop.v.i self.pacifycon
push.v self.tirespare
pushi.e 1
add.i.v
pop.v.v self.tirespare

:[160]
push.v self.pacifycon
pushi.e 5
cmp.i.v EQ
bf [162]

:[161]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [163]

:[162]
push.e 0

:[163]
bf [end]

:[164]
pushi.e 20
pop.v.i global.spelldelay
pushi.e 1629
pushenv [166]

:[165]
pushi.e 18
pop.v.i self.spelltimer

:[166]
popenv [165]
pushi.e 0
pop.v.i self.pacifycon

:[end]