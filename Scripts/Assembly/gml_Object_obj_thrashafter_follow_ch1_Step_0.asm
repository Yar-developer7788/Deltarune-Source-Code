.localvar 2 arguments

:[0]
push.v self.followcon
pushi.e 1
cmp.i.v EQ
bf [11]

:[1]
push.v 1351.x
push.v self.x
pushi.e 100
add.i.v
cmp.v.v GTE
bf [5]

:[2]
pushi.e 3583
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.xval
push.v 1351.px
pushi.e 4
cmp.i.v GT
bf [4]

:[3]
push.v 1351.px
pop.v.v self.xval

:[4]
push.v self.x
push.v self.xval
add.v.v
pop.v.v self.x
pushi.e 10
pop.v.i self.followbuffer

:[5]
push.v 1351.x
push.v self.x
pushi.e 100
sub.i.v
cmp.v.v LTE
bf [9]

:[6]
pushi.e 3587
pop.v.i self.sprite_index
pushi.e -4
pop.v.i self.xval
push.v 1351.px
pushi.e -4
cmp.i.v LT
bf [8]

:[7]
push.v 1351.px
pop.v.v self.xval

:[8]
push.v self.x
push.v self.xval
add.v.v
pop.v.v self.x
pushi.e 10
pop.v.i self.followbuffer

:[9]
push.v self.followbuffer
pushi.e 0
cmp.i.v LTE
bf [11]

:[10]
pushi.e 3578
pop.v.i self.sprite_index

:[11]
push.v self.followbuffer
pushi.e 1
sub.i.v
pop.v.v self.followbuffer
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.v 1351.x
pop.v.v self.x
pushi.e 2
pop.v.i self.con

:[13]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [88]

:[14]
pushbltn.v builtin.room
pushi.e 379
cmp.i.v EQ
bf [35]

:[15]
push.v 1351.x
pushi.e 500
cmp.i.v GTE
bf [18]

:[16]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
pushi.e -5
pushi.e 229
push.v [array]self.flag
pushi.e 3
cmp.i.v LT
b [19]

:[18]
push.e 0

:[19]
bf [23]

:[20]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
pushi.e 1493
pushenv [22]

:[21]
pushi.e 1
pop.v.i self.fun
push.v self.usprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index

:[22]
popenv [21]
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_54_0"@39030
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_55_0"@39031
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_57_0"@39032
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_59_0"@39033
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_60_0"@39034
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
push.s "obj_thrashafter_follow_slash_Step_0_gml_62_0"@39035
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_63_0"@39036
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_65_0"@39037
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
pushi.e 4
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 229
pop.v.v [array]self.flag

:[23]
push.v 1351.x
pushi.e 1400
cmp.i.v GTE
bf [26]

:[24]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushi.e -5
pushi.e 229
push.v [array]self.flag
pushi.e 4
cmp.i.v LT
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_77_0"@39038
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_78_0"@39039
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_79_0"@39040
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
push.s "obj_thrashafter_follow_slash_Step_0_gml_81_0"@39041
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
push.s "obj_thrashafter_follow_slash_Step_0_gml_83_0"@39042
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_85_0"@39043
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_87_0"@39044
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
pushi.e 6
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 229
pop.v.v [array]self.flag

:[29]
push.v 1351.x
push.i 99999
cmp.i.v GTE
bf [32]

:[30]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e -5
pushi.e 229
push.v [array]self.flag
pushi.e 5
cmp.i.v LT
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_102_0"@39045
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
push.s "obj_thrashafter_follow_slash_Step_0_gml_104_0"@39046
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
push.s "obj_thrashafter_follow_slash_Step_0_gml_106_0"@39047
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_108_0"@39048
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 6
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 229
pop.v.v [array]self.flag

:[35]
pushbltn.v builtin.room
pushi.e 380
cmp.i.v EQ
bf [50]

:[36]
push.v 1351.x
pushi.e 360
cmp.i.v GTE
bf [39]

