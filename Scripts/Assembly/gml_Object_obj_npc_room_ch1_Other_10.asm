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
push.d 0.2
pop.v.d self.image_speed
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.d 0.2
pop.v.d self.image_speed

:[4]
push.i 231251
setowner.e
push.s "obj_npc_room_slash_Other_10_gml_11_0"@39953
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushbltn.v builtin.room
pushi.e 283
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_npc_room_slash_Other_10_gml_15_0"@39954
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_16_0"@39955
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[6]
pushbltn.v builtin.room
pushi.e 286
cmp.i.v EQ
bf [9]

:[7]
push.s "obj_npc_room_slash_Other_10_gml_21_0"@15797
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [9]

:[8]
pushi.e 455
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v
pushi.e 7
pop.v.i global.typer
pushi.e 4
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe

:[9]
pushbltn.v builtin.room
pushi.e 311
cmp.i.v EQ
bf [11]

:[10]
pushi.e 100
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v
pushi.e 4
pop.v.i global.fc

:[11]
pushbltn.v builtin.room
pushi.e 328
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_npc_room_slash_Other_10_gml_41_0"@39956
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[13]
pushbltn.v builtin.room
pushi.e 333
cmp.i.v EQ
bf [20]

:[14]
pushi.e -5
pushi.e 501
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.s "obj_npc_room_slash_Other_10_gml_48_0"@39957
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_49_0"@39958
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[16]
pushi.e -5
pushi.e 501
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_npc_room_slash_Other_10_gml_53_0"@39959
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[18]
pushi.e -5
pushi.e 501
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_npc_room_slash_Other_10_gml_57_0"@39960
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_58_0"@39961
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[20]
pushbltn.v builtin.room
pushi.e 334
cmp.i.v EQ
bf [22]

:[21]
pushi.e 145
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[22]
pushbltn.v builtin.room
pushi.e 336
cmp.i.v EQ
bf [24]

:[23]
pushi.e 147
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[24]
pushbltn.v builtin.room
pushi.e 335
cmp.i.v EQ
bf [37]

:[25]
push.v self.y
pushi.e 160
cmp.i.v GTE
bf [36]

:[26]
push.d 0.334
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.normalanim
push.s "obj_npc_room_slash_Other_10_gml_81_0"@39962
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_82_0"@39963
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_83_0"@39964
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_84_0"@39965
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_86_0"@39966
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_87_0"@39967
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [28]

:[27]
push.s "obj_npc_room_slash_Other_10_gml_90_0"@39968
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[28]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [31]

:[29]
push.s "obj_npc_room_slash_Other_10_gml_95_0"@39969
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
push.s "obj_npc_room_slash_Other_10_gml_97_0"@39970
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_99_0"@39971
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_101_0"@39972
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [31]

:[30]
push.s "obj_npc_room_slash_Other_10_gml_104_0"@39973
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
push.s "obj_npc_room_slash_Other_10_gml_106_0"@15815
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_108_0"@15819
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_110_0"@39974
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg

:[31]
pushi.e 6
conv.i.v
call.i gml_Script_scr_itemcheck_ch1(argc=1)
conv.v.b
bf [33]

:[32]
pushi.e 465
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[33]
pushi.e -5
pushi.e 253
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
pushi.e 470
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[35]
b [37]

:[36]
pushi.e 149
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[37]
pushbltn.v builtin.room
pushi.e 337
cmp.i.v EQ
bf [48]

:[38]
push.s "obj_npc_room_slash_Other_10_gml_137_0"@39975
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_138_0"@39976
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_139_0"@39977
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushglb.v global.plot
pushi.e 37
cmp.i.v LT
bf [40]

:[39]
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_143_0"@39978
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
b [41]

:[40]
push.s "obj_npc_room_slash_Other_10_gml_147_0"@39979
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[41]
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [43]

:[42]
push.s "obj_npc_room_slash_Other_10_gml_152_0"@39980
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[43]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [46]

:[44]
push.s "obj_npc_room_slash_Other_10_gml_157_0"@15853
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
push.s "obj_npc_room_slash_Other_10_gml_159_0"@15855
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [46]

:[45]
push.s "obj_npc_room_slash_Other_10_gml_165_0"@15861
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[46]
push.v self.x
pushi.e 1600
cmp.i.v GT
bf [48]

:[47]
pushi.e 5
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_npc_room_slash_Other_10_gml_175_0"@39981
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
push.s "obj_npc_room_slash_Other_10_gml_177_0"@39982
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_179_0"@39983
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[48]
pushbltn.v builtin.room
pushi.e 340
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_npc_room_slash_Other_10_gml_186_0"@39984
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_187_0"@15871
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_188_0"@39985
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[50]
pushbltn.v builtin.room
pushi.e 341
cmp.i.v EQ
bf [58]

:[51]
push.s "obj_npc_room_slash_Other_10_gml_193_0"@39986
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_194_0"@39987
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_195_0"@39988
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_196_0"@39989
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [54]

:[52]
push.s "obj_npc_room_slash_Other_10_gml_200_0"@15883
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_201_0"@39990
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_202_0"@15885
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [54]

