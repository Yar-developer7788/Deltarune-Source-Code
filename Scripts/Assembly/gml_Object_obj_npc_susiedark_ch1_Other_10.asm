.localvar 2 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
pushbltn.v builtin.room
pushi.e 326
cmp.i.v EQ
bf [3]

:[1]
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_npc_susiedark_slash_Other_10_gml_13_0"@15523
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_susiedark_slash_Other_10_gml_14_0"@15525
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_susiedark_slash_Other_10_gml_15_0"@15527
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_susiedark_slash_Other_10_gml_16_0"@15529
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [3]

:[2]
push.s "obj_npc_susiedark_slash_Other_10_gml_20_0"@15531
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_susiedark_slash_Other_10_gml_21_0"@15533
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_susiedark_slash_Other_10_gml_22_0"@15535
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[3]
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.mydialoguer

:[end]