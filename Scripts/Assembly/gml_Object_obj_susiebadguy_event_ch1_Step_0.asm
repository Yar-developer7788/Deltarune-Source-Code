.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [13]

:[1]
push.v 1351.x
push.v self.x
pushi.e 200
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
bf [13]

:[5]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i global.facing
pushi.e 1493
pushenv [8]

:[6]
pushi.e 1
pop.v.i self.fun
push.v self.rsprite
pushi.e 3575
cmp.i.v EQ
bf [8]

:[7]
pushi.e 3575
pop.v.i self.sprite_index

:[8]
popenv [6]
pushi.e 1351
pushenv [10]

:[9]
pushi.e 1
pop.v.i self.cutscene

:[10]
popenv [9]
pushi.e 1
pop.v.i global.interact
pushi.e 3587
pop.v.i self.sprite_index
push.v self.s
pushi.e -9
pushenv [12]

:[11]
pushi.e 3546
pop.v.i self.sprite_index

:[12]
popenv [11]
pushi.e 1490
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
push.v self.x
pushi.e 30
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.exc
pushi.e 2
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[13]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.i 231459
setowner.e
push.s "lancer.ogg"@20915
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 10
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_susiebadguy_event_slash_Step_0_gml_30_0"@38967
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
push.s "obj_susiebadguy_event_slash_Step_0_gml_32_0"@38968
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_susiebadguy_event_slash_Step_0_gml_34_0"@38969
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
push.s "obj_susiebadguy_event_slash_Step_0_gml_36_0"@38970
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_susiebadguy_event_slash_Step_0_gml_38_0"@38971
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_susiebadguy_event_slash_Step_0_gml_40_0"@38972
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
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

:[15]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [17]

:[16]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 3578
pop.v.i self.sprite_index
pushi.e 379
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 5
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[20]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [22]

:[21]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_susiebadguy_event_slash_Step_0_gml_60_0"@38973
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
pushi.e 7
pop.v.i self.con

:[22]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [24]

:[23]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [25]

:[24]
push.e 0

:[25]
bf [29]

:[26]
push.v self.s
pushi.e -9
pushenv [28]

:[27]
pushi.e 3553
pop.v.i self.sprite_index

:[28]
popenv [27]
pushi.e 379
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 8
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[29]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [31]

:[30]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_susiebadguy_event_slash_Step_0_gml_79_0"@38974
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
pushi.e 10
pop.v.i self.con

:[34]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [36]

:[35]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [37]

:[36]
push.e 0

:[37]
bf [41]

:[38]
pushi.e 3583
pop.v.i self.sprite_index
push.v self.s
pushi.e -9
pushenv [40]

:[39]
pushi.e 3546
pop.v.i self.sprite_index

:[40]
popenv [39]
pushi.e 11
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[41]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [43]

:[42]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_susiebadguy_event_slash_Step_0_gml_97_0"@38975
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
pushi.e 13
pop.v.i self.con

:[43]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [45]

:[44]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [46]

:[45]
push.e 0

:[46]
bf [50]

:[47]
pushi.e 414
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 4282
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.whitefade
push.v self.whitefade
pushi.e -9
pushenv [49]

:[48]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 1000
pop.v.i self.image_xscale
pushi.e 1000
pop.v.i self.image_yscale
pushi.e -100
pop.v.i self.depth

:[49]
popenv [48]
pushi.e 0
pop.v.i self.wtimer
pushi.e 14
pop.v.i self.con

:[50]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [73]

:[51]
push.v self.wtimer
pushi.e 1
add.i.v
pop.v.v self.wtimer
push.v self.wtimer
pushi.e 25
cmp.i.v LTE
bf [55]

:[52]
push.v self.whitefade
pushi.e -9
pushenv [54]

:[53]
push.v self.image_alpha
push.d 0.04
add.d.v
pop.v.v self.image_alpha

:[54]
popenv [53]

:[55]
push.v self.wtimer
pushi.e 26
cmp.i.v EQ
bf [65]

:[56]
pushi.e 3579
pop.v.i self.sprite_index
push.v self.s
pushi.e -9
pushenv [58]

:[57]
pushi.e 3832
pop.v.i self.sprite_index

:[58]
popenv [57]
push.v self.s
pushi.e -9
pushenv [60]

:[59]
pushi.e -2
pop.v.i self.image_xscale

:[60]
popenv [59]
push.v self.s
pushi.e -9
pushenv [62]

:[61]
push.d 0.2
pop.v.d self.image_speed

:[62]
popenv [61]
push.v self.s
pushi.e -9
pushenv [64]

:[63]
push.v self.x
pushi.e 60
add.i.v
pop.v.v self.x

:[64]
popenv [63]