:[53]
push.s "obj_npc_room_slash_Other_10_gml_205_0"@39991
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_206_0"@15889
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[54]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [58]

:[55]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [57]

:[56]
push.s "obj_npc_room_slash_Other_10_gml_214_0"@15893
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_215_0"@39992
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_216_0"@15895
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_217_0"@15897
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
b [58]

:[57]
push.s "obj_npc_room_slash_Other_10_gml_221_0"@39993
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_222_0"@15901
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_223_0"@15903
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_224_0"@39994
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[58]
pushbltn.v builtin.room
pushi.e 344
cmp.i.v EQ
bf [65]

:[59]
push.s "obj_npc_room_slash_Other_10_gml_233_0"@15907
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
bf [61]

:[60]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar_ch1(argc=1)
conv.v.b
b [62]

:[61]
push.e 0

:[62]
bf [65]

:[63]
push.s "obj_npc_room_slash_Other_10_gml_236_0"@39995
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_238_0"@15913
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
push.s "obj_npc_room_slash_Other_10_gml_240_0"@39996
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_242_0"@39997
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_243_0"@15915
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [65]

:[64]
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_248_0"@15919
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
push.s "obj_npc_room_slash_Other_10_gml_250_0"@39998
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_252_0"@15923
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
push.s "obj_npc_room_slash_Other_10_gml_254_0"@39999
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg

:[65]
pushbltn.v builtin.room
pushi.e 341
cmp.i.v EQ
bf [68]

:[66]
push.s "obj_npc_room_slash_Other_10_gml_262_0"@40000
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_263_0"@40001
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_264_0"@40002
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_265_0"@40003
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [68]

:[67]
push.s "obj_npc_room_slash_Other_10_gml_269_0"@40004
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_270_0"@40005
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[68]
pushbltn.v builtin.room
pushi.e 352
cmp.i.v EQ
bf [77]

:[69]
push.v self.sprite_index
pushi.e 3730
cmp.i.v EQ
bf [73]

:[70]
push.s "obj_npc_room_slash_Other_10_gml_278_0"@40006
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_279_0"@40007
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_280_0"@40008
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [72]

:[71]
push.s "obj_npc_room_slash_Other_10_gml_284_0"@40009
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_285_0"@40010
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_286_0"@15929
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[72]
b [77]

:[73]
push.s "obj_npc_room_slash_Other_10_gml_292_0"@40011
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_293_0"@40012
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_294_0"@40013
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [75]

:[74]
push.s "obj_npc_room_slash_Other_10_gml_297_0"@40014
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_298_0"@40015
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_299_0"@40016
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[75]
pushglb.v global.plot
pushi.e 60
cmp.i.v GTE
bf [77]

:[76]
push.s "obj_npc_room_slash_Other_10_gml_304_0"@40017
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_305_0"@40018
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_306_0"@40019
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[77]
pushbltn.v builtin.room
pushi.e 354
cmp.i.v EQ
bf [90]

:[78]
push.v self.sprite_index
pushi.e 3693
cmp.i.v EQ
bf [83]

:[79]
push.s "obj_npc_room_slash_Other_10_gml_316_0"@40020
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_317_0"@15941
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_318_0"@15943
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_319_0"@40021
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushglb.v global.plot
pushi.e 154
cmp.i.v GTE
bf [81]

:[80]
push.s "obj_npc_room_slash_Other_10_gml_322_0"@40022
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_323_0"@15945
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[81]
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [83]

:[82]
push.s "obj_npc_room_slash_Other_10_gml_327_0"@40023
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_328_0"@15949
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[83]
push.v self.sprite_index
pushi.e 3730
cmp.i.v EQ
bf [90]

:[84]
push.s "obj_npc_room_slash_Other_10_gml_334_0"@40024
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_335_0"@15953
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_336_0"@15955
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_337_0"@15957
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e -5
pushi.e 251
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
push.s "obj_npc_room_slash_Other_10_gml_340_0"@40025
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_341_0"@15959
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_342_0"@15961
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[86]
pushglb.v global.plot
pushi.e 154
cmp.i.v GTE
bf [88]

:[87]
push.s "obj_npc_room_slash_Other_10_gml_346_0"@40026
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_347_0"@40027
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[88]
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [90]

:[89]
push.s "obj_npc_room_slash_Other_10_gml_352_0"@15963
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_353_0"@15965
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[90]
pushbltn.v builtin.room
pushi.e 356
cmp.i.v EQ
bf [94]

:[91]
push.v self.sprite_index
pushi.e 3869
cmp.i.v EQ
bf [94]

:[92]
push.s "obj_npc_room_slash_Other_10_gml_365_0"@40028
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_366_0"@15977
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_367_0"@15979
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_368_0"@40029
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [94]

:[93]
push.s "obj_npc_room_slash_Other_10_gml_372_0"@40030
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[94]
pushbltn.v builtin.room
pushi.e 358
cmp.i.v EQ
bf [113]

:[95]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [111]

