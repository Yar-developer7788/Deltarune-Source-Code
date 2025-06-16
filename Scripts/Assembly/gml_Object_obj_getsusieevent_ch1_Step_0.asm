.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [8]

:[1]
push.v 1351.x
push.v self.x
pushi.e 80
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
bf [8]

:[5]
pushi.e 2
pop.v.i global.facing
pushi.e 1493
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.fun
pushi.e 3572
pop.v.i self.sprite_index

:[7]
popenv [6]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.fc
pushi.e 9
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_getsusieevent_slash_Step_0_gml_16_0"@39246
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
pushi.e 2
pop.v.i self.con

:[8]
push.v self.con
pushi.e 2
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
pushi.e 3553
pop.v.i self.sprite_index
pushi.e 1490
conv.i.v
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 3
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[13]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_getsusieevent_slash_Step_0_gml_35_0"@39247
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
push.s "obj_getsusieevent_slash_Step_0_gml_37_0"@39248
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_getsusieevent_slash_Step_0_gml_38_0"@39249
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_getsusieevent_slash_Step_0_gml_40_0"@39250
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_getsusieevent_slash_Step_0_gml_41_0"@39251
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_getsusieevent_slash_Step_0_gml_43_0"@39252
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_getsusieevent_slash_Step_0_gml_44_0"@39253
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_getsusieevent_slash_Step_0_gml_46_0"@39254
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 12
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_getsusieevent_slash_Step_0_gml_48_0"@39255
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]self.msg
push.s "obj_getsusieevent_slash_Step_0_gml_49_0"@39256
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]self.msg
push.s "obj_getsusieevent_slash_Step_0_gml_50_0"@39257
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]self.msg
push.s "obj_getsusieevent_slash_Step_0_gml_51_0"@39258
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 16
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 17
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_getsusieevent_slash_Step_0_gml_53_0"@39259
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]self.msg
push.s "obj_getsusieevent_slash_Step_0_gml_54_0"@39260
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 19
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 20
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_getsusieevent_slash_Step_0_gml_56_0"@39261
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 21
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 22
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_getsusieevent_slash_Step_0_gml_58_0"@39262
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 23
pop.v.v [array]self.msg
push.d 3.1
pop.v.d self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[15]
push.v self.con
push.d 3.1
cmp.d.v EQ
bf [17]

:[16]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.i self.walkcon
pushi.e 5
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed
push.d 3.2
pop.v.d self.con

:[20]
push.v self.con
push.d 3.2
cmp.d.v EQ
bf [23]

:[21]
push.v self.y
pushi.e 200
cmp.i.v GTE
bf [23]

:[22]
pushi.e 3546
pop.v.i self.sprite_index
pushi.e -5
pop.v.i self.hspeed
push.d 3.3
pop.v.d self.con
pushi.e 0
pop.v.i self.vspeed

:[23]
push.v self.con
push.d 3.3
cmp.d.v EQ
bf [29]

:[24]
pushi.e 1493
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [29]

:[25]
push.v self.x
push.v 1493.x
pushi.e 60
sub.i.v
cmp.v.v LTE
bf [29]

:[26]
pushi.e 3549
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 3
pop.v.i global.facing
pushi.e 1493
pushenv [28]

:[27]
pushi.e 3573
pop.v.i self.sprite_index

:[28]
popenv [27]
push.d 3.4
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[29]
push.v self.con
push.d 4.4
cmp.d.v EQ
bf [31]

:[30]
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_getsusieevent_slash_Step_0_gml_105_0"@39263
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
push.s "obj_getsusieevent_slash_Step_0_gml_107_0"@39264
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
pushi.e 5
pop.v.i self.con

:[31]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [33]

:[32]
push.i 231459
setowner.e
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
push.s "obj_getsusieevent_slash_Step_0_gml_118_0"@39265
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
pushi.e 8
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 340
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[33]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [35]

:[34]
push.i 231459
setowner.e
push.s "fanfare.ogg"@38822
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 7
pop.v.i self.con

:[35]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [37]

:[36]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 6
pop.v.i self.con

:[40]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [42]

:[41]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_getsusieevent_slash_Step_0_gml_144_0"@39266
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 10
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[45]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [47]

:[46]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [48]

:[47]
push.e 0

:[48]
bf [50]

:[49]
pushi.e 1
pop.v.i self.walkcon
pushi.e -1
pop.v.i self.hspeed
push.d 0.1
pop.v.d self.image_speed
pushi.e 3546
pop.v.i self.sprite_index
push.i 231459
setowner.e
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_play_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
push.d 0.95
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pitch_ch1(argc=2)
popz.v
pushi.e 0
pop.v.i global.fc
pushi.e 52
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_getsusieevent_slash_Step_0_gml_160_0"@39267
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
pushi.e 12
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 320
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[50]
push.v self.walkcon
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[52]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [54]

:[53]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [61]

:[56]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
call.i gml_Script_scr_losechar_ch1(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar_ch1(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar_ch1(argc=1)
popz.v
pushglb.v global.plot
pushi.e 37
cmp.i.v LT
bf [58]

:[57]
pushi.e 37
pop.v.i global.plot

:[58]
pushi.e 0
pop.v.i global.facing
pushi.e 1493
pushenv [60]

:[59]
pushi.e 0
pop.v.i self.fun

:[60]
popenv [59]
pushi.e 0
pop.v.i global.interact
pushi.e 14
pop.v.i self.con

:[61]
push.v self.rcon
pushi.e 1
cmp.i.v EQ
bf [64]

:[62]
push.v 1351.x
pushi.e 80
cmp.i.v GTE
bf [64]

:[63]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [69]

:[66]
pushi.e 1
pop.v.i global.interact
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_getsusieevent_slash_Step_0_gml_196_0"@39268
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_getsusieevent_slash_Step_0_gml_197_0"@39269
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_getsusieevent_slash_Step_0_gml_198_0"@39270
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e -5
pushi.e 205
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [68]

:[67]
push.s "obj_getsusieevent_slash_Step_0_gml_201_0"@39271
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_getsusieevent_slash_Step_0_gml_202_0"@39272
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_getsusieevent_slash_Step_0_gml_203_0"@39273
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[68]
pushi.e 2
pop.v.i self.rcon
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[69]
push.v self.rcon
pushi.e 2
cmp.i.v EQ
bf [71]

:[70]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [72]

:[71]
push.e 0

:[72]
bf [end]

:[73]
pushi.e 3
pop.v.i self.rcon
pushi.e 0
pop.v.i global.interact
pushglb.v global.plot
pushi.e 39
cmp.i.v LT
bf [end]

:[74]
pushi.e 39
pop.v.i global.plot

:[end]