.localvar 2 arguments

:[0]
pushi.e 1516
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[1]
push.v 1516.sprite_index
pushi.e 3779
cmp.i.v EQ
bf [3]

:[2]
push.i 231204
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 211
pop.v.v [array]self.flag

:[3]
push.v 1516.sprite_index
pushi.e 3782
cmp.i.v EQ
bf [5]

:[4]
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 211
pop.v.v [array]self.flag

:[5]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [50]

:[6]
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.v [array]self.flag
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
call.i gml_Script_scr_randomtarget_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[11]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [22]

:[15]
pushi.e 0
pop.v.i self.rtimer
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [17]

:[16]
push.v self.talktimer
pushi.e 5
cmp.i.v GT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.v self.talkmax
pop.v.v self.talktimer

:[20]
push.v self.talktimer
pushi.e 1
add.i.v
pop.v.v self.talktimer
push.v self.talktimer
push.v self.talkmax
cmp.v.v GTE
bf [22]

:[21]
pushi.e 2
pop.v.i global.mnfight

:[22]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [35]

:[26]
pushi.e 1555
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 12
cmp.i.v EQ
bf [34]

:[29]
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pop.v.v self.rr
pushi.e 1
pop.v.i global.turntimer
push.v self.rr
pushi.e 999
cmp.i.v EQ
bf [31]

:[30]
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

:[31]
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
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
push.i 231921
setowner.e
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_83_0"@41786
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[33]
b [35]

:[34]
pushi.e 1
pop.v.i global.turntimer

:[35]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [50]

:[36]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [50]

:[37]
pushi.e 1380
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [39]

:[38]
push.v self.firstturn
pushi.e 0
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [48]

:[41]
push.v self.checkhp1
pushi.e -5
pushi.e 1
push.v [array]self.hp
cmp.v.v LTE
bf [48]

:[42]
push.v self.checkhp2
pushi.e -5
pushi.e 2
push.v [array]self.hp
cmp.v.v LTE
bf [48]

:[43]
pushi.e 1517
pushenv [45]

:[44]
pushi.e 1
pop.v.i self.noreturn

:[45]
popenv [44]
pushi.e 1380
pushenv [47]

:[46]
pushi.e 15
pop.v.i self.con

:[47]
popenv [46]

:[48]
pushi.e 1
pop.v.i self.firstturn
push.v self.battlecancel
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.i 231526
setowner.e
pushi.e 999
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[50]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [85]

:[51]
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
bf [53]

:[52]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_127_0"@41787
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[56]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [58]

:[57]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_136_0"@41788
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
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_138_0"@41789
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_139_0"@41790
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_141_0"@41791
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_142_0"@41792
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_144_0"@41793
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_145_0"@41794
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_146_0"@41795
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_147_0"@41796
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
pushi.e 5
pop.v.i self.actcon
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[61]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [63]

:[62]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
pushi.e 5
pop.v.i self.actcon
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_155_0"@41797
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
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_157_0"@41798
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_159_0"@41799
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
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_161_0"@41800
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_162_0"@41801
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_163_0"@41802
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_165_0"@41803
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_167_0"@41804
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_168_0"@41805
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 14
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_170_0"@41806
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 16
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_172_0"@41807
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]self.msg
push.i 231984
setowner.e
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_174_0"@41808
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monstercomment
push.i 231956
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.automiss
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[66]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v

:[71]
push.v self.actcon
pushi.e 5
cmp.i.v EQ
bf [73]

:[72]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [81]

:[75]
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
pushenv [78]

:[76]
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
bf [78]

:[77]
pushi.e 0
pop.v.i self.points

:[78]
popenv [76]
pushi.e -5
pushi.e 0
push.v [array]self.automiss
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
pushi.e 5
pop.v.i self.hspeed
push.i 231526
setowner.e
pushi.e 200
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[80]
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[81]
push.v self.actcon
pushi.e 7
cmp.i.v EQ
bf [85]

:[82]
push.i 231474
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monster
push.i 231251
setowner.e
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_217_0"@41809
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
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 211
pop.v.v [array]self.flag
push.i 231251
setowner.e
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_220_0"@41810
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
bf [84]

:[83]
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 211
pop.v.v [array]self.flag
push.i 231251
setowner.e
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_224_0"@41811
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
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_226_0"@41812
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_smallcheckers_enemy_slash_Step_0_gml_227_0"@41813
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[84]
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.actcon

:[85]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
bf [end]

:[86]
pushi.e 15
pop.v.i self.hspeed

:[end]