:[96]
push.s "obj_npc_room_slash_Other_10_gml_383_0"@40031
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_384_0"@40032
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e -5
pushi.e 108
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
pushi.e -5
pushi.e 233
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [101]

:[100]
push.s "obj_npc_room_slash_Other_10_gml_388_0"@15985
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_389_0"@15986
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_390_0"@15988
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_391_0"@15989
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[101]
pushi.e -5
pushi.e 108
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [103]

:[102]
push.s "obj_npc_room_slash_Other_10_gml_397_0"@40033
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_398_0"@15995
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_399_0"@15996
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 233
pop.v.v [array]self.flag

:[103]
pushi.e -5
pushi.e 108
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [106]

:[104]
pushi.e 9
conv.i.v
call.i gml_Script_scr_weaponcheck_inventory_ch1(argc=1)
pushi.e 0
cmp.i.v EQ
bf [106]

:[105]
pushi.e -5
pushi.e 3
push.v [array]self.charweapon
pushi.e 9
cmp.i.v NEQ
b [107]

:[106]
push.e 0

:[107]
bf [109]

:[108]
push.i 231251
setowner.e
push.s "obj_npc_room_slash_Other_10_gml_406_0"@16000
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_407_0"@16002
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[109]
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [111]

:[110]
push.s "obj_npc_room_slash_Other_10_gml_412_0"@40034
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_413_0"@40035
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[111]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [113]

:[112]
push.s "obj_npc_room_slash_Other_10_gml_420_0"@40036
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_421_0"@16008
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[113]
pushbltn.v builtin.room
pushi.e 362
cmp.i.v EQ
bf [115]

:[114]
push.s "obj_npc_room_slash_Other_10_gml_428_0"@16020
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_429_0"@16022
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 236
pop.v.v [array]self.flag

:[115]
pushbltn.v builtin.room
pushi.e 361
cmp.i.v EQ
bf [121]

:[116]
push.i 231251
setowner.e
push.s "obj_npc_room_slash_Other_10_gml_436_0"@40037
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_437_0"@40038
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [118]

:[117]
push.s "obj_npc_room_slash_Other_10_gml_442_0"@16035
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[118]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GTE
bf [121]

:[119]
push.s "obj_npc_room_slash_Other_10_gml_448_0"@40039
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_449_0"@40040
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [121]

:[120]
push.s "obj_npc_room_slash_Other_10_gml_454_0"@40041
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_455_0"@40042
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_456_0"@40043
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[121]
pushbltn.v builtin.room
pushi.e 363
cmp.i.v EQ
bf [133]

:[122]
push.v self.x
pushi.e 800
cmp.i.v LT
bf [124]

:[123]
pushi.e 325
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[124]
push.v self.x
pushi.e 800
cmp.i.v GTE
bf [126]

:[125]
push.v self.x
pushi.e 880
cmp.i.v LTE
b [127]

:[126]
push.e 0

:[127]
bf [129]

:[128]
pushi.e 327
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[129]
push.v self.x
pushi.e 920
cmp.i.v GTE
bf [133]

:[130]
pushglb.v global.plot
pushi.e 80
cmp.i.v LT
bf [132]

:[131]
pushi.e 330
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v
b [133]

:[132]
push.s "obj_npc_room_slash_Other_10_gml_486_0"@40044
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[133]
pushbltn.v builtin.room
pushi.e 365
cmp.i.v EQ
bf [136]

:[134]
push.s "obj_npc_room_slash_Other_10_gml_493_0"@40045
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_494_0"@40046
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_495_0"@40047
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [136]

:[135]
push.s "obj_npc_room_slash_Other_10_gml_498_0"@40048
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[136]
pushbltn.v builtin.room
pushi.e 369
cmp.i.v EQ
bf [138]

:[137]
push.s "obj_npc_room_slash_Other_10_gml_504_0"@40049
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_505_0"@40050
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 254
pop.v.v [array]self.flag

:[138]
pushbltn.v builtin.room
pushi.e 371
cmp.i.v EQ
bf [149]

:[139]
push.i 231251
setowner.e
push.s "obj_npc_room_slash_Other_10_gml_511_0"@40051
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_512_0"@40052
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_513_0"@16067
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_514_0"@40053
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [141]

:[140]
push.s "obj_npc_room_slash_Other_10_gml_515_0"@40054
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[141]
pushglb.v global.plot
pushi.e 90
cmp.i.v GTE
bf [143]

:[142]
push.s "obj_npc_room_slash_Other_10_gml_519_0"@40055
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[143]
push.v self.sprite_index
pushi.e 3593
cmp.i.v EQ
bf [146]

:[144]
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_npc_room_slash_Other_10_gml_527_0"@40056
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_529_0"@40057
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_531_0"@40058
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
push.s "obj_npc_room_slash_Other_10_gml_533_0"@40059
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
push.s "obj_npc_room_slash_Other_10_gml_535_0"@40060
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_537_0"@40061
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_538_0"@40062
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_540_0"@40063
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [146]

