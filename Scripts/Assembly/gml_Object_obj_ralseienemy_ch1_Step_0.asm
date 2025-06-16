.localvar 2 arguments

:[0]
push.v self.ambushed
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_scr_ambush_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.ambushed

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [132]

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
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [112]

:[7]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [20]

:[8]
call.i gml_Script_scr_moveheart_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.abletotarget
pushi.e -5
pushi.e 0
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
bf [11]

:[9]
pushi.e -5
pushi.e 1
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e -5
pushi.e 2
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 0
pop.v.i self.abletotarget

:[14]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.mytarget
push.v self.abletotarget
pushi.e 1
cmp.i.v EQ
bf [18]

:[15]
pushi.e -5
push.v self.mytarget
conv.v.i
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.mytarget
b [15]

:[17]
b [19]

:[18]
pushi.e 3
pop.v.i self.target

:[19]
push.i 231544
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.mytarget
conv.v.i
pop.v.v [array]self.targeted
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
pushi.e 1526
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[20]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_36_0"@22227
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.plot
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushi.e 0
pop.v.i global.fe
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 30
pop.v.v [array]self.flag
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_42_0"@22228
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_43_0"@22230
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_44_0"@22232
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_45_0"@22234
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_46_0"@22236
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_47_0"@22238
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_48_0"@22240
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg

:[22]
push.v self.plot
pushi.e 1
cmp.i.v GTE
bf [111]

:[23]
pushi.e 0
pop.v.i self.dial
pushi.e -5
pushi.e 0
push.v [array]self.charaction
pushi.e 1
cmp.i.v EQ
bf [51]

:[24]
push.v self.dummyhp
pushi.e -5
pushi.e 0
push.v [array]self.monsterhp
cmp.v.v GT
bf [26]

:[25]
pushi.e 1
pop.v.i self.dial

:[26]
push.v self.myhp
pushi.e -5
pushi.e 1
push.v [array]self.monsterhp
cmp.v.v GT
bf [28]

:[27]
pushi.e 4
pop.v.i self.dial

:[28]
push.v self.dummyhp
pushi.e -5
pushi.e 0
push.v [array]self.monsterhp
cmp.v.v EQ
bf [31]

:[29]
push.v self.myhp
pushi.e -5
pushi.e 1
push.v [array]self.monsterhp
cmp.v.v EQ
bf [31]

:[30]
push.v self.plot
pushi.e 1
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 2
pop.v.i self.dial

:[34]
push.v self.dummyhp
pushi.e -5
pushi.e 0
push.v [array]self.monsterhp
cmp.v.v EQ
bf [38]

:[35]
push.v self.myhp
pushi.e -5
pushi.e 1
push.v [array]self.monsterhp
cmp.v.v EQ
bf [38]

:[36]
push.v self.misstime
pushi.e 9
cmp.i.v EQ
bf [38]

:[37]
push.v self.plot
pushi.e 2
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 3
pop.v.i self.dial
push.i 231204
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 205
pop.v.v [array]self.flag

:[41]
push.v self.dial
pushi.e 4
cmp.i.v EQ
bf [43]

:[42]
push.v self.hittime
pushi.e 2
cmp.i.v GTE
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 3
pop.v.i self.hittime
pushi.e 3
pop.v.i self.dial
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 205
pop.v.v [array]self.flag

:[46]
push.v self.dial
pushi.e 1
cmp.i.v EQ
bf [48]

:[47]
push.v self.hitdum
pushi.e 3
cmp.i.v GTE
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
pushi.e 4
pop.v.i self.hitdum
pushi.e 3
pop.v.i self.dial
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 205
pop.v.v [array]self.flag

:[51]
pushi.e -5
pushi.e 0
push.v [array]self.charaction
pushi.e 10
cmp.i.v EQ
bf [61]

:[52]
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_65_0"@22243
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_66_0"@22245
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.defendtime
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.s "obj_ralseienemy_slash_Step_0_gml_70_0"@22247
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_71_0"@22249
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[54]
push.v self.defendtime
pushi.e 2
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
pop.v.i global.fe
push.s "obj_ralseienemy_slash_Step_0_gml_77_0"@22251
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_78_0"@22253
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_79_0"@22254
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[56]
push.v self.defendtime
pushi.e 3
cmp.i.v EQ
bf [58]

:[57]
pushi.e 9
pop.v.i global.fe
push.s "obj_ralseienemy_slash_Step_0_gml_86_0"@22255
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[58]
push.v self.defendtime
pushi.e 4
cmp.i.v GTE
bf [60]

