.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 6
pop.v.i global.typer

:[2]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.nodialogue
pushbltn.v builtin.room
pushi.e 316
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.nodialogue
push.i 231251
setowner.e
push.s "obj_savepoint_slash_Other_10_gml_17_0"@18169
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_18_0"@18171
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[4]
pushbltn.v builtin.room
pushi.e 321
cmp.i.v EQ
bf [13]

:[5]
pushi.e 0
pop.v.i self.nodialogue
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
cmp.v.v LT
bf [7]

:[6]
push.s "obj_savepoint_slash_Other_10_gml_26_0"@39452
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_27_0"@39453
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_28_0"@39454
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[7]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 30
cmp.i.v LT
bf [9]

:[8]
push.s "obj_savepoint_slash_Other_10_gml_33_0"@18245
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_34_0"@39455
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[9]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
cmp.v.v EQ
bf [11]

:[10]
push.s "obj_savepoint_slash_Other_10_gml_39_0"@39456
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_40_0"@39457
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_41_0"@18183
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[11]
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [13]

:[12]
pushi.e 1
pop.v.i self.nodialogue

:[13]
pushbltn.v builtin.room
pushi.e 326
cmp.i.v EQ
bf [16]

:[14]
pushi.e 0
pop.v.i self.nodialogue
push.s "obj_savepoint_slash_Other_10_gml_51_0"@18195
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_52_0"@39458
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_53_0"@39459
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [16]

:[15]
push.s "obj_savepoint_slash_Other_10_gml_57_0"@39460
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_58_0"@39461
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[16]
pushbltn.v builtin.room
pushi.e 330
cmp.i.v EQ
bf [19]

:[17]
pushi.e 0
pop.v.i self.nodialogue
push.s "obj_savepoint_slash_Other_10_gml_66_0"@18203
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_67_0"@39462
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushglb.v global.plot
pushi.e 37
cmp.i.v GTE
bf [19]

:[18]
push.s "obj_savepoint_slash_Other_10_gml_71_0"@39463
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_72_0"@39464
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[19]
pushbltn.v builtin.room
pushi.e 340
cmp.i.v EQ
bf [22]

:[20]
pushi.e 0
pop.v.i self.nodialogue
push.s "obj_savepoint_slash_Other_10_gml_80_0"@18209
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_81_0"@39465
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_savepoint_slash_Other_10_gml_84_0"@39466
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_85_0"@39467
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[22]
pushbltn.v builtin.room
pushi.e 349
cmp.i.v EQ
bf [30]

:[23]
pushi.e 0
pop.v.i self.nodialogue
push.s "obj_savepoint_slash_Other_10_gml_92_0"@39468
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tname
pushi.e -5
pushi.e 214
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_savepoint_slash_Other_10_gml_93_0"@18215
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tname

:[25]
pushi.e -5
pushi.e 214
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_savepoint_slash_Other_10_gml_94_0"@18217
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tname

:[27]
pushi.e -5
pushi.e 214
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [29]

:[28]
push.s "obj_savepoint_slash_Other_10_gml_95_0"@39470
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.tname

:[29]
push.v self.tname
push.s "obj_savepoint_slash_Other_10_gml_96_0"@39471
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[30]
pushbltn.v builtin.room
pushi.e 354
cmp.i.v EQ
bf [32]

:[31]
pushi.e 0
pop.v.i self.nodialogue
push.s "obj_savepoint_slash_Other_10_gml_102_0"@39472
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_103_0"@39473
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[32]
pushbltn.v builtin.room
pushi.e 363
cmp.i.v EQ
bf [34]

:[33]
pushi.e 0
pop.v.i self.nodialogue
push.s "obj_savepoint_slash_Other_10_gml_110_0"@39474
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_111_0"@39475
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[34]
pushi.e 3
pop.v.i self.myinteract
push.v self.nodialogue
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.mydialoguer

:[36]
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked
pushi.e 431
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[37]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [end]

:[38]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.hp
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.maxhp
cmp.v.v LT
bf [40]

:[39]
push.i 231131
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.maxhp
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hp

:[40]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [37]

:[end]