:[145]
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.s "obj_npc_room_slash_Other_10_gml_547_0"@40064
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
push.s "obj_npc_room_slash_Other_10_gml_549_0"@16077
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "A"@1192
conv.s.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_551_0"@40065
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_552_0"@40066
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg

:[146]
push.v self.sprite_index
pushi.e 3522
cmp.i.v EQ
bf [149]

:[147]
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_npc_room_slash_Other_10_gml_560_0"@40067
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_562_0"@40068
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_563_0"@16079
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_564_0"@16081
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_566_0"@40069
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_567_0"@40070
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_568_0"@40071
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
push.s "obj_npc_room_slash_Other_10_gml_570_0"@40072
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [149]

:[148]
pushi.e 1
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_npc_room_slash_Other_10_gml_577_0"@16089
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_578_0"@16091
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_580_0"@40073
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[149]
pushbltn.v builtin.room
pushi.e 378
cmp.i.v EQ
bf [152]

:[150]
pushi.e 31
pop.v.i global.typer
pushi.e 8
pop.v.i global.fe
pushi.e 2
pop.v.i global.fc
push.s "obj_npc_room_slash_Other_10_gml_591_0"@40074
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
push.s "obj_npc_room_slash_Other_10_gml_593_0"@40075
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [152]

:[151]
push.s "obj_npc_room_slash_Other_10_gml_597_0"@16105
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
push.s "obj_npc_room_slash_Other_10_gml_599_0"@16109
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[152]
pushbltn.v builtin.room
pushi.e 386
cmp.i.v EQ
bf [155]

:[153]
push.s "obj_npc_room_slash_Other_10_gml_606_0"@40076
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_607_0"@40077
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [155]

:[154]
push.s "obj_npc_room_slash_Other_10_gml_610_0"@40078
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[155]
pushbltn.v builtin.room
pushi.e 389
cmp.i.v EQ
bf [174]

:[156]
push.v self.sprite_index
pushi.e 3710
cmp.i.v EQ
bf [163]

:[157]
push.s "obj_npc_room_slash_Other_10_gml_618_0"@40079
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.tempvar
pushi.e 1
cmp.i.v EQ
bf [159]

:[158]
push.s "obj_npc_room_slash_Other_10_gml_619_0"@40080
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[159]
push.v self.tempvar
pushi.e 2
cmp.i.v EQ
bf [161]

:[160]
push.s "obj_npc_room_slash_Other_10_gml_620_0"@16133
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[161]
push.v self.tempvar
pushi.e 3
cmp.i.v EQ
bf [163]

:[162]
push.s "obj_npc_room_slash_Other_10_gml_621_0"@16135
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[163]
push.v self.sprite_index
pushi.e 3723
cmp.i.v EQ
bf [166]

:[164]
push.s "obj_npc_room_slash_Other_10_gml_626_0"@16139
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_627_0"@16141
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_628_0"@40081
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [166]

:[165]
push.s "obj_npc_room_slash_Other_10_gml_632_0"@40082
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[166]
push.v self.sprite_index
pushi.e 3722
cmp.i.v EQ
bf [169]

:[167]
push.s "obj_npc_room_slash_Other_10_gml_638_0"@40083
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_639_0"@40084
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_640_0"@40085
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [169]

:[168]
push.s "obj_npc_room_slash_Other_10_gml_644_0"@40086
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_645_0"@16131
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[169]
push.v self.sprite_index
pushi.e 3869
cmp.i.v EQ
bf [172]

:[170]
push.s "obj_npc_room_slash_Other_10_gml_653_0"@40087
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_654_0"@40088
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e -5
pushi.e 40
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
bf [172]

:[171]
push.s "obj_npc_room_slash_Other_10_gml_659_0"@40089
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[172]
push.v self.sprite_index
pushi.e 3696
cmp.i.v EQ
bf [174]

:[173]
push.s "obj_npc_room_slash_Other_10_gml_665_0"@40090
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_666_0"@40091
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[174]
pushbltn.v builtin.room
pushi.e 396
cmp.i.v EQ
bf [193]

:[175]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [177]

:[176]
push.s "obj_npc_room_slash_Other_10_gml_675_0"@40092
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_676_0"@40093
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [193]

:[177]
pushi.e -5
pushi.e 520
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [185]

:[178]
push.s "obj_npc_room_slash_Other_10_gml_682_0"@40094
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 243
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [180]

:[179]
push.s "obj_npc_room_slash_Other_10_gml_685_0"@16149
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
push.s "obj_npc_room_slash_Other_10_gml_687_0"@40095
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_689_0"@40096
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[180]
pushi.e -5
pushi.e 243
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [184]

:[181]
push.s "obj_npc_room_slash_Other_10_gml_694_0"@16175
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_695_0"@16177
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
push.s "obj_npc_room_slash_Other_10_gml_697_0"@16181
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_699_0"@16158
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_700_0"@40097
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_701_0"@40098
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 13
conv.i.v
call.i gml_Script_scr_itemget_ch1(argc=1)
popz.v
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [183]

:[182]
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_706_0"@40099
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
push.s "obj_npc_room_slash_Other_10_gml_708_0"@40100
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg

:[183]
push.i 231204
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 243
pop.v.v [array]self.flag

:[184]
b [193]

:[185]
pushi.e -5
pushi.e 243
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [187]

:[186]
push.s "obj_npc_room_slash_Other_10_gml_718_0"@40101
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_719_0"@40102
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[187]
pushi.e -5
pushi.e 243
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [189]

:[188]
push.s "obj_npc_room_slash_Other_10_gml_723_0"@40103
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[189]
pushi.e -5
pushi.e 243
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [191]

:[190]
push.s "obj_npc_room_slash_Other_10_gml_727_0"@40104
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_728_0"@40105
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_730_0"@40106
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_731_0"@16219
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[191]
pushi.e -5
pushi.e 243
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [193]

:[192]
pushi.e 425
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[193]
pushbltn.v builtin.room
pushi.e 398
cmp.i.v EQ
bf [195]

:[194]
push.i 231251
setowner.e
push.s "obj_npc_room_slash_Other_10_gml_746_0"@40107
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_747_0"@40108
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[195]
pushbltn.v builtin.room
pushi.e 400
cmp.i.v EQ
bf [209]

:[196]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [198]

:[197]
push.s "obj_npc_room_slash_Other_10_gml_754_0"@40109
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_755_0"@40110
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [209]

:[198]
pushi.e -5
pushi.e 521
push.v [array]self.flag
pushi.e 2
cmp.i.v LTE
bf [208]

:[199]
pushi.e -5
pushi.e 244
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [206]

:[200]
push.s "obj_npc_room_slash_Other_10_gml_764_0"@40111
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 521
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [205]

:[201]
push.s "obj_npc_room_slash_Other_10_gml_768_0"@40112
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_770_0"@16203
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_771_0"@40113
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_773_0"@40114
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_774_0"@40115
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e -5
pushi.e 43
dup.i 1
push.v [array]self.flag
pushi.e -5
pushi.e 524
push.v [array]self.flag
sub.v.v
pop.i.v [array]self.flag
pushi.e -5
pushi.e 43
push.v [array]self.flag
pushi.e 0
cmp.i.v LT
bf [203]

:[202]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 43
pop.v.v [array]self.flag

:[203]
pushi.e -5
pushi.e 521
push.v [array]self.flag
pushi.e -5
pushi.e 524
push.v [array]self.flag
sub.v.v
pop.v.v self.normal_kills
pushi.e -5
pushi.e 40
dup.i 1
push.v [array]self.flag
push.v self.normal_kills
sub.v.v
pop.i.v [array]self.flag
pushi.e -5
pushi.e 40
push.v [array]self.flag
pushi.e 0
cmp.i.v LT
bf [205]

:[204]
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 40
pop.v.v [array]self.flag

:[205]
b [207]

:[206]
push.s "obj_npc_room_slash_Other_10_gml_786_0"@40116
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[207]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 244
pop.v.v [array]self.flag
b [209]

:[208]
push.s "obj_npc_room_slash_Other_10_gml_792_0"@40117
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
push.s "obj_npc_room_slash_Other_10_gml_794_0"@16213
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_796_0"@16275
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
push.s "obj_npc_room_slash_Other_10_gml_798_0"@40118
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg

:[209]
pushbltn.v builtin.room
pushi.e 402
cmp.i.v EQ
bf [211]

:[210]
push.i 231251
setowner.e
push.s "obj_npc_room_slash_Other_10_gml_806_0"@40119
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_807_0"@40120
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[211]
pushbltn.v builtin.room
pushi.e 403
cmp.i.v EQ
bf [219]

:[212]
push.s "obj_npc_room_slash_Other_10_gml_812_0"@40121
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_813_0"@40122
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_814_0"@40123
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e -5
pushi.e 522
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [214]

:[213]
push.s "obj_npc_room_slash_Other_10_gml_817_0"@40124
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_818_0"@40125
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[214]
push.v self.x
pushi.e 160
cmp.i.v LT
bf [216]

:[215]
push.s "obj_npc_room_slash_Other_10_gml_823_0"@40126
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[216]
push.v self.x
pushi.e 400
cmp.i.v GT
bf [219]

:[217]
push.s "obj_npc_room_slash_Other_10_gml_827_0"@16302
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_828_0"@40127
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_829_0"@40128
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [219]

:[218]
push.s "obj_npc_room_slash_Other_10_gml_832_0"@40129
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[219]
pushbltn.v builtin.room
pushi.e 407
cmp.i.v EQ
bf [240]

:[220]
push.v self.y
pushi.e 300
cmp.i.v LT
bf [229]

:[221]
push.v self.sprite_index
pushi.e 3710
cmp.i.v EQ
bf [224]

:[222]
push.s "obj_npc_room_slash_Other_10_gml_844_0"@40130
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.tempvar
pushi.e 1
cmp.i.v EQ
bf [224]

:[223]
push.s "obj_npc_room_slash_Other_10_gml_845_0"@40131
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[224]
push.v self.sprite_index
pushi.e 3723
cmp.i.v EQ
bf [226]