:[59]
pushi.e 3
pop.v.i self.dial
push.i 231204
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 205
pop.v.v [array]self.flag

:[60]
push.v self.defendtime
pushi.e 1
add.i.v
pop.v.v self.defendtime

:[61]
pushi.e -5
pushi.e 0
push.v [array]self.charaction
pushi.e 4
cmp.i.v EQ
bf [63]

:[62]
pushi.e 8
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_96_0"@22256
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[63]
push.v self.dial
pushi.e 1
cmp.i.v EQ
bf [81]

:[64]
push.v self.plot
pushi.e 2
cmp.i.v EQ
bf [66]

:[65]
push.v self.hitdum
pushi.e 0
cmp.i.v EQ
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushi.e 1
pop.v.i self.hitdum

:[69]
pushi.e 2
pop.v.i self.plot
pushi.e 3
pop.v.i global.fe
push.v self.dummyhp
pushi.e -5
pushi.e 0
push.v [array]self.monsterhp
pushi.e 50
add.i.v
cmp.v.v GT
bf [71]

:[70]
push.s "obj_ralseienemy_slash_Step_0_gml_107_0"@22258
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_108_0"@22260
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [72]

:[71]
push.s "obj_ralseienemy_slash_Step_0_gml_112_0"@22261
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_113_0"@22263
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[72]
push.v self.misstime
pushi.e 6
cmp.i.v GTE
bf [74]

:[73]
pushi.e 8
pop.v.i global.fe
push.s "obj_ralseienemy_slash_Step_0_gml_118_0"@22265
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_119_0"@22267
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[74]
push.s "obj_ralseienemy_slash_Step_0_gml_121_0"@22269
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_122_0"@22271
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_123_0"@22273
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.i 231921
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_124_0"@22275
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
push.v self.hitdum
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_130_0"@22277
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_131_0"@22279
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[76]
push.v self.hitdum
pushi.e 2
cmp.i.v EQ
bf [78]

:[77]
pushi.e 1
pop.v.i global.fe
push.s "obj_ralseienemy_slash_Step_0_gml_137_0"@22280
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_138_0"@22282
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[78]
push.v self.hitdum
pushi.e 3
cmp.i.v EQ
bf [80]

:[79]
pushi.e 9
pop.v.i global.fe
push.s "obj_ralseienemy_slash_Step_0_gml_144_0"@22284
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_145_0"@22285
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[80]
push.v self.hitdum
pushi.e 1
add.i.v
pop.v.v self.hitdum

:[81]
push.v self.dial
pushi.e 2
cmp.i.v EQ
bf [98]

:[82]
pushi.e 3
pop.v.i global.fe
push.s "obj_ralseienemy_slash_Step_0_gml_154_0"@22287
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_155_0"@22289
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.misstime
pushi.e 1
cmp.i.v GTE
bf [97]

:[83]
pushi.e 8
pop.v.i global.fe
push.s "obj_ralseienemy_slash_Step_0_gml_159_0"@22291
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.misstime
pushi.e 2
cmp.i.v EQ
bf [85]

:[84]
push.s "obj_ralseienemy_slash_Step_0_gml_160_0"@22293
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[85]
push.v self.misstime
pushi.e 3
cmp.i.v EQ
bf [87]

:[86]
push.s "obj_ralseienemy_slash_Step_0_gml_161_0"@22295
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[87]
push.v self.misstime
pushi.e 4
cmp.i.v EQ
bf [89]

:[88]
push.s "obj_ralseienemy_slash_Step_0_gml_162_0"@22297
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[89]
push.v self.misstime
pushi.e 5
cmp.i.v EQ
bf [91]

:[90]
push.s "obj_ralseienemy_slash_Step_0_gml_163_0"@22299
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[91]
push.v self.misstime
pushi.e 6
cmp.i.v EQ
bf [93]

:[92]
push.s "obj_ralseienemy_slash_Step_0_gml_164_0"@22301
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[93]
push.v self.misstime
pushi.e 7
cmp.i.v EQ
bf [95]

:[94]
pushi.e 9
pop.v.i global.fe
push.s "obj_ralseienemy_slash_Step_0_gml_168_0"@22303
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[95]
push.v self.misstime
pushi.e 8
cmp.i.v EQ
bf [97]

:[96]
pushi.e 1
pop.v.i global.fe
push.s "obj_ralseienemy_slash_Step_0_gml_173_0"@22304
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.i 231921
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_174_0"@22306
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushi.e 2
pop.v.i self.plot

