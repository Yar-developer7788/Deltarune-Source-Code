.localvar 2 arguments

:[0]
push.v self.con
pushi.e 400
cmp.i.v LT
bf [end]

:[1]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.xx
pushi.e 13
sub.i.v
cmp.v.v GTE
bf [5]

:[3]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.xx
pushi.e 20
add.i.v
cmp.v.v LTE
bf [5]

:[4]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v self.xx
pushi.e 10
sub.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 40
pop.v.i self.con
pushi.e 135
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v
pushi.e 3
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[8]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [10]

:[9]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 3
pop.v.i global.encounterno
pushi.e 3
pop.v.i global.specialbattle
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
push.i 232336
setowner.e
push.s "battle.ogg"@10337
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
pushi.e 1492
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 21
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[13]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [18]

:[14]
pushi.e 1517
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[15]
push.v self.dummy
pushi.e -9
pushenv [17]

:[16]
pushi.e 0
pop.v.i self.visible

:[17]
popenv [16]
pushi.e 23
pop.v.i self.con

:[18]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [21]

:[19]
pushi.e 1631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [21]

:[20]
push.d 23.5
pop.v.d self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[21]
push.v self.con
pushi.e 24
cmp.i.v GTE
bf [23]

:[22]
push.v self.con
pushi.e 28
cmp.i.v LTE
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
pushi.e 1
pop.v.i global.interact

:[26]
push.v self.con
push.d 24.5
cmp.d.v EQ
bf [28]

:[27]
pushi.e 24
pop.v.i self.con
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[28]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [30]

:[29]
pushi.e 26
pop.v.i self.con
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[30]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [34]

:[31]
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_tutorialbattleevent_slash_Step_0_gml_87_0"@39338
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_tutorialbattleevent_slash_Step_0_gml_88_0"@39339
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_tutorialbattleevent_slash_Step_0_gml_89_0"@39340
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_tutorialbattleevent_slash_Step_0_gml_90_0"@39341
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e 6
conv.i.v
call.i gml_Script_scr_get_input_name_ch1(argc=1)
add.v.v
push.s "obj_tutorialbattleevent_slash_Step_0_gml_90_1"@39342
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
add.v.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_tutorialbattleevent_slash_Step_0_gml_92_0"@39343
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e -5
pushi.e 205
push.v [array]self.flag
pushi.e 4
cmp.i.v GTE
bf [33]

:[32]
push.s "obj_tutorialbattleevent_slash_Step_0_gml_95_0"@39344
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_tutorialbattleevent_slash_Step_0_gml_96_0"@39345
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[33]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_itemget_ch1(argc=1)
popz.v
pushi.e 28
pop.v.i self.con

:[34]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [36]

:[35]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [41]

:[38]
pushi.e 0
pop.v.i global.interact
pushglb.v global.plot
pushi.e 31
cmp.i.v LT
bf [40]

:[39]
pushi.e 31
pop.v.i global.plot

:[40]
pushi.e 29
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[41]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [43]

:[42]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [end]

:[45]
pushi.e 4
conv.i.v
call.i gml_Script_scr_itemget_ch1(argc=1)
popz.v
pushi.e 41
pop.v.i self.con
pushglb.v global.plot
pushi.e 31
cmp.i.v LT
bf [47]

:[46]
pushi.e 31
pop.v.i global.plot

:[47]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]