:[225]
push.s "obj_npc_room_slash_Other_10_gml_849_0"@16237
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_850_0"@16239
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[226]
push.v self.sprite_index
pushi.e 3722
cmp.i.v EQ
bf [228]

:[227]
push.s "obj_npc_room_slash_Other_10_gml_855_0"@16243
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_856_0"@40132
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[228]
b [240]

:[229]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [233]

:[230]
push.s "obj_npc_room_slash_Other_10_gml_865_0"@40133
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_866_0"@40134
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_867_0"@40135
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [232]

:[231]
push.s "obj_npc_room_slash_Other_10_gml_870_0"@40136
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_871_0"@16249
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[232]
b [240]

:[233]
push.s "obj_npc_room_slash_Other_10_gml_876_0"@16253
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_877_0"@40137
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e -5
pushi.e 295
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [235]

:[234]
push.s "obj_npc_room_slash_Other_10_gml_880_0"@40138
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_882_0"@40139
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_884_0"@40140
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[235]
pushi.e -5
pushi.e 253
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [237]

:[236]
pushi.e -5
pushi.e 295
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [238]

:[237]
push.e 0

:[238]
bf [240]

:[239]
push.s "obj_npc_room_slash_Other_10_gml_888_0"@40141
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_889_0"@40142
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_890_0"@40143
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
push.s "obj_npc_room_slash_Other_10_gml_892_0"@40144
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 5
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_894_0"@40145
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_895_0"@16255
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 5
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_897_0"@16259
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_898_0"@40146
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 295
pop.v.v [array]self.flag

:[240]
pushbltn.v builtin.room
pushi.e 408
cmp.i.v EQ
bf [250]

:[241]
push.v self.x
pushi.e 180
cmp.i.v GT
bf [243]

:[242]
push.i 231251
setowner.e
push.s "obj_npc_room_slash_Other_10_gml_913_0"@40147
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[243]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [246]

:[244]
push.s "obj_npc_room_slash_Other_10_gml_917_0"@40148
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_918_0"@40149
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [246]

:[245]
push.s "obj_npc_room_slash_Other_10_gml_919_0"@40150
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[246]
push.v self.x
pushi.e 460
cmp.i.v GT
bf [248]

:[247]
push.s "obj_npc_room_slash_Other_10_gml_923_0"@40151
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_924_0"@16269
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.s "/"@4448
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_925_0"@16271
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[248]
push.v self.x
pushi.e 680
cmp.i.v GT
bf [250]

:[249]
push.s "obj_npc_room_slash_Other_10_gml_930_0"@40152
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_931_0"@40153
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_932_0"@40154
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[250]
pushbltn.v builtin.room
pushi.e 409
cmp.i.v EQ
bf [277]

:[251]
push.v self.sprite_index
pushi.e 3687
cmp.i.v EQ
bf [254]

:[252]
pushi.e 18
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_room_slash_Other_10_gml_944_0"@40155
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_945_0"@40156
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_946_0"@40157
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_947_0"@40158
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [254]

:[253]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_npc_room_slash_Other_10_gml_955_0"@40159
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rurusface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_957_0"@40160
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_958_0"@40161
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
push.s "obj_npc_room_slash_Other_10_gml_960_0"@40162
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_rurusface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_962_0"@16289
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_964_0"@16291
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg

:[254]
push.v self.y
pushi.e 160
cmp.i.v LT
bf [274]

:[255]
push.v self.x
pushi.e 398
cmp.i.v EQ
bf [257]

:[256]
push.s "obj_npc_room_slash_Other_10_gml_972_0"@40163
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_973_0"@40164
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_974_0"@40165
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[257]
push.v self.x
pushi.e 522
cmp.i.v EQ
bf [260]

:[258]
push.s "obj_npc_room_slash_Other_10_gml_978_0"@40166
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_979_0"@40167
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [260]

:[259]
push.s "obj_npc_room_slash_Other_10_gml_982_0"@40168
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[260]
push.v self.x
pushi.e 740
cmp.i.v EQ
bf [262]

:[261]
push.s "obj_npc_room_slash_Other_10_gml_988_0"@40169
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[262]
push.v self.x
pushi.e 820
cmp.i.v EQ
bf [264]

:[263]
push.s "obj_npc_room_slash_Other_10_gml_992_0"@40170
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[264]
push.v self.x
pushi.e 940
cmp.i.v EQ
bf [266]

:[265]
push.s "obj_npc_room_slash_Other_10_gml_996_0"@40171
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[266]
push.v self.x
pushi.e 1020
cmp.i.v EQ
bf [268]

:[267]
push.s "obj_npc_room_slash_Other_10_gml_1000_0"@40172
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[268]
push.v self.x
pushi.e 1140
cmp.i.v GT
bf [273]

:[269]
push.s "obj_npc_room_slash_Other_10_gml_1004_0"@40173
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1005_0"@40174
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e -5
pushi.e 216
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [271]

:[270]
push.s "obj_npc_room_slash_Other_10_gml_1008_0"@40175
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[271]
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [273]