:[97]
push.v self.misstime
pushi.e 1
add.i.v
pop.v.v self.misstime

:[98]
push.v self.dial
pushi.e 3
cmp.i.v EQ
bf [102]

:[99]
pushi.e 9
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_187_0"@22307
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_188_0"@22308
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_189_0"@22310
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_190_0"@22311
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.hittime
pushi.e 3
cmp.i.v GTE
bf [101]

:[100]
pushi.e 2
pop.v.i global.fe
push.s "obj_ralseienemy_slash_Step_0_gml_195_0"@22312
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_196_0"@22313
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_197_0"@22315
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_198_0"@22317
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[101]
pushi.e 1
pop.v.i self.won

:[102]
push.v self.dial
pushi.e 4
cmp.i.v EQ
bf [111]

:[103]
pushi.e 3
pop.v.i global.fe
push.v self.hittime
pushi.e 0
cmp.i.v EQ
bf [108]

:[104]
push.s "obj_ralseienemy_slash_Step_0_gml_212_0"@22319
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_213_0"@22321
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.plot
pushi.e 2
cmp.i.v EQ
bf [106]

:[105]
push.s "obj_ralseienemy_slash_Step_0_gml_218_0"@22323
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[106]
push.v self.plot
pushi.e 1
cmp.i.v EQ
bf [108]

:[107]
push.s "obj_ralseienemy_slash_Step_0_gml_222_0"@22325
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_223_0"@22327
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.i 231921
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_224_0"@22329
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushi.e 2
pop.v.i self.plot

:[108]
push.v self.hittime
pushi.e 1
cmp.i.v EQ
bf [110]

:[109]
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_231_0"@22330
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_232_0"@22332
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_233_0"@22333
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[110]
push.v self.hittime
pushi.e 1
add.i.v
pop.v.v self.hittime

:[111]
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer

:[112]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [114]

:[113]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [115]

:[114]
push.e 0

:[115]
bf [124]

:[116]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [124]

:[117]
pushi.e 1328
pushenv [119]

:[118]
call.i instance_destroy(argc=0)
popz.v

:[119]
popenv [118]
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [121]

:[120]
pushi.e 2
pop.v.i global.mnfight
b [124]

:[121]
push.v self.won
pushi.e 1
cmp.i.v EQ
bf [123]

:[122]
push.i 231526
setowner.e
push.i 99999
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.mercymod
push.i 99999
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.mercymod

:[123]
call.i gml_Script_scr_mnendturn_ch1(argc=0)
popz.v
pushi.e -5
pushi.e 0
push.v [array]self.monsterhp
pop.v.v self.dummyhp
pushi.e -5
pushi.e 1
push.v [array]self.monsterhp
pop.v.v self.myhp

:[124]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [126]

:[125]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [127]

:[126]
push.e 0

:[127]
bf [132]

:[128]
push.v self.attacks
pushi.e 0
cmp.i.v EQ
bf [130]

:[129]
pushi.e 1
pop.v.i self.attackcon

:[130]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 999
pop.v.i global.turntimer
pushi.e 1
pop.v.i self.attacked
pushi.e 0
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.rr
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [132]

:[131]
push.i 231921
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_288_0"@22335
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[132]
push.v self.attackcon
pushi.e 92
cmp.i.v LT
bf [134]

:[133]
push.v self.attackcon
pushi.e 0
cmp.i.v GT
b [135]

:[134]
push.e 0

:[135]
bf [174]

:[136]
pushi.e 999
pop.v.i global.turntimer
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [138]

:[137]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pop.v.v self.krishp
pushi.e 1564
conv.i.v
push.v 1634.y
push.v 1634.x
pushi.e 150
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.b1
pushi.e 2
pop.v.i self.attackcon
push.i 68097
setowner.e
pushi.e 35
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[138]
push.v self.attackcon
pushi.e 3
cmp.i.v EQ
bf [140]

:[139]
pushi.e 1564
conv.i.v
push.v 1634.y
push.v 1634.x
pushi.e 150
sub.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.b2
pushi.e 4
pop.v.i self.attackcon
pushi.e 35
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[140]
push.v self.attackcon
pushi.e 5
cmp.i.v EQ
bf [142]

:[141]
pushi.e 1564
conv.i.v
push.v 1634.y
pushi.e 150
sub.i.v
push.v 1634.x
pushi.e 8
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.b3
pushi.e 6
pop.v.i self.attackcon
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[142]
push.v self.attackcon
pushi.e 7
cmp.i.v EQ
bf [146]

