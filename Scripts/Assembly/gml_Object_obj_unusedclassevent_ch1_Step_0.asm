.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s " "@353
conv.s.v
call.i gml_Script_scr_windowcaption_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i global.darkzone
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 29
pop.v.v [array]self.flag
pushi.e 10
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_unusedclassevent_slash_Step_0_gml_16_0"@15190
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
pushi.e 3
pop.v.i self.con

:[4]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 379
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 4
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[9]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [11]

:[10]
pushi.e 453
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 6
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[11]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [13]

:[12]
pushi.e 377
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 8
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[13]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [15]

:[14]
pushi.e 374
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 10
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[15]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [17]

:[16]
pushi.e 384
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.i 231251
setowner.e
push.s "obj_unusedclassevent_slash_Step_0_gml_52_0"@15192
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
pushi.e 12
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[17]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [19]

:[18]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 369
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 14
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[22]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [24]

:[23]
pushi.e 446
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 16
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[24]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [26]

:[25]
pushi.e 379
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 18
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[26]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [30]

:[27]
push.s "obj_unusedclassevent_slash_Step_0_gml_81_0"@38316
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_windowcaption_ch1(argc=1)
popz.v
pushi.e 382
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.lightsoff
pushi.e 3545
conv.i.v
pushi.e 70
conv.i.v
pushi.e 146
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.s
push.v self.s
pushi.e -9
pushenv [29]

:[28]
push.i 100000
pop.v.i self.depth

:[29]
popenv [28]
pushi.e 24
pop.v.i self.con
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[30]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_unusedclassevent_slash_Step_0_gml_94_0"@15195
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_unusedclassevent_slash_Step_0_gml_95_0"@15197
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_unusedclassevent_slash_Step_0_gml_96_0"@15199
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 26
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[32]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [34]

:[33]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [35]

:[34]
push.e 0

:[35]
bf [39]

:[36]
push.v self.s
pushi.e -9
pushenv [38]

:[37]
push.d 0.1
pop.v.d self.image_speed
push.d 0.5
pop.v.d self.vspeed

:[38]
popenv [37]
pushi.e 27
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[39]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [43]

:[40]
push.v self.s
pushi.e -9
pushenv [42]

:[41]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[42]
popenv [41]
pushi.e 29
pop.v.i self.con
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i global.fe

:[43]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [47]

:[44]
push.v self.s
pushi.e -9
pushenv [46]

:[45]
pushi.e 3540
pop.v.i self.sprite_index

:[46]
popenv [45]
push.i 231251
setowner.e
push.s "obj_unusedclassevent_slash_Step_0_gml_123_0"@15201
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_unusedclassevent_slash_Step_0_gml_124_0"@15203
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_unusedclassevent_slash_Step_0_gml_125_0"@15205
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_unusedclassevent_slash_Step_0_gml_126_0"@15207
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 31
pop.v.i self.con

:[47]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [49]

:[48]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 32
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[52]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [56]

:[53]
push.v self.s
pushi.e -9
pushenv [55]

:[54]
pushi.e 3545
pop.v.i self.sprite_index

:[55]
popenv [54]
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_unusedclassevent_slash_Step_0_gml_141_0"@15209
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_unusedclassevent_slash_Step_0_gml_142_0"@15210
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_unusedclassevent_slash_Step_0_gml_143_0"@15212
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
pushi.e 34
pop.v.i self.con

:[56]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [58]

:[57]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [59]

:[58]
push.e 0

:[59]
bf [63]

:[60]
push.v self.s
pushi.e -9
pushenv [62]

:[61]
pushi.e 2
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed

:[62]
popenv [61]
pushi.e 35
pop.v.i self.con

:[63]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [68]

:[64]
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e 140
cmp.i.v GTE
bf [68]

:[65]
pushi.e 380
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.s
pushi.e -9
pushenv [67]

:[66]
pushi.e 0
pop.v.i self.visible

:[67]
popenv [66]
pushi.e 37
pop.v.i self.con

:[68]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [end]

:[69]
pushi.e 0
pop.v.i global.interact
pushglb.v global.plot
pushi.e 250
cmp.i.v LT
bf [71]

:[70]
pushi.e 250
pop.v.i global.plot

:[71]
pushi.e 38
pop.v.i self.con

:[end]