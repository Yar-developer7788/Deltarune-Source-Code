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
push.s "obj_npc_sign_slash_Other_10_gml_8_0"@40324
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushbltn.v builtin.room
pushi.e 332
cmp.i.v EQ
bf [7]

:[3]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [5]

:[4]
push.s "obj_npc_sign_slash_Other_10_gml_12_0"@40325
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[5]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [7]

:[6]
push.s "obj_npc_sign_slash_Other_10_gml_13_0"@40326
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[7]
pushbltn.v builtin.room
pushi.e 333
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_npc_sign_slash_Other_10_gml_30_0"@40327
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[9]
pushbltn.v builtin.room
pushi.e 334
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_npc_sign_slash_Other_10_gml_41_0"@40328
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_sign_slash_Other_10_gml_42_0"@40329
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e 6
conv.i.v
call.i gml_Script_scr_get_input_name_ch1(argc=1)
add.v.v
push.s "obj_npc_sign_slash_Other_10_gml_42_1"@40330
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
add.v.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_sign_slash_Other_10_gml_43_0"@40331
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[11]
pushbltn.v builtin.room
pushi.e 337
cmp.i.v EQ
bf [28]

:[12]
push.v self.y
pushi.e 80
cmp.i.v GT
bf [14]

:[13]
push.s "obj_npc_sign_slash_Other_10_gml_49_0"@40332
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[14]
push.v self.y
pushi.e 200
cmp.i.v GT
bf [16]

:[15]
push.s "obj_npc_sign_slash_Other_10_gml_52_0"@40333
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_sign_slash_Other_10_gml_53_0"@40334
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[16]
push.v self.y
pushi.e 640
cmp.i.v GT
bf [18]

:[17]
push.s "obj_npc_sign_slash_Other_10_gml_55_0"@17159
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[18]
push.v self.y
pushi.e 1000
cmp.i.v GT
bf [20]

:[19]
push.v self.x
pushi.e 1000
cmp.i.v GT
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.s "obj_npc_sign_slash_Other_10_gml_56_0"@40335
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[23]
push.v self.y
pushi.e 1000
cmp.i.v GT
bf [25]

:[24]
push.v self.x
pushi.e 600
cmp.i.v LT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.s "obj_npc_sign_slash_Other_10_gml_57_0"@40336
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[28]
pushbltn.v builtin.room
pushi.e 339
cmp.i.v EQ
bf [30]

:[29]
push.s "obj_npc_sign_slash_Other_10_gml_63_0"@40337
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[30]
pushbltn.v builtin.room
pushi.e 342
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_npc_sign_slash_Other_10_gml_68_0"@40338
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_sign_slash_Other_10_gml_69_0"@40339
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[32]
pushbltn.v builtin.room
pushi.e 341
cmp.i.v EQ
bf [34]

:[33]
push.s "obj_npc_sign_slash_Other_10_gml_74_0"@40340
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_sign_slash_Other_10_gml_75_0"@40341
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[34]
pushbltn.v builtin.room
pushi.e 345
cmp.i.v EQ
bf [37]

:[35]
push.s "obj_npc_sign_slash_Other_10_gml_80_0"@40342
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_sign_slash_Other_10_gml_81_0"@40343
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [37]

:[36]
push.s "obj_npc_sign_slash_Other_10_gml_84_0"@40344
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[37]
pushbltn.v builtin.room
pushi.e 359
cmp.i.v EQ
bf [39]

:[38]
push.s "obj_npc_sign_slash_Other_10_gml_90_0"@40345
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_sign_slash_Other_10_gml_91_0"@40346
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[39]
pushbltn.v builtin.room
pushi.e 368
cmp.i.v EQ
bf [40]

:[40]
pushbltn.v builtin.room
pushi.e 386
cmp.i.v EQ
bf [42]

:[41]
push.i 231204
setowner.e
pushi.e -5
pushi.e 231
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag
pushi.e 300
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[42]
pushbltn.v builtin.room
pushi.e 389
cmp.i.v EQ
bf [44]

:[43]
push.i 231251
setowner.e
push.s "obj_npc_sign_slash_Other_10_gml_161_0"@40347
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_sign_slash_Other_10_gml_162_0"@40348
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[44]
pushbltn.v builtin.room
pushi.e 407
cmp.i.v EQ
bf [49]

:[45]
push.v self.sprite_index
pushi.e 3721
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_npc_sign_slash_Other_10_gml_169_0"@40349
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[47]
push.v self.sprite_index
pushi.e 3720
cmp.i.v EQ
bf [49]

:[48]
push.s "obj_npc_sign_slash_Other_10_gml_173_0"@40350
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[49]
pushbltn.v builtin.room
pushi.e 306
cmp.i.v EQ
bf [51]

:[50]
push.v self.colortxt
push.s "obj_npc_sign_slash_Other_10_gml_179_0"@40351
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[51]
pushbltn.v builtin.room
pushi.e 290
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_npc_sign_slash_Other_10_gml_184_0"@40352
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_sign_slash_Other_10_gml_185_0"@40353
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[53]
pushbltn.v builtin.room
pushi.e 291
cmp.i.v EQ
bf [55]

:[54]
pushi.e 192
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[55]
pushbltn.v builtin.room
pushi.e 288
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_npc_sign_slash_Other_10_gml_196_0"@17197
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[57]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read
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

:[end]