:[143]
pushi.e 8
pop.v.i self.attackcon
pushi.e 999
pop.v.i global.turntimer
push.v self.krishp
pushi.e -5
pushi.e 1
push.v [array]self.hp
cmp.v.v EQ
bf [145]

:[144]
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_334_0"@22338
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v
pushi.e 90
pop.v.i self.attackcon
b [146]

:[145]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_343_0"@22340
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_344_0"@22342
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v

:[146]
push.v self.attackcon
pushi.e 8
cmp.i.v EQ
bf [148]

:[147]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [149]

:[148]
push.e 0

:[149]
bf [153]

:[150]
pushi.e 1328
pushenv [152]

:[151]
call.i instance_destroy(argc=0)
popz.v

:[152]
popenv [151]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pop.v.v self.krishp
pushi.e 1564
conv.i.v
push.v 1634.y
pushi.e 150
sub.i.v
push.v 1634.x
pushi.e 8
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.b1
pushi.e 9
pop.v.i self.attackcon
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[153]
push.v self.attackcon
pushi.e 10
cmp.i.v EQ
bf [157]

:[154]
pushi.e 11
pop.v.i self.attackcon
pushi.e 999
pop.v.i global.turntimer
push.v self.krishp
pushi.e -5
pushi.e 1
push.v [array]self.hp
cmp.v.v EQ
bf [156]

:[155]
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_369_0"@22344
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v
pushi.e 90
pop.v.i self.attackcon
b [157]

:[156]
pushi.e 2
pop.v.i global.fc
pushi.e 9
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_378_0"@22345
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v

:[157]
push.v self.attackcon
pushi.e 11
cmp.i.v EQ
bf [159]

:[158]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [160]

:[159]
push.e 0

:[160]
bf [164]

:[161]
pushi.e 1564
conv.i.v
push.v 1634.y
pushi.e 8
add.i.v
push.v self.xx
pushi.e 440
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.b1
push.v self.b1
pushi.e -9
pushenv [163]

:[162]
pushi.e 1
pop.v.i self.special
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[163]
popenv [162]
pushi.e 12
pop.v.i self.attackcon
push.i 68097
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[164]
push.v self.attackcon
pushi.e 13
cmp.i.v EQ
bf [166]

:[165]
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_399_0"@22346
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v
pushi.e 90
pop.v.i self.attackcon

:[166]
push.v self.attackcon
pushi.e 90
cmp.i.v EQ
bf [168]

:[167]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [169]

:[168]
push.e 0

:[169]
bf [171]

:[170]
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 45
pop.v.i global.typer
pushi.e 0
pop.v.i global.charturn
push.s "obj_ralseienemy_slash_Step_0_gml_410_0"@22348
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_411_0"@22350
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_412_0"@22352
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_413_0"@22354
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_414_0"@22356
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v
pushi.e 91
pop.v.i self.attackcon

:[171]
push.v self.attackcon
pushi.e 91
cmp.i.v EQ
bf [174]

:[172]
pushi.e 999
pop.v.i global.turntimer
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [174]

:[173]
pushi.e -5
pushi.e 0
push.v [array]self.monsterhp
pop.v.v self.dummyhp
pushi.e -5
pushi.e 1
push.v [array]self.monsterhp
pop.v.v self.myhp
pushi.e 0
pop.v.i global.turntimer
push.i 231921
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_427_0"@22358
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
pushi.e 1
pop.v.i self.plot
pushi.e 92
pop.v.i self.attackcon

:[174]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [235]

:[175]
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
bf [177]

:[176]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [178]

:[177]
push.e 0

:[178]
bf [180]

:[179]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_447_0"@22360
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[180]
push.v self.acting
pushi.e 2
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
bf [187]

:[184]
pushi.e 1534
pushenv [186]

:[185]
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.acttimer

:[186]
popenv [185]
pushi.e 10
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_464_0"@22362
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default_ch1(argc=0)
popz.v

:[187]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [189]

:[188]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [190]

:[189]
push.e 0

:[190]
bf [192]

:[191]
pushi.e 0
pop.v.i self.actcon
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v

:[192]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [198]

:[193]
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
pushenv [195]

:[194]
pushi.e 0
pop.v.i self.visible

:[195]
popenv [194]
pushi.e 3814
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
push.v self.k
pushi.e -9
pushenv [197]

:[196]
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.monstery
pushi.e 16
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]self.monsterx
pushi.e 42
sub.i.v
call.i gml_Script_scr_move_to_point_over_time_ch1(argc=3)
popz.v

