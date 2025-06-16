.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [74]

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
bf [12]

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
pushi.e 1555
conv.i.v
push.v self.y
push.v self.x
pushi.e 100
sub.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.hb
pushi.e 3891
conv.i.v
pushi.e 3890
conv.i.v
call.i choose(argc=2)
push.v self.hb
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 3892
push.v self.hb
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[9]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e 3893
push.v self.hb
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[11]
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[12]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [30]

:[16]
pushi.e 0
pop.v.i self.rtimer
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [18]

:[17]
push.v self.talktimer
pushi.e 15
cmp.i.v GT
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.v self.talkmax
pop.v.v self.talktimer

:[21]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
push.v self.talkmax
cmp.v.v GTE
bf [25]

:[22]
pushi.e 1555
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]
pushi.e 2
pop.v.i global.mnfight

:[25]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [30]

:[26]
pushi.e 1540
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [28]

:[27]
call.i gml_Script_scr_moveheart_ch1(argc=0)
popz.v

:[28]
pushi.e 1632
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [30]

:[29]
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

:[30]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [32]

:[31]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [59]

:[34]
pushi.e 1555
pushenv [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [35]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [58]

:[37]
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pop.v.v self.rr
pushi.e 140
pop.v.i global.turntimer
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
pushi.e 1561
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
b [41]

:[39]
pushi.e 1560
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
pushglb.v global.encounterno
pushi.e 9
cmp.i.v EQ
bf [41]

:[40]
pushi.e 100
pop.v.i global.turntimer

:[41]
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
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
push.i 231921
setowner.e
push.s "obj_heartenemy_slash_Step_0_gml_79_0"@41719
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[43]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [45]

:[44]
push.s "obj_heartenemy_slash_Step_0_gml_80_0"@41720
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[45]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_heartenemy_slash_Step_0_gml_81_0"@41721
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[47]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [49]

:[48]
push.s "obj_heartenemy_slash_Step_0_gml_82_0"@41722
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[49]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [51]

:[50]
push.s "obj_heartenemy_slash_Step_0_gml_83_0"@41723
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[51]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_heartenemy_slash_Step_0_gml_84_0"@41724
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[53]
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
bf [55]

:[54]
push.s "obj_heartenemy_slash_Step_0_gml_85_0"@41725
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[55]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [57]

:[56]
push.i 231251
setowner.e
push.s "obj_heartenemy_slash_Step_0_gml_86_0"@41726
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[57]
b [59]

:[58]
pushi.e 120
pop.v.i global.turntimer

:[59]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [74]

:[60]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [74]

:[61]
pushi.e 1380
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [63]

:[62]
push.v self.firstturn
pushi.e 0
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [72]

:[65]
push.v self.checkhp1
pushi.e -5
pushi.e 1
push.v [array]self.hp
cmp.v.v LTE
bf [72]

:[66]
push.v self.checkhp2
pushi.e -5
pushi.e 2
push.v [array]self.hp
cmp.v.v LTE
bf [72]

:[67]
pushi.e 1517
pushenv [69]

:[68]
pushi.e 1
pop.v.i self.noreturn

:[69]
popenv [68]
pushi.e 1380
pushenv [71]

:[70]
pushi.e 15
pop.v.i self.con

:[71]
popenv [70]

:[72]
pushi.e 1
pop.v.i self.firstturn
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
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [132]

:[75]
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
bf [77]

:[76]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [78]

:[77]
push.e 0

:[78]
bf [80]

:[79]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_heartenemy_slash_Step_0_gml_127_0"@41727
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[80]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [82]

:[81]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [89]

:[84]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.rr
push.s "obj_heartenemy_slash_Step_0_gml_136_0"@41728
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_heartenemy_slash_Step_0_gml_137_0"@41729
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[86]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [88]

:[87]
push.s "obj_heartenemy_slash_Step_0_gml_138_0"@41730
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[88]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.battlecancel
pushi.e 1
pop.v.i self.actcon

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
bf [98]

:[93]
push.s "obj_heartenemy_slash_Step_0_gml_147_0"@41731
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
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.rr
push.s "obj_heartenemy_slash_Step_0_gml_150_0"@41732
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
push.s "obj_heartenemy_slash_Step_0_gml_151_0"@41733
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
push.s "obj_heartenemy_slash_Step_0_gml_152_0"@41734
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[97]
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v
pushi.e 100
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v
pushi.e 100
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v
pushi.e 1
pop.v.i self.actcon
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[98]
push.v self.acting
pushi.e 4
cmp.i.v EQ
bf [100]

:[99]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [115]

:[102]
pushi.e 1
pop.v.i self.actcon
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
bf [109]

:[103]
push.s "obj_heartenemy_slash_Step_0_gml_168_0"@41735
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
push.s "obj_heartenemy_slash_Step_0_gml_170_0"@41736
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
push.s "obj_heartenemy_slash_Step_0_gml_173_0"@41737
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
b [114]

:[109]
push.s "obj_heartenemy_slash_Step_0_gml_179_0"@41738
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.rr
push.s "obj_heartenemy_slash_Step_0_gml_182_0"@41739
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_heartenemy_slash_Step_0_gml_183_0"@41740
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [111]

:[110]
push.s "obj_heartenemy_slash_Step_0_gml_184_0"@41741
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[111]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [113]

:[112]
push.s "obj_heartenemy_slash_Step_0_gml_185_0"@41742
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[113]
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v
pushi.e 100
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v
pushi.e 100
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v

:[114]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[115]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [117]

:[116]
pushi.e 1331
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
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v

:[120]
push.v self.actcon
pushi.e 5
cmp.i.v EQ
bf [122]

:[121]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [123]

:[122]
push.e 0

:[123]
bf [128]

:[124]
push.i 231955
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.battleat
pushi.e 90
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.battleat
pushi.e 6
pop.v.i self.actcon
pushi.e 1535
pushenv [127]

:[125]
pushi.e 0
pop.v.i self.attacktimer
pushi.e 1
pop.v.i self.state
pushi.e 100
pushi.e 40
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.i
pop.v.v self.points
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction
pushi.e -5
pushi.e 0
push.v [array]self.automiss
pushi.e 1
cmp.i.v EQ
bf [127]

:[126]
pushi.e 0
pop.v.i self.points

:[127]
popenv [125]
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[128]
push.v self.actcon
pushi.e 7
cmp.i.v EQ
bf [132]

:[129]
push.i 231251
setowner.e
push.s "obj_heartenemy_slash_Step_0_gml_223_0"@41743
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
push.s "obj_heartenemy_slash_Step_0_gml_225_0"@41744
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e -5
pushi.e 0
push.v [array]self.automiss
pushi.e 1
cmp.i.v EQ
bf [131]

:[130]
push.s "obj_heartenemy_slash_Step_0_gml_228_0"@41745
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
push.s "obj_heartenemy_slash_Step_0_gml_230_0"@41746
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_heartenemy_slash_Step_0_gml_231_0"@41747
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[131]
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[132]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[133]
pushi.e 15
pop.v.i self.hspeed

:[end]