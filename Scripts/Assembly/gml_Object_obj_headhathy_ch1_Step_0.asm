.localvar 2 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [79]

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
pushi.e 4000
conv.i.v
pushi.e 3999
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
bf [64]

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
bf [63]

:[37]
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pop.v.v self.rr
pushi.e 180
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
pushi.e 1
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.joker
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
b [46]

:[39]
pushi.e 1562
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dc
pushi.e 33
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.d 1.3
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 10
conv.i.d
div.d.v
sub.v.d
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.ratio
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
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v GT
bf [41]

:[40]
pushi.e 1562
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v GT
b [42]

:[41]
push.e 0

:[42]
bf [46]

:[43]
push.v self.dc
pushi.e -9
pushenv [45]

:[44]
call.i instance_destroy(argc=0)
popz.v

:[45]
popenv [44]

:[46]
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
bf [48]

:[47]
push.i 231921
setowner.e
push.s "obj_headhathy_slash_Step_0_gml_87_0"@41750
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[48]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_headhathy_slash_Step_0_gml_88_0"@41751
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[50]
push.v self.rr
pushi.e 2
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_headhathy_slash_Step_0_gml_89_0"@41752
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[52]
push.v self.rr
pushi.e 3
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_headhathy_slash_Step_0_gml_90_0"@41753
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[54]
push.v self.rr
pushi.e 4
cmp.i.v EQ
bf [56]

:[55]
push.s "obj_headhathy_slash_Step_0_gml_91_0"@41754
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[56]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
push.s "obj_headhathy_slash_Step_0_gml_92_0"@41755
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[58]
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
bf [60]

:[59]
push.s "obj_headhathy_slash_Step_0_gml_93_0"@41756
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[60]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymax
cmp.v.v GTE
bf [62]

:[61]
push.i 231251
setowner.e
push.s "obj_headhathy_slash_Step_0_gml_94_0"@41757
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[62]
b [64]

:[63]
pushi.e 120
pop.v.i global.turntimer

:[64]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [79]

:[65]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [79]

:[66]
pushi.e 1380
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [68]

:[67]
push.v self.firstturn
pushi.e 0
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [77]

:[70]
push.v self.checkhp1
pushi.e -5
pushi.e 1
push.v [array]self.hp
cmp.v.v LTE
bf [77]

:[71]
push.v self.checkhp2
pushi.e -5
pushi.e 2
push.v [array]self.hp
cmp.v.v LTE
bf [77]

:[72]
pushi.e 1517
pushenv [74]

:[73]
pushi.e 1
pop.v.i self.noreturn

:[74]
popenv [73]
pushi.e 1380
pushenv [76]

:[75]
pushi.e 15
pop.v.i self.con

:[76]
popenv [75]

:[77]
pushi.e 1
pop.v.i self.firstturn
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [79]

:[78]
push.i 231526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[79]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [132]

:[80]
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
bf [82]

:[81]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [85]

:[84]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_headhathy_slash_Step_0_gml_135_0"@41758
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[85]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [87]

:[86]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.rr
push.s "obj_headhathy_slash_Step_0_gml_144_0"@41759
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
pop.v.i self.battlecancel
pushi.e 1
pop.v.i self.actcon

:[90]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [92]

:[91]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [103]

:[94]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd_ch1(argc=2)
popz.v
pushi.e 1
pop.v.i self.actcon
pushi.e -5
pushi.e 504
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_headhathy_slash_Step_0_gml_159_0"@41760
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
push.s "obj_headhathy_slash_Step_0_gml_161_0"@41761
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_headhathy_slash_Step_0_gml_162_0"@41762
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_164_0"@41763
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_166_0"@41764
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_168_0"@41765
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_170_0"@41766
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
push.s "obj_headhathy_slash_Step_0_gml_171_0"@41767
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
pushi.e 20
pop.v.i self.actcon
pushi.e 0
pop.v.i self.acttimer

:[96]
pushi.e -5
pushi.e 504
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
push.s "obj_headhathy_slash_Step_0_gml_179_0"@41768
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
push.s "obj_headhathy_slash_Step_0_gml_181_0"@41769
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_183_0"@41770
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_headhathy_slash_Step_0_gml_184_0"@41771
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_headhathy_slash_Step_0_gml_185_0"@41772
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_headhathy_slash_Step_0_gml_186_0"@41773
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 22
pop.v.i self.actcon

:[98]
pushi.e -5
pushi.e 504
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [100]

:[99]
push.s "obj_headhathy_slash_Step_0_gml_192_0"@41774
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_194_0"@41775
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 25
pop.v.i self.actcon

:[100]
pushi.e -5
pushi.e 504
push.v [array]self.flag
pushi.e 3
cmp.i.v GTE
bf [102]

:[101]
push.s "obj_headhathy_slash_Step_0_gml_200_0"@41776
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
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

:[102]
push.i 231204
setowner.e
pushi.e -5
pushi.e 504
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[103]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [106]

:[105]
push.e 0

:[106]
bf [109]

:[107]
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v
push.v self.delete_n
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
call.i instance_destroy(argc=0)
popz.v

:[109]
push.v self.actcon
pushi.e 20
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
bf [115]

:[113]
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i gml_Script_snd_pause_ch1(argc=1)
popz.v
push.v self.acttimer
pushi.e 1
add.i.v
pop.v.v self.acttimer
push.v self.acttimer
pushi.e 60
cmp.i.v GTE
bf [115]

:[114]
pushi.e 21
pop.v.i self.actcon

:[115]
push.v self.actcon
pushi.e 21
cmp.i.v EQ
bf [117]

:[116]
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_headhathy_slash_Step_0_gml_241_0"@41777
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_headhathy_slash_Step_0_gml_242_0"@41778
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v
pushi.e 22
pop.v.i self.actcon

:[117]
push.v self.actcon
pushi.e 22
cmp.i.v EQ
bf [119]

:[118]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [120]

:[119]
push.e 0

:[120]
bf [124]

:[121]
pushi.e -5
pushi.e 0
push.v [array]self.batmusic
call.i gml_Script_snd_resume_ch1(argc=1)
popz.v
pushi.e 6
pop.v.i self.hspeed
push.s "obj_headhathy_slash_Step_0_gml_251_0"@41779
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_253_0"@41780
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e -5
pushi.e 504
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [123]

:[122]
push.s "obj_headhathy_slash_Step_0_gml_256_0"@41781
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
push.s "obj_headhathy_slash_Step_0_gml_258_0"@41782
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_headhathy_slash_Step_0_gml_260_0"@41783
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[123]
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.delete_n
pushi.e 23
pop.v.i self.actcon
push.i 231474
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monster

:[124]
push.v self.actcon
pushi.e 23
cmp.i.v EQ
bf [127]

:[125]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 640
add.i.v
cmp.v.v GTE
bf [127]

:[126]
pushi.e 1
pop.v.i self.actcon

:[127]
push.v self.actcon
pushi.e 25
cmp.i.v EQ
bf [129]

:[128]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [130]

:[129]
push.e 0

:[130]
bf [132]

:[131]
push.i 231251
setowner.e
push.s "obj_headhathy_slash_Step_0_gml_276_0"@41784
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v
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

:[132]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[133]
pushi.e 15
pop.v.i self.hspeed

:[end]