:[37]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
pushi.e -5
pushi.e 229
push.v [array]self.flag
pushi.e 6
cmp.i.v LT
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
pushi.e 0
pop.v.i self.followcon
pushi.e 3583
pop.v.i self.sprite_index
pushi.e 5
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_129_0"@39049
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
push.s "obj_thrashafter_follow_slash_Step_0_gml_131_0"@39050
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 20
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 229
pop.v.v [array]self.flag

:[42]
push.v 1351.x
pushi.e 1200
cmp.i.v GTE
bf [45]

:[43]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
pushi.e -5
pushi.e 229
push.v [array]self.flag
pushi.e 7
cmp.i.v LT
b [46]

:[45]
push.e 0

:[46]
bf [50]

:[47]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
pushi.e 1493
pushenv [49]

:[48]
pushi.e 1
pop.v.i self.fun
push.v self.usprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index

:[49]
popenv [48]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_151_0"@39051
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
push.s "obj_thrashafter_follow_slash_Step_0_gml_153_0"@39052
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_155_0"@39053
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_157_0"@39054
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 6
pop.v.i self.con
pushi.e 1
pop.v.i self.speclaugh
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 7
conv.i.v
pushi.e -5
pushi.e 229
pop.v.v [array]self.flag

:[50]
pushbltn.v builtin.room
pushi.e 381
cmp.i.v EQ
bf [71]

:[51]
push.v 1351.x
pushi.e 360
cmp.i.v GTE
bf [54]

:[52]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
pushi.e -5
pushi.e 229
push.v [array]self.flag
pushi.e 8
cmp.i.v LT
b [55]

:[54]
push.e 0

:[55]
bf [59]

:[56]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
pushi.e 1493
pushenv [58]

:[57]
pushi.e 1
pop.v.i self.fun
push.v self.usprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index

:[58]
popenv [57]
pushi.e 3578
pop.v.i self.sprite_index
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_187_0"@39055
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_188_0"@39056
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_190_0"@39057
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_191_0"@39058
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_192_0"@39059
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_194_0"@39060
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_195_0"@39061
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_197_0"@39062
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 11
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_199_0"@39063
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
pushi.e 4
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 8
conv.i.v
pushi.e -5
pushi.e 229
pop.v.v [array]self.flag

:[59]
push.v 1351.x
pushi.e 800
cmp.i.v GTE
bf [62]

:[60]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [62]

:[61]
pushi.e -5
pushi.e 229
push.v [array]self.flag
pushi.e 9
cmp.i.v LT
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
pushi.e 1
pop.v.i global.interact
pushi.e 3578
pop.v.i self.sprite_index
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_213_0"@39064
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_214_0"@39065
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_216_0"@39066
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_218_0"@39067
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_219_0"@39068
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_221_0"@39069
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_223_0"@39070
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
pushi.e 4
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 9
conv.i.v
pushi.e -5
pushi.e 229
pop.v.v [array]self.flag

:[65]
push.v 1351.x
pushi.e 1200
cmp.i.v GTE
bf [68]

:[66]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [68]

:[67]
pushi.e -5
pushi.e 229
push.v [array]self.flag
pushi.e 10
cmp.i.v LT
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.fc
pushi.e 12
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_236_0"@39071
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 4
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 229
pop.v.v [array]self.flag

:[71]
pushbltn.v builtin.room
pushi.e 382
cmp.i.v EQ
bf [88]

:[72]
push.v 1351.x
pushi.e 720
cmp.i.v GTE
bf [75]

:[73]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
pushi.e -5
pushi.e 229
push.v [array]self.flag
pushi.e 11
cmp.i.v LT
b [76]

:[75]
push.e 0

:[76]
bf [80]

:[77]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
pushi.e 1493
pushenv [79]

:[78]
pushi.e 1
pop.v.i self.fun
push.v self.usprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index

:[79]
popenv [78]
pushi.e 12
pop.v.i self.con
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_265_0"@39072
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_267_0"@39073
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_268_0"@39074
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_269_0"@39075
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
push.s "obj_thrashafter_follow_slash_Step_0_gml_271_0"@39076
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_273_0"@39077
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_274_0"@39078
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_276_0"@39079
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_277_0"@39080
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 13
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_279_0"@39081
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 11
conv.i.v
pushi.e -5
pushi.e 229
pop.v.v [array]self.flag