:[272]
push.s "obj_npc_room_slash_Other_10_gml_1013_0"@40176
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1014_0"@40177
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[273]
b [277]

:[274]
push.v self.x
pushi.e 900
cmp.i.v LT
bf [276]

:[275]
push.s "obj_npc_room_slash_Other_10_gml_1022_0"@40178
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1023_0"@40179
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1024_0"@40180
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
b [277]

:[276]
push.s "obj_npc_room_slash_Other_10_gml_1028_0"@40181
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[277]
pushbltn.v builtin.room
pushi.e 301
cmp.i.v EQ
bf [282]

:[278]
pushi.e 55
pop.v.i global.typer
pushi.e 15
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e -5
pushi.e 255
push.v [array]self.flag
pushi.e 2
cmp.i.v LT
bf [280]

:[279]
pushi.e 180
pop.v.i global.msc
b [281]

:[280]
pushi.e 181
pop.v.i global.msc

:[281]
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[282]
pushbltn.v builtin.room
pushi.e 307
cmp.i.v EQ
bf [285]

:[283]
push.s "obj_npc_room_slash_Other_10_gml_1049_0"@16320
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1050_0"@40182
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [285]

:[284]
push.s "obj_npc_room_slash_Other_10_gml_1054_0"@40183
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1055_0"@40184
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[285]
pushbltn.v builtin.room
pushi.e 297
cmp.i.v EQ
bf [287]

:[286]
pushi.e 190
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[287]
pushbltn.v builtin.room
pushi.e 304
cmp.i.v EQ
bf [296]

:[288]
push.s "obj_npc_room_slash_Other_10_gml_1068_0"@16325
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1069_0"@40185
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1070_0"@40186
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1071_0"@16327
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [290]

:[289]
push.s "obj_npc_room_slash_Other_10_gml_1074_0"@40187
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1075_0"@40188
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[290]
push.v self.x
pushi.e 100
cmp.i.v GT
bf [293]

:[291]
push.s "obj_npc_room_slash_Other_10_gml_1081_0"@16337
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1082_0"@40189
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [293]

:[292]
push.s "obj_npc_room_slash_Other_10_gml_1086_0"@16341
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1087_0"@16343
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[293]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [296]

:[294]
push.s "obj_npc_room_slash_Other_10_gml_1097_0"@40190
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1098_0"@40191
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1099_0"@40192
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [296]

:[295]
push.s "obj_npc_room_slash_Other_10_gml_1103_0"@16351
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1104_0"@16353
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[296]
pushbltn.v builtin.room
pushi.e 303
cmp.i.v EQ
bf [324]

:[297]
push.v self.sprite_index
pushi.e 3633
cmp.i.v EQ
bf [300]

:[298]
pushi.e 13
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_room_slash_Other_10_gml_1118_0"@40193
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1119_0"@16381
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1120_0"@40194
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1121_0"@16359
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1122_0"@16361
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1123_0"@16363
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1124_0"@16365
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [300]

:[299]
push.s "obj_npc_room_slash_Other_10_gml_1128_0"@40195
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1129_0"@40196
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1130_0"@40197
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[300]
push.v self.sprite_index
pushi.e 3631
cmp.i.v EQ
bf [303]

:[301]
push.s "obj_npc_room_slash_Other_10_gml_1136_0"@40198
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1137_0"@40199
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [303]

:[302]
push.s "obj_npc_room_slash_Other_10_gml_1139_0"@16391
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[303]
push.v self.x
pushi.e 120
cmp.i.v GTE
bf [305]

:[304]
push.v self.x
pushi.e 140
cmp.i.v LTE
b [306]

:[305]
push.e 0

:[306]
bf [310]

:[307]
push.s "obj_npc_room_slash_Other_10_gml_1145_0"@40200
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 261
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [310]

:[308]
push.s "obj_npc_room_slash_Other_10_gml_1151_0"@16403
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1153_0"@16405
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1154_0"@40201
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1155_0"@16407
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1156_0"@40202
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1157_0"@40203
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1158_0"@40204
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1159_0"@40205
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1160_0"@40206
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1161_0"@40207
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1162_0"@40208
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1163_0"@40209
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1164_0"@40210
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1165_0"@40211
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 261
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.noroom
pushi.e 1
conv.i.v
call.i gml_Script_scr_litemget_ch1(argc=1)
popz.v
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [310]

:[309]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 261
pop.v.v [array]self.flag
push.i 231251
setowner.e
push.s "obj_npc_room_slash_Other_10_gml_1172_0"@40212
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1173_0"@16415
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1174_0"@16417
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]self.msg

:[310]
push.v self.x
pushi.e 240
cmp.i.v GT
bf [311]

:[311]
push.v self.y
pushi.e 140
cmp.i.v GT
bf [318]

:[312]
push.v self.x
pushi.e 180
cmp.i.v GT
bf [315]

:[313]
push.s "obj_npc_room_slash_Other_10_gml_1198_0"@40213
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1199_0"@40214
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [315]