:[65]
push.v self.wtimer
pushi.e 28
cmp.i.v GT
bf [69]

:[66]
push.v self.whitefade
pushi.e -9
pushenv [68]

:[67]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[68]
popenv [67]

:[69]
push.v self.wtimer
pushi.e 60
cmp.i.v GTE
bf [73]

:[70]
push.v self.whitefade
pushi.e -9
pushenv [72]

:[71]
call.i instance_destroy(argc=0)
popz.v

:[72]
popenv [71]
pushi.e 15
pop.v.i self.con

:[73]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [75]

:[74]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [76]

:[75]
push.e 0

:[76]
bf [82]

:[77]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.s "obj_susiebadguy_event_slash_Step_0_gml_158_0"@38977
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 214
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_susiebadguy_event_slash_Step_0_gml_161_0"@38978
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[79]
pushi.e -5
pushi.e 214
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_susiebadguy_event_slash_Step_0_gml_165_0"@38979
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[81]
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

:[82]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [84]

:[83]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [85]

:[84]
push.e 0

:[85]
bf [87]

:[86]
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 17
pop.v.i self.con

:[87]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [89]

:[88]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_susiebadguy_event_slash_Step_0_gml_185_0"@38980
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
pushi.e 19
pop.v.i self.con

:[89]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [91]

:[90]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [92]

:[91]
push.e 0

:[92]
bf [96]

:[93]
push.v self.s
pushi.e -9
pushenv [95]

:[94]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 3548
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
push.v self.x
pushi.e 60
sub.i.v
pop.v.v self.x

:[95]
popenv [94]
pushi.e 3586
pop.v.i self.sprite_index
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.s "obj_susiebadguy_event_slash_Step_0_gml_205_0"@38981
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_susiebadguy_event_slash_Step_0_gml_206_0"@38982
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_susiebadguy_event_slash_Step_0_gml_207_0"@38983
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_susiebadguy_event_slash_Step_0_gml_209_0"@38984
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_susiebadguy_event_slash_Step_0_gml_211_0"@38985
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_susiebadguy_event_slash_Step_0_gml_212_0"@38986
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
pushi.e 20
pop.v.i self.con

:[96]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [98]

:[97]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [99]

:[98]
push.e 0

:[99]
bf [103]

:[100]
pushi.e 3587
pop.v.i self.sprite_index
push.v self.s
pushi.e -9
pushenv [102]

:[101]
pushi.e 3546
pop.v.i self.sprite_index

:[102]
popenv [101]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_susiebadguy_event_slash_Step_0_gml_224_0"@38987
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_susiebadguy_event_slash_Step_0_gml_226_0"@38988
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
push.s "obj_susiebadguy_event_slash_Step_0_gml_228_0"@38989
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_susiebadguy_event_slash_Step_0_gml_230_0"@38990
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
pushi.e 21
pop.v.i self.con

:[103]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [105]

:[104]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [106]

:[105]
push.e 0

:[106]
bf [110]

:[107]
push.v self.s
pushi.e -9
pushenv [109]

:[108]
pushi.e 3549
pop.v.i self.sprite_index

:[109]
popenv [108]
pushi.e 22
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[110]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [112]

:[111]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_susiebadguy_event_slash_Step_0_gml_247_0"@38991
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
pushi.e 24
pop.v.i self.con

:[112]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [114]

:[113]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [115]

:[114]
push.e 0

:[115]
bf [117]

:[116]
pushi.e 3583
pop.v.i self.sprite_index
pushi.e 25
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[117]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [119]

:[118]
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_susiebadguy_event_slash_Step_0_gml_265_0"@38992
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
pushi.e 27
pop.v.i self.con

:[119]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [121]

:[120]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [122]

:[121]
push.e 0

:[122]
bf [126]

:[123]
pushi.e 3578
pop.v.i self.sprite_index
pushi.e 16
pop.v.i self.vspeed
push.v self.s
pushi.e -9
pushenv [125]

:[124]
pushi.e 3553
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 16
pop.v.i self.vspeed

:[125]
popenv [124]
push.d 27.1
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[126]
push.v self.con
push.d 28.1
cmp.d.v EQ
bf [128]

:[127]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
pushi.e 28
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[128]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [end]

:[129]
push.i 231459
setowner.e
push.s "forest.ogg"@38993
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 0
pop.v.i global.facing
pushi.e 1493
pushenv [131]

:[130]
pushi.e 0
pop.v.i self.fun

:[131]
popenv [130]
pushi.e 1351
pushenv [133]

:[132]
pushi.e 0
pop.v.i self.cutscene

:[133]
popenv [132]
pushi.e 0
pop.v.i global.interact
pushi.e 70
pop.v.i global.plot
pushi.e 30
pop.v.i self.con

:[end]