:[80]
push.v 1351.x
pushi.e 1600
cmp.i.v GTE
bf [83]

:[81]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [83]

:[82]
pushi.e -5
pushi.e 229
push.v [array]self.flag
pushi.e 12
cmp.i.v LT
b [84]

:[83]
push.e 0

:[84]
bf [88]

:[85]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
pushi.e 1493
pushenv [87]

:[86]
pushi.e 1
pop.v.i self.fun
push.v self.usprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index

:[87]
popenv [86]
pushi.e 100
pop.v.i self.con
pushi.e 0
pop.v.i self.followcon
pushi.e 3585
pop.v.i self.sprite_index
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_303_0"@39082
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_304_0"@39083
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_305_0"@39084
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_306_0"@39085
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_308_0"@39086
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_309_0"@39087
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_310_0"@39088
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_311_0"@39089
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "C"@9479
conv.s.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_313_0"@39090
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 12
conv.i.v
pushi.e -5
pushi.e 229
pop.v.v [array]self.flag

:[88]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [90]

:[89]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [91]

:[90]
push.e 0

:[91]
bf [95]

:[92]
pushi.e 1
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i self.followcon
pushi.e 1493
pushenv [94]

:[93]
pushi.e 0
pop.v.i self.fun
push.v self.rsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index

:[94]
popenv [93]

:[95]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [97]

:[96]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [98]

:[97]
push.e 0

:[98]
bf [103]

:[99]
pushi.e 1493
pushenv [102]

:[100]
push.v self.dsprite
pushi.e 3553
cmp.i.v EQ
bf [102]

