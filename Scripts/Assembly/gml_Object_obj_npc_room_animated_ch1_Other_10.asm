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
push.i 231251
setowner.e
push.s "obj_npc_room_animated_slash_Other_10_gml_8_0"@17749
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushbltn.v builtin.room
pushi.e 315
cmp.i.v EQ
bf [8]

:[3]
push.s "obj_npc_room_animated_slash_Other_10_gml_12_0"@40260
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_13_0"@40261
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_14_0"@40262
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e 6
conv.i.v
call.i gml_Script_scr_get_input_name_ch1(argc=1)
add.v.v
push.s "obj_npc_room_animated_slash_Other_10_gml_14_1"@40263
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
add.v.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.i 231332
setowner.e
pushi.e 441
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.writersnd
pushi.e 478
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.writersnd
pushi.e -5
pushi.e 10
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.i 231251
setowner.e
push.s "obj_npc_room_animated_slash_Other_10_gml_20_0"@17762
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[5]
pushi.e 1413
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.visible

:[7]
popenv [6]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.flag

:[8]
pushbltn.v builtin.room
pushi.e 292
cmp.i.v EQ
bf [18]

:[9]
push.v self.sprite_index
pushi.e 3645
cmp.i.v EQ
bf [12]

:[10]
push.i 231251
setowner.e
push.s "obj_npc_room_animated_slash_Other_10_gml_31_0"@40264
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_32_0"@40265
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_33_0"@40266
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_34_0"@40267
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_35_0"@17774
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_36_0"@40268
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_37_0"@40269
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_38_0"@40270
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [12]

:[11]
push.s "obj_npc_room_animated_slash_Other_10_gml_42_0"@17780
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_43_0"@17781
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_44_0"@17783
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[12]
push.v self.sprite_index
pushi.e 3646
cmp.i.v EQ
bf [14]

:[13]
push.s "obj_npc_room_animated_slash_Other_10_gml_51_0"@17785
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[14]
push.v self.sprite_index
pushi.e 3644
cmp.i.v EQ
bf [18]

:[15]
push.s "obj_npc_room_animated_slash_Other_10_gml_56_0"@17791
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_57_0"@40271
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_58_0"@40272
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_59_0"@40273
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_60_0"@40274
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 1347
pushenv [17]

:[16]
pushi.e 20
pop.v.i self.con

:[17]
popenv [16]

:[18]
pushbltn.v builtin.room
pushi.e 303
cmp.i.v EQ
bf [21]

:[19]
push.s "obj_npc_room_animated_slash_Other_10_gml_67_0"@40275
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_68_0"@40276
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_69_0"@40277
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [21]

:[20]
push.s "obj_npc_room_animated_slash_Other_10_gml_72_0"@17797
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[21]
pushbltn.v builtin.room
pushi.e 403
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_npc_room_animated_slash_Other_10_gml_78_0"@40278
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[23]
pushbltn.v builtin.room
pushi.e 406
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_npc_room_animated_slash_Other_10_gml_83_0"@40279
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_84_0"@40280
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[25]
pushbltn.v builtin.room
pushi.e 407
cmp.i.v EQ
bf [27]

:[26]
push.s "obj_npc_room_animated_slash_Other_10_gml_89_0"@40281
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_90_0"@40282
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[27]
pushbltn.v builtin.room
pushi.e 337
cmp.i.v EQ
bf [30]

:[28]
push.s "obj_npc_room_animated_slash_Other_10_gml_95_0"@17803
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [30]

:[29]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fe
push.s "obj_npc_room_animated_slash_Other_10_gml_101_0"@40283
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[30]
pushbltn.v builtin.room
pushi.e 371
cmp.i.v EQ
bf [41]

:[31]
push.v self.y
pushi.e 200
cmp.i.v GTE
bf [37]

:[32]
push.s "obj_npc_room_animated_slash_Other_10_gml_109_0"@40284
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_110_0"@40285
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_111_0"@40286
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [34]

:[33]
push.s "obj_npc_room_animated_slash_Other_10_gml_114_0"@17817
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_115_0"@40287
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_116_0"@17819
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[34]
pushglb.v global.plot
pushi.e 90
cmp.i.v GTE
bf [36]

:[35]
push.s "obj_npc_room_animated_slash_Other_10_gml_121_0"@40288
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_122_0"@40289
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[36]
b [41]

:[37]
push.s "obj_npc_room_animated_slash_Other_10_gml_128_0"@40290
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_129_0"@40291
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
push.s "obj_npc_room_animated_slash_Other_10_gml_131_0"@17823
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_132_0"@17825
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 5
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_134_0"@17829
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [39]

:[38]
push.s "obj_npc_room_animated_slash_Other_10_gml_137_0"@40292
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[39]
pushglb.v global.plot
pushi.e 90
cmp.i.v GTE
bf [41]

:[40]
push.s "obj_npc_room_animated_slash_Other_10_gml_141_0"@40293
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_142_0"@40294
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[41]
pushi.e 3
pop.v.i self.myinteract
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.mydialoguer
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]