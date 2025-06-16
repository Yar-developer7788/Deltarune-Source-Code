.localvar 2 arguments

:[0]
pushi.e 8
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_carcutscene_slash_Alarm_5_gml_2_0"@38356
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_carcutscene_slash_Alarm_5_gml_3_0"@38357
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_carcutscene_slash_Alarm_5_gml_4_0"@38358
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_carcutscene_slash_Alarm_5_gml_5_0"@38359
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 1331
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 40
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.myd
push.v self.myd
pushi.e -9
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.skippable

:[2]
popenv [1]
push.v self.myd
pushi.e -9
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.persistent

:[4]
popenv [3]
pushi.e 1
pop.v.i self.dhaver

:[end]