:[101]
pushi.e 1
pop.v.i self.fun
pushi.e 3562
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[102]
popenv [100]
pushi.e 0
pop.v.i self.followcon
pushi.e 3590
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 455
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
pop.v.v self.ll
pushi.e 383
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
pop.v.v self.sl
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
push.v self.ll
call.i gml_Script_snd_volume_ch1(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
push.v self.sl
call.i gml_Script_snd_volume_ch1(argc=3)
popz.v
pushi.e 7
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[103]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [110]

:[104]
pushi.e 1493
pushenv [106]

:[105]
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i self.image_speed
push.v self.rsprite
pop.v.v self.sprite_index

:[106]
popenv [105]
pushi.e 3578
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.followcon
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
push.v self.speclaugh
pushi.e 1
cmp.i.v EQ
bf [110]

:[107]
pushi.e 9
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1493
pushenv [109]

:[108]
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i self.image_speed
push.v self.usprite
pop.v.v self.sprite_index

:[109]
popenv [108]

:[110]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [112]

:[111]
pushi.e 4
pop.v.i self.con
pushi.e 2
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_393_0"@39093
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_394_0"@39094
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_396_0"@39095
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_397_0"@39096
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_399_0"@39097
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_400_0"@39098
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[112]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [117]

:[113]
pushi.e 0
pop.v.i self.followcon
push.v self.x
push.v 1351.x
pushi.e 100
add.i.v
cmp.v.v LTE
bf [115]

:[114]
push.v self.x
pushi.e 10
add.i.v
pop.v.v self.x
b [116]

:[115]
pushi.e 4
pop.v.i self.con

:[116]
pushi.e 3581
pop.v.i self.sprite_index

:[117]
push.v self.con
pushi.e 20
cmp.i.v GTE
bf [119]

:[118]
push.v self.con
pushi.e 80
cmp.i.v LT
b [120]

:[119]
push.e 0

:[120]
bf [292]

:[121]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [123]

:[122]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [124]

:[123]
push.e 0

:[124]
bf [128]

:[125]
push.i 800000
pop.v.i self.depth
push.v self.tree
pushi.e -9
push.v [stacktop]self.x
pushi.e 5
add.i.v
pop.v.v self.pointx
push.v self.tree
pushi.e -9
push.v [stacktop]self.y
pushi.e 100
add.i.v
pop.v.v self.pointy
call.i gml_Script_scr_markify_caterpillar_ch1(argc=0)
popz.v
push.v self.pointx
push.v self.s
pushi.e -9
pop.v.v [stacktop]self.pointx
push.v self.pointy
push.v self.s
pushi.e -9
pop.v.v [stacktop]self.pointy
push.v self.s
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.susx
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.susy
pushi.e 10
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.treecon
pushi.e 3583
pop.v.i self.sprite_index
push.v self.s
pushi.e -9
pushenv [127]

:[126]
pushi.e 3549
pop.v.i self.sprite_index
pushi.e 60
conv.i.v
push.v self.pointy
pushi.e 10
sub.i.v
push.v self.pointx
call.i gml_Script_scr_move_to_point_over_time_ch1(argc=3)
popz.v
push.d 0.25
pop.v.d self.image_speed

:[127]
popenv [126]
pushi.e 21
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[128]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [132]

:[129]
push.v self.s
pushi.e -9
pushenv [131]

:[130]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[131]
popenv [130]

:[132]
push.v self.treecon
pushi.e 1
cmp.i.v EQ
bf [135]

:[133]
push.v self.x
push.v self.tree
pushi.e -9
push.v [stacktop]self.x
pushi.e 160
add.i.v
cmp.v.v GTE
bf [135]

:[134]
pushi.e 0
pop.v.i self.hspeed
pushi.e 10
pop.v.i self.vspeed
pushi.e 3578
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.treecon

:[135]
push.v self.treecon
pushi.e 2
cmp.i.v EQ
bf [138]

:[136]
push.v self.y
push.v self.pointy
cmp.v.v GTE
bf [138]

:[137]
push.i 100000
pop.v.i self.depth
pushi.e 0
pop.v.i self.vspeed
pushi.e -10
pop.v.i self.hspeed
pushi.e 3587
pop.v.i self.sprite_index
pushi.e 3
pop.v.i self.treecon

:[138]
push.v self.treecon
pushi.e 3
cmp.i.v EQ
bf [141]

:[139]
push.v self.x
push.v self.pointx
pushi.e 65
add.i.v
cmp.v.v LTE
bf [141]

:[140]
push.v self.pointx
pushi.e 55
add.i.v
pop.v.v self.x
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[141]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [145]

:[142]
pushi.e 3587
pop.v.i self.sprite_index
push.v self.s
pushi.e -9
pushenv [144]

:[143]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v
pushi.e 3557
pop.v.i self.sprite_index

:[144]
popenv [143]
pushi.e 23
pop.v.i self.con
pushi.e 0
pop.v.i self.jumps
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.jsy
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[145]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [149]

:[146]
pushi.e 25
pop.v.i self.con
push.v self.s
pushi.e -9
pushenv [148]

:[147]
push.v self.y
pushi.e 3
sub.i.v
pop.v.v self.y
pushi.e -6
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.gravity

:[148]
popenv [147]

:[149]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [156]

:[150]
push.v self.s
pushi.e -9
push.v [stacktop]self.y
push.v self.jsy
pushi.e 6
sub.i.v
cmp.v.v GTE
bf [156]

:[151]
push.v self.jumps
pushi.e 2
cmp.i.v LT
bf [153]

:[152]
push.v self.jsy
push.v self.s
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 24
pop.v.i self.con
push.v self.jumps
pushi.e 1
add.i.v
pop.v.v self.jumps
b [156]

:[153]
pushi.e 26
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.v self.s
pushi.e -9
pushenv [155]

:[154]
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed

:[155]
popenv [154]
push.v self.jsy
push.v self.s
pushi.e -9
pop.v.v [stacktop]self.y

:[156]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [160]

:[157]
push.v self.s
pushi.e -9
pushenv [159]

:[158]
pushi.e 3549
pop.v.i self.sprite_index

:[159]
popenv [158]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_545_0"@39103
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
push.s "obj_thrashafter_follow_slash_Step_0_gml_547_0"@39104
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_548_0"@39105
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_550_0"@39106
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_552_0"@39107
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 28
pop.v.i self.con
pushi.e 0
pop.v.i self.blender

:[160]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [162]

:[161]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [163]

:[162]
push.e 0

:[163]
bf [165]

:[164]
pushi.e 0
pop.v.i self.blender
pushi.e 415
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 29
pop.v.i self.con
call.i gml_Script_scr_oflash_ch1(argc=0)
pop.v.v self.flash
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.flashspeed
pushi.e 0
pop.v.i self.fmax

:[165]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [170]

:[166]
push.v self.fmax
push.d 0.2
add.d.v
pop.v.v self.fmax
push.v self.flash
call.i instance_exists(argc=1)
conv.v.b
bf [168]

:[167]
push.v self.fmax
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.siner

:[168]
push.v self.fmax
pushi.e 5
cmp.i.v GTE
bf [170]

:[169]
pushi.e 30
pop.v.i self.con

:[170]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [172]

:[171]
pushi.e 456
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1464
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.wh
push.i 16777215
push.v self.wh
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 31
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[172]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [178]

:[173]
pushi.e 3589
pop.v.i self.sprite_index
push.v self.wh
pushi.e -9
pushenv [175]

:[174]
call.i instance_destroy(argc=0)
popz.v

:[175]
popenv [174]
pushi.e 1465
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.wh
push.d -0.03
push.v self.wh
pushi.e -9
pop.v.d [stacktop]self.fadespeed
push.i 16777215
push.v self.wh
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 33
pop.v.i self.con
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.v self.flash
pushi.e -9
pushenv [177]

:[176]
call.i instance_destroy(argc=0)
popz.v

:[177]
popenv [176]

:[178]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [180]

:[179]
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_608_0"@39110
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_610_0"@39111
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
push.s "obj_thrashafter_follow_slash_Step_0_gml_612_0"@39112
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 35
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[180]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [182]

:[181]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [183]

:[182]
push.e 0

:[183]
bf [187]

:[184]
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e 40
sub.i.v
pop.v.v self.iy
push.v self.s
pushi.e -9
pushenv [186]

:[185]
pushi.e 1
pop.v.i self.image_index
pushi.e 6
pop.v.i self.hspeed
push.v self.y
pushi.e 6
sub.i.v
pop.v.v self.y
pushi.e -9
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.gravity

:[186]
popenv [185]
pushi.e 36
pop.v.i self.con

:[187]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [195]

:[188]
push.v self.s
pushi.e -9
push.v [stacktop]self.y
push.v self.iy
cmp.v.v GTE
bf [190]

:[189]
push.v self.s
pushi.e -9
push.v [stacktop]self.vspeed
pushi.e 0
cmp.i.v GTE
b [191]

:[190]
push.e 0

:[191]
bf [195]

:[192]
push.v self.s
pushi.e -9
pushenv [194]

:[193]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_index

:[194]
popenv [193]
pushi.e 37
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[195]
push.v self.con
pushi.e 38
cmp.i.v EQ
bf [199]

:[196]
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.iy
push.v self.s
pushi.e -9
pushenv [198]

:[197]
pushi.e 3557
pop.v.i self.sprite_index
push.v self.y
pushi.e 5
sub.i.v
pop.v.v self.y
pushi.e -11
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.gravity

:[198]
popenv [197]
pushi.e 39
pop.v.i self.con

:[199]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [208]

:[200]
push.v self.s
pushi.e -9
push.v [stacktop]self.vspeed
pushi.e 0
cmp.i.v GTE
bf [204]

:[201]
push.v self.tree
pushi.e -9
pushenv [203]

:[202]
pushi.e 1
pop.v.i self.image_index

:[203]
popenv [202]

:[204]
push.v self.s
pushi.e -9
push.v [stacktop]self.y
push.v self.iy
pushi.e 4
sub.i.v
cmp.v.v GTE
bf [208]

:[205]
push.v self.s
pushi.e -9
pushenv [207]

:[206]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity

:[207]
popenv [206]
push.d 39.1
pop.v.d self.con
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[208]
push.v self.con
push.d 40.1
cmp.d.v EQ
bf [212]

:[209]
push.v self.s
pushi.e -9
pushenv [211]

:[210]
pushi.e 3546
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index
pushi.e -4
pop.v.i self.hspeed
push.v self.y
pushi.e 6
sub.i.v
pop.v.v self.y
pushi.e -6
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.gravity

:[211]
popenv [210]
pushi.e 41
pop.v.i self.con

:[212]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [217]

:[213]
push.v self.s
pushi.e -9
push.v [stacktop]self.y
push.v self.jsy
pushi.e 8
sub.i.v
cmp.v.v GTE
bf [217]

:[214]
push.v self.jsy
push.v self.s
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 3587
pop.v.i self.sprite_index
push.v self.s
pushi.e -9
pushenv [216]

:[215]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed

:[216]
popenv [215]
pushi.e 42
pop.v.i self.con

:[217]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [219]

:[218]
pushi.e 43
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[219]
push.v self.con
pushi.e 44
cmp.i.v EQ
bf [221]

:[220]
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_723_0"@39113
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
push.s "obj_thrashafter_follow_slash_Step_0_gml_725_0"@39114
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 45
pop.v.i self.con

:[221]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [223]

:[222]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [224]

:[223]
push.e 0

:[224]
bf [228]

:[225]
push.v self.s
pushi.e -9
pushenv [227]

:[226]
pushi.e 3551
pop.v.i self.sprite_index

:[227]
popenv [226]
pushi.e 46
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[228]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [230]

:[229]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_742_0"@39115
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_744_0"@39116
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_745_0"@39117
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_747_0"@39118
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 48
pop.v.i self.con

:[230]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [232]

:[231]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [233]

:[232]
push.e 0

:[233]
bf [237]

:[234]
push.v self.s
pushi.e -9
pushenv [236]

:[235]
pushi.e 4
pop.v.i self.hspeed

:[236]
popenv [235]
pushi.e 49
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[237]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [241]

:[238]
push.v self.s
pushi.e -9
pushenv [240]

:[239]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[240]
popenv [239]
pushi.e 51
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[241]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [243]

:[242]
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_771_0"@39119
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
push.s "obj_thrashafter_follow_slash_Step_0_gml_773_0"@39120
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_774_0"@39121
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 53
pop.v.i self.con

:[243]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [245]

:[244]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [246]

:[245]
push.e 0

:[246]
bf [250]

:[247]
push.v self.s
pushi.e -9
pushenv [249]

:[248]
pushi.e -4
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 3548
pop.v.i self.sprite_index

:[249]
popenv [248]
pushi.e 54
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[250]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [254]

:[251]
push.v self.s
pushi.e -9
pushenv [253]

:[252]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[253]
popenv [252]
pushi.e 56
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[254]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [256]

:[255]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_803_0"@39122
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_805_0"@39123
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 58
pop.v.i self.con

:[256]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [258]

:[257]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [259]

:[258]
push.e 0

:[259]
bf [261]

:[260]
push.i 175319
setowner.e
push.s "fanfare.ogg"@38822
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.candysong
pushi.e -1
pushi.e 0
push.v [array]self.candysong
call.i gml_Script_mus_play_ch1(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.candysong
pushi.e 0
pop.v.i global.fc
pushi.e 52
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_817_0"@39125
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.skippable
pushi.e 60
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[261]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [263]

:[262]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pause_ch1(argc=1)
popz.v
pushi.e 59
pop.v.i self.con

:[263]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [269]

:[264]
pushi.e -1
pushi.e 0
push.v [array]self.candysong
call.i gml_Script_snd_free_ch1(argc=1)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_resume_ch1(argc=1)
popz.v
pushi.e 1330
pushenv [266]

:[265]
call.i instance_destroy(argc=0)
popz.v

:[266]
popenv [265]
pushi.e 1331
pushenv [268]

:[267]
call.i instance_destroy(argc=0)
popz.v

:[268]
popenv [267]
pushi.e 30
pop.v.i global.typer
pushi.e 7
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_839_0"@39126
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 65
pop.v.i self.con

:[269]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [271]

:[270]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [272]

:[271]
push.e 0

:[272]
bf [276]

:[273]
push.v self.susx
push.v self.s
pushi.e -9
pop.v.v [stacktop]self.susx
push.v self.susy
push.v self.s
pushi.e -9
pop.v.v [stacktop]self.susy
push.v self.s
pushi.e -9
pushenv [275]

:[274]
pushi.e 3546
pop.v.i self.sprite_index
pushi.e 40
conv.i.v
push.v self.susy
push.v self.susx
call.i gml_Script_scr_move_to_point_over_time_ch1(argc=3)
popz.v
push.d 0.25
pop.v.d self.image_speed

:[275]
popenv [274]
pushi.e 10
pop.v.i self.treecon
pushi.e 66
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[276]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [284]

:[277]
pushi.e 1
pop.v.i global.facing
push.v self.s
pushi.e -9
pushenv [279]

:[278]
call.i instance_destroy(argc=0)
popz.v

:[279]
popenv [278]
push.v self.r
pushi.e -9
pushenv [281]

:[280]
call.i instance_destroy(argc=0)
popz.v

:[281]
popenv [280]
pushi.e 1493
pushenv [283]

:[282]
pushi.e 1
pop.v.i self.visible

:[283]
popenv [282]
pushi.e 0
pop.v.i global.interact
pushi.e 1
pop.v.i self.followcon
pushi.e 2
pop.v.i self.con

:[284]
push.v self.treecon
pushi.e 10
cmp.i.v EQ
bf [286]

:[285]
pushi.e 3583
pop.v.i self.sprite_index
pushi.e 8
pop.v.i self.hspeed
pushi.e 11
pop.v.i self.treecon

:[286]
push.v self.treecon
pushi.e 11
cmp.i.v EQ
bf [289]

:[287]
push.v self.x
push.v self.tree
pushi.e -9
push.v [stacktop]self.x
pushi.e 160
add.i.v
cmp.v.v GTE
bf [289]

:[288]
pushi.e 3578
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.hspeed
pushi.e -8
pop.v.i self.vspeed
pushi.e 12
pop.v.i self.treecon

:[289]
push.v self.treecon
pushi.e 12
cmp.i.v EQ
bf [292]

:[290]
push.v self.y
push.v self.ystart
pushi.e 10
add.i.v
cmp.v.v LTE
bf [292]

:[291]
push.v self.tree
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1000
add.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.vspeed
push.v self.ystart
pop.v.v self.y
pushi.e 13
pop.v.i self.treecon

:[292]
push.v self.con
pushi.e 100
cmp.i.v GTE
bf [294]

:[293]
push.v self.con
pushi.e 150
cmp.i.v LTE
b [295]

:[294]
push.e 0

:[295]
bf [end]

:[296]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [298]

:[297]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [299]

:[298]
push.e 0

:[299]
bf [305]

:[300]
pushi.e 1
pop.v.i global.facing
pushglb.v global.facing
call.i gml_Script_scr_caterpillar_facing_ch1(argc=1)
popz.v
call.i gml_Script_scr_markify_caterpillar_ch1(argc=0)
popz.v
push.v self.s
pushi.e -9
pushenv [302]

:[301]
pushi.e 3549
pop.v.i self.sprite_index

:[302]
popenv [301]
push.v self.r
pushi.e -9
pushenv [304]

:[303]
pushi.e 3575
pop.v.i self.sprite_index

:[304]
popenv [303]
pushi.e 3585
pop.v.i self.sprite_index
pushi.e 6
pop.v.i self.hspeed
pushi.e 101
pop.v.i self.con

:[305]
push.v self.con
pushi.e 101
cmp.i.v EQ
bf [307]

:[306]
push.v self.x
push.v 1351.x
pushi.e 40
add.i.v
cmp.v.v GTE
b [308]

:[307]
push.e 0

:[308]
bf [310]

:[309]
pushi.e 0
pop.v.i self.hspeed
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_932_0"@39127
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
push.s "obj_thrashafter_follow_slash_Step_0_gml_934_0"@39128
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_935_0"@39129
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "C"@9479
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_937_0"@39130
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_939_0"@39131
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 5
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_941_0"@39132
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 102
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[310]
push.v self.con
pushi.e 102
cmp.i.v EQ
bf [312]

:[311]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [313]

:[312]
push.e 0

:[313]
bf [315]

:[314]
pushi.e 4
pop.v.i self.hspeed
pushi.e 103
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[315]
push.v self.con
pushi.e 104
cmp.i.v EQ
bf [317]

:[316]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v
pushi.e 105
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[317]
push.v self.con
pushi.e 106
cmp.i.v EQ
bf [319]

:[318]
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_962_0"@39133
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_963_0"@39134
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_follow_slash_Step_0_gml_965_0"@39135
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 107
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[319]
push.v self.con
pushi.e 107
cmp.i.v EQ
bf [321]

:[320]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [322]

:[321]
push.e 0

:[322]
bf [324]

:[323]
pushi.e 4
pop.v.i self.hspeed
pushi.e 108
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[324]
push.v self.con
pushi.e 109
cmp.i.v EQ
bf [326]

:[325]
pushi.e 0
pop.v.i self.hspeed
pushi.e 110
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[326]
push.v self.con
pushi.e 111
cmp.i.v EQ
bf [330]

:[327]
push.v self.s
pushi.e -9
pushenv [329]

:[328]
pushi.e 3551
pop.v.i self.sprite_index

:[329]
popenv [328]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_991_0"@39136
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_992_0"@39137
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 112
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[330]
push.v self.con
pushi.e 112
cmp.i.v EQ
bf [332]

:[331]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [333]

:[332]
push.e 0

:[333]
bf [335]

:[334]
push.i 231459
setowner.e
push.s "creepychase.ogg"@15561
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 18
pop.v.i self.hspeed
pushi.e 113
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1490
conv.i.v
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.s
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.exc

:[335]
push.v self.con
pushi.e 114
cmp.i.v EQ
bf [339]

:[336]
push.v self.exc
pushi.e -9
pushenv [338]

:[337]
call.i instance_destroy(argc=0)
popz.v

:[338]
popenv [337]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 9
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_1013_0"@39138
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashafter_follow_slash_Step_0_gml_1014_0"@39139
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 115
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[339]
push.v self.con
pushi.e 115
cmp.i.v EQ
bf [341]

:[340]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [342]

:[341]
push.e 0

:[342]
bf [346]

:[343]
push.v self.s
pushi.e -9
pushenv [345]

:[344]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e 12
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[345]
popenv [344]
pushi.e 116
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[346]
push.v self.con
pushi.e 117
cmp.i.v EQ
bf [348]

:[347]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [349]

:[348]
push.e 0

:[349]
bf [351]

:[350]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashafter_follow_slash_Step_0_gml_1038_0"@39140
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 118
pop.v.i self.con

:[351]
push.v self.con
pushi.e 118
cmp.i.v EQ
bf [353]

:[352]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [354]

:[353]
push.e 0

:[354]
bf [358]

:[355]
push.v self.r
pushi.e -9
pushenv [357]

:[356]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e 12
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[357]
popenv [356]
pushi.e 119
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[358]
push.v self.con
pushi.e 120
cmp.i.v EQ
bf [end]

:[359]
pushi.e 0
pop.v.i global.interact
call.i gml_Script_scr_losechar_ch1(argc=0)
popz.v
pushi.e 0
pop.v.i global.facing
pushi.e 121
pop.v.i self.con
pushi.e 1351
pushenv [361]

:[360]
pushi.e 1
pop.v.i self.cutscene

:[361]
popenv [360]
pushi.e 1660
conv.i.v
pushi.e 200
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 40
sub.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.block
pushi.e 20
push.v self.block
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[end]