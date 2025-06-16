.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [8]

:[4]
push.v 1351.y
pushi.e 160
cmp.i.v LTE
bf [8]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 1411
pop.v.i self.a
push.v self.a
pushi.e -9
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 3485
pop.v.i self.sprite_index

:[7]
popenv [6]
pushi.e 1490
conv.i.v
push.v self.a
pushi.e -9
push.v [stacktop]self.y
pushi.e 6
sub.i.v
push.v self.a
pushi.e -9
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.exc
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[8]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [12]

:[9]
push.v self.exc
pushi.e -9
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]
pushi.e 20
pop.v.i global.typer
pushi.e 11
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_alphysalley_event_slash_Step_0_gml_25_0"@38318
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_alphysalley_event_slash_Step_0_gml_26_0"@38319
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_alphysalley_event_slash_Step_0_gml_27_0"@38320
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_alphysalley_event_slash_Step_0_gml_28_0"@38321
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_alphysalley_event_slash_Step_0_gml_29_0"@38322
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_alphysalley_event_slash_Step_0_gml_30_0"@38323
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_alphysalley_event_slash_Step_0_gml_31_0"@38324
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[12]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [14]

:[13]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
pushi.e 0
pop.v.i global.interact
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 269
pop.v.v [array]self.flag
pushi.e 5
pop.v.i self.con

:[end]