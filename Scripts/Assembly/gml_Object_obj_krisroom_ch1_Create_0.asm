.localvar 2 arguments

:[0]
pushglb.v global.plot
pushi.e 10
cmp.i.v LTE
bf [2]

:[1]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.image_speed
pushi.e 3454
conv.i.v
pushi.e 40
conv.i.v
pushi.e 140
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.wallwindow
push.v self.wallwindow
pushi.e -9
pushenv [4]

:[3]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[4]
popenv [3]
pushglb.v global.plot
pushi.e 0
cmp.i.v GT
bf [8]

:[5]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
push.v self.wallwindow
pushi.e -9
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.image_index

:[7]
popenv [6]
pushi.e 1
pop.v.i self.image_index
b [end]

:[8]
push.s "obj_krisroom_slash_Create_0_gml_14_0"@38371
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_windowcaption_ch1(argc=1)
popz.v
pushi.e 3468
conv.i.v
pushi.e 97
conv.i.v
pushi.e 151
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.t
push.v self.t
pushi.e -9
pushenv [10]

:[9]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
push.d 0.25
pop.v.d self.image_speed

:[10]
popenv [9]
pushi.e 0
pop.v.i global.msc
pushi.e 7
pop.v.i global.typer
pushi.e 4
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_krisroom_slash_Create_0_gml_21_0"@38372
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_krisroom_slash_Create_0_gml_22_0"@38373
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.d
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i global.facing

:[end]