:[197]
popenv [196]
pushi.e 11
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[198]
push.v self.actcon
pushi.e 12
cmp.i.v EQ
bf [202]

:[199]
pushi.e 4021
pop.v.i self.sprite_index
push.v self.k
pushi.e -9
pushenv [201]

:[200]
push.d 0.25
pop.v.d self.image_speed

:[201]
popenv [200]
pushi.e 13
pop.v.i self.actcon
pushi.e 12
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[202]
push.v self.actcon
pushi.e 14
cmp.i.v EQ
bf [206]

:[203]
push.v self.k
pushi.e -9
pushenv [205]

:[204]
pushi.e 0
pop.v.i self.image_speed

:[205]
popenv [204]
pushi.e 15
pop.v.i self.actcon

:[206]
push.v self.actcon
pushi.e 15
cmp.i.v EQ
bf [208]

:[207]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [209]

:[208]
push.e 0

:[209]
bf [215]

:[210]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_504_0"@22363
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.hugtime
pushi.e 0
cmp.i.v EQ
bf [212]

:[211]
push.s "obj_ralseienemy_slash_Step_0_gml_508_0"@22364
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_509_0"@22365
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_510_0"@22366
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_511_0"@22367
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[212]
push.v self.hugtime
pushi.e 1
cmp.i.v EQ
bf [214]

:[213]
push.s "obj_ralseienemy_slash_Step_0_gml_516_0"@22369
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_517_0"@22371
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_518_0"@22373
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 205
pop.v.v [array]self.flag
pushi.e 1
pop.v.i self.won

:[214]
push.v self.hugtime
pushi.e 1
add.i.v
pop.v.v self.hugtime
call.i gml_Script_scr_battletext_ch1(argc=0)
popz.v
pushi.e 16
pop.v.i self.actcon

:[215]
push.v self.actcon
pushi.e 16
cmp.i.v EQ
bf [217]

:[216]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [218]

:[217]
push.e 0

:[218]
bf [224]

:[219]
push.v self.myface
pushi.e -9
pushenv [221]

:[220]
call.i instance_destroy(argc=0)
popz.v

:[221]
popenv [220]
push.v self.k
pushi.e -9
pushenv [223]

:[222]
push.d -0.25
pop.v.d self.image_speed

:[223]
popenv [222]
pushi.e 17
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 12
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[224]
push.v self.actcon
pushi.e 18
cmp.i.v EQ
bf [230]

:[225]
push.v self.k
pushi.e -9
pushenv [227]

:[226]
pushi.e 0
pop.v.i self.image_speed

:[227]
popenv [226]
push.v self.k
pushi.e -9
pushenv [229]

:[228]
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_move_to_point_over_time_ch1(argc=3)
popz.v

:[229]
popenv [228]
pushi.e 19
pop.v.i self.actcon
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[230]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bf [235]

:[231]
pushi.e 4020
pop.v.i self.sprite_index
push.v self.k
pushi.e -9
pushenv [233]

:[232]
call.i instance_destroy(argc=0)
popz.v

:[233]
popenv [232]
push.i 133635
setowner.e
pushi.e 1
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
pop.v.i self.actcon
push.v self.won
pushi.e 1
cmp.i.v EQ
bf [235]

:[234]
push.i 231526
setowner.e
push.i 999999
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.mercymod
push.i 999999
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.mercymod

:[235]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [237]

:[236]
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 2
pop.v.i self.con

:[237]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [239]

:[238]
pushi.e 7
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_ralseienemy_slash_Step_0_gml_575_0"@22375
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_576_0"@22377
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_577_0"@22379
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_578_0"@22381
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_579_0"@22383
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_ralseienemy_slash_Step_0_gml_580_0"@22385
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 4
pop.v.i self.con
pushi.e 1331
conv.i.v
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
pushi.e 160
sub.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.mywriter

:[239]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [241]

:[240]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [242]

:[241]
push.e 0

:[242]
bf [246]

:[243]
pushi.e 20
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
pushenv [245]

:[244]
pushi.e 0
pop.v.i self.noreturn
pushi.e 17
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[245]
popenv [244]

:[246]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [end]

:[247]
push.i 231885
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterexp
pushi.e 0
sub.i.v
pop.i.v [array]self.monsterexp
push.i 231884
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monstergold
pushi.e 10
add.i.v
pop.i.v [array]self.monstergold
call.i gml_Script_scr_monsterdefeat_ch1(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
pushi.e 7
pop.v.i self.con

:[end]