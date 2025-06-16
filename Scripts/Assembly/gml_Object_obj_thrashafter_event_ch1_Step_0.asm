.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
push.v 1351.x
push.v self.x
pushi.e 140
sub.i.v
cmp.v.v GTE
bf [3]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 3587
pop.v.i self.sprite_index
pushi.e 1490
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.exc
pushglb.v global.facing
call.i gml_Script_scr_caterpillar_facing_ch1(argc=1)
popz.v
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[6]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [14]

:[7]
pushi.e 6
pop.v.i global.fe
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashafter_event_slash_Step_0_gml_22_0"@38994
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashafter_event_slash_Step_0_gml_23_0"@38995
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_event_slash_Step_0_gml_25_0"@38996
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
push.s "obj_thrashafter_event_slash_Step_0_gml_27_0"@38997
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_thrashafter_event_slash_Step_0_gml_28_0"@38998
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_thrashafter_event_slash_Step_0_gml_29_0"@38999
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.name
pushi.e -5
pushi.e 214
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_thrashafter_event_slash_Step_0_gml_30_0"@39000
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.name

:[9]
pushi.e -5
pushi.e 214
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_thrashafter_event_slash_Step_0_gml_31_0"@39001
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.name

:[11]
pushi.e -5
pushi.e 214
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
push.s "obj_thrashafter_event_slash_Step_0_gml_32_0"@39002
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.name

:[13]
pushi.e 3
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.v self.name
push.s "obj_thrashafter_event_slash_Step_0_gml_34_0"@39003
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_thrashafter_event_slash_Step_0_gml_35_0"@39004
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
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

:[14]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [16]

:[15]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 3585
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.hspeed
pushi.e 5
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[19]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [21]

:[20]
pushi.e 0
pop.v.i self.hspeed
pushi.e 6
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[21]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [23]

:[22]
pushi.e 7
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashafter_event_slash_Step_0_gml_59_0"@39005
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashafter_event_slash_Step_0_gml_60_0"@39006
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_thrashafter_event_slash_Step_0_gml_61_0"@39007
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 8
pop.v.i self.con

:[23]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [25]

:[24]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 9
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[28]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [30]

:[29]
pushi.e 30
pop.v.i global.typer
pushi.e 12
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_thrashafter_event_slash_Step_0_gml_77_0"@39008
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashafter_event_slash_Step_0_gml_78_0"@39009
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_thrashafter_event_slash_Step_0_gml_79_0"@39010
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_thrashafter_event_slash_Step_0_gml_80_0"@39011
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 11
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[30]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [32]

:[31]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 3587
pop.v.i self.sprite_index
pushi.e -8
pop.v.i self.hspeed
pushi.e 12
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[35]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [37]

:[36]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v
pushi.e 14
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[37]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [39]

:[38]
pushi.e 5
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashafter_event_slash_Step_0_gml_104_0"@39012
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
push.s "obj_thrashafter_event_slash_Step_0_gml_106_0"@39013
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.v self.name
push.s "obj_thrashafter_event_slash_Step_0_gml_108_0"@39014
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_84_get_subst_string_ch1(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_thrashafter_event_slash_Step_0_gml_109_0"@39015
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 16
pop.v.i self.con

:[39]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [41]

:[40]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushi.e 3578
pop.v.i self.sprite_index
pushi.e 17
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[44]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [46]

:[45]
pushi.e 3587
pop.v.i self.sprite_index
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashafter_event_slash_Step_0_gml_125_0"@39016
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
push.s "obj_thrashafter_event_slash_Step_0_gml_127_0"@39017
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_event_slash_Step_0_gml_129_0"@39018
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_thrashafter_event_slash_Step_0_gml_130_0"@39019
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashafter_event_slash_Step_0_gml_132_0"@39020
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 19
pop.v.i self.con
push.i 231459
setowner.e
push.s "fanfare.ogg"@38822
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong

:[46]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [48]

:[47]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_play_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 0
pop.v.i global.fc
pushi.e 51
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashafter_event_slash_Step_0_gml_144_0"@39021
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.skippable
pushi.e 20
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[51]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [57]

:[52]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1330
pushenv [54]

:[53]
call.i instance_destroy(argc=0)
popz.v

:[54]
popenv [53]
pushi.e 1331
pushenv [56]

:[55]
call.i instance_destroy(argc=0)
popz.v

:[56]
popenv [55]
pushi.e 30
pop.v.i global.typer
pushi.e 8
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_thrashafter_event_slash_Step_0_gml_159_0"@39022
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 22
pop.v.i self.con

:[57]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [59]

:[58]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e 3578
pop.v.i self.sprite_index
pushi.e -8
pop.v.i self.vspeed
pushi.e 24
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[62]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [64]

:[63]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [65]

:[64]
push.e 0

:[65]
bf [end]

:[66]
pushi.e 1412
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.npc
pushi.e 3578
push.v self.npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 26
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 229
pop.v.v [array]self.flag
call.i instance_destroy(argc=0)
popz.v

:[end]