:[314]
push.s "obj_npc_room_slash_Other_10_gml_1202_0"@40215
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[315]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [318]

:[316]
push.s "obj_npc_room_slash_Other_10_gml_1212_0"@40216
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1213_0"@40217
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1214_0"@40218
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [318]

:[317]
push.s "obj_npc_room_slash_Other_10_gml_1217_0"@40219
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[318]
push.v self.sprite_index
pushi.e 3628
cmp.i.v EQ
bf [321]

:[319]
push.s "obj_npc_room_slash_Other_10_gml_1226_0"@40220
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1227_0"@16435
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [321]

:[320]
push.s "obj_npc_room_slash_Other_10_gml_1231_0"@40221
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[321]
push.v self.sprite_index
pushi.e 3626
cmp.i.v EQ
bf [324]

:[322]
push.s "obj_npc_room_slash_Other_10_gml_1237_0"@40222
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1238_0"@40223
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1239_0"@16445
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [324]

:[323]
push.s "obj_npc_room_slash_Other_10_gml_1243_0"@40224
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[324]
pushbltn.v builtin.room
pushi.e 294
cmp.i.v EQ
bf [329]

:[325]
push.v self.sprite_index
pushi.e 3676
cmp.i.v EQ
bf [327]

:[326]
push.s "obj_npc_room_slash_Other_10_gml_1255_0"@40225
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1256_0"@40226
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[327]
push.v self.sprite_index
pushi.e 3677
cmp.i.v EQ
bf [329]

:[328]
push.s "obj_npc_room_slash_Other_10_gml_1260_0"@40227
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1261_0"@40228
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1262_0"@40229
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[329]
pushbltn.v builtin.room
pushi.e 292
cmp.i.v EQ
bf [337]

:[330]
push.v self.sprite_index
pushi.e 3648
cmp.i.v EQ
bf [332]

:[331]
pushi.e 340
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[332]
push.v self.sprite_index
pushi.e 3519
cmp.i.v EQ
bf [335]

:[333]
push.s "obj_npc_room_slash_Other_10_gml_1276_0"@40230
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1277_0"@40231
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1278_0"@40232
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1279_0"@40233
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1280_0"@40234
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1281_0"@40235
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1282_0"@40236
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1283_0"@40237
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [335]

:[334]
push.s "obj_npc_room_slash_Other_10_gml_1287_0"@40238
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1288_0"@40239
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1289_0"@40240
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[335]
push.v self.sprite_index
pushi.e 3515
cmp.i.v EQ
bf [337]

:[336]
push.s "obj_npc_room_slash_Other_10_gml_1295_0"@40241
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1296_0"@16466
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1297_0"@16468
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1298_0"@40242
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[337]
pushbltn.v builtin.room
pushi.e 290
cmp.i.v EQ
bf [346]

:[338]
push.v self.sprite_index
pushi.e 3656
cmp.i.v EQ
bf [340]

:[339]
pushi.e 16
pop.v.i global.fc
pushi.e 5
pop.v.i global.typer
pushi.e 215
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[340]
push.v self.sprite_index
pushi.e 3654
cmp.i.v EQ
bf [344]

:[341]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [343]

:[342]
push.s "obj_npc_room_slash_Other_10_gml_1316_0"@40243
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1317_0"@40244
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1318_0"@40245
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1319_0"@40246
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
b [344]

:[343]
push.s "obj_npc_room_slash_Other_10_gml_1323_0"@40247
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1324_0"@40248
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1325_0"@40249
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1326_0"@16482
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[344]
push.v self.sprite_index
pushi.e 3655
cmp.i.v EQ
bf [346]

:[345]
pushi.e 17
pop.v.i global.fc
pushi.e 5
pop.v.i global.typer
pushi.e 220
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[346]
pushbltn.v builtin.room
pushi.e 296
cmp.i.v EQ
bf [348]

:[347]
pushi.e 345
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[348]
pushbltn.v builtin.room
pushi.e 299
cmp.i.v EQ
bf [353]

:[349]
push.s "obj_npc_room_slash_Other_10_gml_1348_0"@16492
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1349_0"@40250
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [351]

:[350]
push.s "obj_npc_room_slash_Other_10_gml_1353_0"@40251
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1354_0"@40252
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1355_0"@40253
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[351]
push.v self.tempvar
pushi.e 1
cmp.i.v GTE
bf [353]

:[352]
push.s "obj_npc_room_slash_Other_10_gml_1361_0"@40254
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1362_0"@40255
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[353]
pushbltn.v builtin.room
pushi.e 291
cmp.i.v EQ
bf [358]

:[354]
push.v self.sprite_index
pushi.e 3679
cmp.i.v EQ
bf [356]

:[355]
push.s "obj_npc_room_slash_Other_10_gml_1371_0"@40256
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1372_0"@40257
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[356]
push.v self.sprite_index
pushi.e 3680
cmp.i.v EQ
bf [358]

:[357]
push.s "obj_npc_room_slash_Other_10_gml_1376_0"@40258
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_1377_0"@40259
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[358]
push.v self.image_speed
pop.v.v self.remanimspeed
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