.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
push.d 0.2
pop.v.d self.image_speed
push.i 231251
setowner.e
push.s "obj_tem_school_slash_Other_10_gml_8_0"@38308
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.egcon
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 3
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.egcon

:[5]
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [8]

:[6]
push.s "obj_tem_school_slash_Other_10_gml_13_0"@38309
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
push.s "obj_tem_school_slash_Other_10_gml_20_0"@38310
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_tem_school_slash_Other_10_gml_21_0"@38311
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[8]
pushglb.v global.plot
pushi.e 3
cmp.i.v EQ
bf [14]

:[9]
push.v self.egcon
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_tem_school_slash_Other_10_gml_29_0"@38312
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_tem_school_slash_Other_10_gml_30_0"@38313
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[11]
push.v self.egcon
pushi.e 3
cmp.i.v EQ
bf [14]

:[12]
push.s "obj_tem_school_slash_Other_10_gml_34_0"@38314
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
push.s "obj_tem_school_slash_Other_10_gml_41_0"@38315
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[14]
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
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.d 0.1
pop.v.d self.image_speed

:[16]
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]