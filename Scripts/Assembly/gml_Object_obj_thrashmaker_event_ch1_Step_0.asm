.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [10]

:[1]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 200
pop.v.i self.y
pushi.e 1
pop.v.i global.interact
pushi.e 3575
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -50
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.ral
pushi.e 4202
conv.i.v
push.v 1351.y
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
push.i 166199
setowner.e
push.v self.k
pushi.e -1
pushi.e 0
pop.v.v [array]self.c
push.v self.ral
pushi.e -1
pushi.e 1
pop.v.v [array]self.c
pushi.e 1493
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.visible

:[3]
popenv [2]
pushi.e 1351
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.visible

:[5]
popenv [4]
push.v self.ral
pushi.e -9
pushenv [7]

:[6]
pushi.e 4
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[7]
popenv [6]
push.v self.k
pushi.e -9
pushenv [9]

:[8]
pushi.e 4
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[9]
popenv [8]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i global.interact

:[12]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [16]

:[13]
pushi.e 1407
pushenv [15]

:[14]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[15]
popenv [14]
pushi.e 4
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[16]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashmaker_event_slash_Step_0_gml_57_0"@38895
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_59_0"@38896
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
push.d 5.1
pop.v.d self.con

:[18]
push.v self.con
push.d 5.1
cmp.d.v EQ
bf [20]

:[19]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
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
push.d 0.6
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 3588
pop.v.i self.sprite_index
pushi.e 5
pop.v.i global.fc
pushi.e 13
pop.v.i global.fe
pushi.e 32
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashmaker_event_slash_Step_0_gml_74_0"@38897
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_76_0"@38898
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "E"@9481
conv.s.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_78_0"@38899
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 6
pop.v.i self.con

:[23]
push.v self.con
pushi.e 6
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
pushi.e 455
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 3591
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 7
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[28]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [30]

:[29]
pushi.e 3588
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 11
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashmaker_event_slash_Step_0_gml_103_0"@38900
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "D"@9480
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_105_0"@38901
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "C"@9479
conv.s.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_107_0"@38902
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "E"@9481
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_109_0"@38903
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_111_0"@38904
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_112_0"@38905
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_113_0"@38906
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
push.s "E"@9481
conv.s.v
pushi.e 11
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_115_0"@38907
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.d 8.1
pop.v.d self.con

:[30]
push.v self.con
push.d 8.1
cmp.d.v EQ
bf [32]

:[31]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [33]

:[32]
push.e 0

:[33]
bf [37]

:[34]
pushi.e 3699
conv.i.v
pushi.e -80
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.easel
push.v self.easel
pushi.e -9
pushenv [36]

:[35]
pushi.e 3
pop.v.i self.vspeed
push.d 0.5
pop.v.d self.gravity
push.i 700000
pop.v.i self.depth

:[36]
popenv [35]
pushi.e 363
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.d 8.2
pop.v.d self.con

:[37]
push.v self.con
push.d 8.2
cmp.d.v EQ
bf [42]

:[38]
push.v self.easel
pushi.e -9
push.v [stacktop]self.y
pushi.e 155
cmp.i.v GTE
bf [42]

:[39]
push.v self.easel
pushi.e -9
pushenv [41]

:[40]
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.gravity
pushi.e 160
pop.v.i self.y

:[41]
popenv [40]
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
push.d 8.3
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[42]
push.v self.con
push.d 9.3
cmp.d.v EQ
bf [44]

:[43]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [45]

:[44]
push.e 0

:[45]
bf [51]

:[46]
push.v self.k
pushi.e -9
pushenv [48]

:[47]
pushi.e 8
pop.v.i self.hspeed
pushi.e 4202
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[48]
popenv [47]
push.v self.ral
pushi.e -9
pushenv [50]

:[49]
pushi.e 8
pop.v.i self.hspeed
pushi.e 3575
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[50]
popenv [49]
pushi.e -1
pop.v.i self.hspeed
pushi.e 10
pop.v.i self.con
pushi.e 26
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[51]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [61]

:[52]
push.v self.k
pushi.e -9
pushenv [54]

:[53]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[54]
popenv [53]
push.v self.ral
pushi.e -9
pushenv [56]

:[55]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[56]
popenv [55]
push.v self.k
pushi.e -9
pushenv [58]

:[57]
pushi.e 4203
pop.v.i self.sprite_index

:[58]
popenv [57]
push.v self.ral
pushi.e -9
pushenv [60]

:[59]
pushi.e 3572
pop.v.i self.sprite_index

:[60]
popenv [59]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v
pushi.e 12
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[61]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [63]

:[62]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 14
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashmaker_event_slash_Step_0_gml_187_0"@38909
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_188_0"@38910
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
popz.v
pushi.e 23
pop.v.i self.con

:[63]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [65]

:[64]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [66]

:[65]
push.e 0

:[66]
bf [72]

:[67]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
push.v self.ral
pushi.e -9
pushenv [69]

:[68]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[69]
popenv [68]
push.v self.k
pushi.e -9
pushenv [71]

:[70]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[71]
popenv [70]
pushi.e 24
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[72]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [74]

:[73]
push.i 231459
setowner.e
push.s "thrashmachine.ogg"@38911
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
push.d 0.6
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 1367
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 30
pop.v.i self.con

:[74]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [76]

:[75]
pushi.e 1367
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [77]

:[76]
push.e 0

:[77]
bf [83]

:[78]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
push.v self.ral
pushi.e -9
pushenv [80]

:[79]
pushi.e 3575
pop.v.i self.sprite_index

:[80]
popenv [79]
push.v self.k
pushi.e -9
pushenv [82]

:[81]
pushi.e 4202
pop.v.i self.sprite_index

:[82]
popenv [81]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 14
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashmaker_event_slash_Step_0_gml_223_0"@38912
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
push.s "obj_thrashmaker_event_slash_Step_0_gml_225_0"@38913
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
pushi.e 31
pop.v.i self.con

:[83]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [85]

:[84]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [86]

:[85]
push.e 0

:[86]
bf [92]

:[87]
pushi.e 382
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.bush
pushi.e -9
pushenv [89]

:[88]
pushi.e 1
pop.v.i self.image_index

:[89]
popenv [88]
pushi.e 3553
conv.i.v
push.v self.bush
pushi.e -9
push.v [stacktop]self.y
pushi.e 44
add.i.v
push.v self.bush
pushi.e -9
push.v [stacktop]self.x
pushi.e 88
add.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
push.v self.s
pushi.e -9
pushenv [91]

:[90]
pushi.e 8
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[91]
popenv [90]
pushi.e 4097
conv.i.v
push.v self.s
pushi.e -9
push.v [stacktop]self.y
push.v self.s
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.bush_debris_obj
push.v self.s
pushi.e -9
push.v [stacktop]self.depth
pushi.e 20
sub.i.v
push.v self.bush_debris_obj
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
pop.v.i self.bush_debris
pushi.e 8
pop.v.i self.hspeed
pushi.e 32
pop.v.i self.con

:[92]
push.v self.bush_debris
pushi.e 1
cmp.i.v EQ
bf [98]

:[93]
push.v self.s
call.i instance_exists(argc=1)
conv.v.b
bf [95]

:[94]
push.v self.bush_debris_obj
call.i instance_exists(argc=1)
conv.v.b
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
push.v self.s
pushi.e -9
push.v [stacktop]self.x
push.v self.bush_debris_obj
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.s
pushi.e -9
push.v [stacktop]self.y
push.v self.bush_debris_obj
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.s
pushi.e -9
push.v [stacktop]self.depth
pushi.e 20
sub.i.v
push.v self.bush_debris_obj
pushi.e -9
pop.v.v [stacktop]self.depth

:[98]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [107]

:[99]
pushi.e 0
pop.v.i self.move_finished
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e 185
cmp.i.v GTE
bf [103]

:[100]
push.v self.s
pushi.e -9
pushenv [102]

:[101]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v
pushi.e 185
pop.v.i self.y
pushi.e 3546
pop.v.i self.sprite_index

:[102]
popenv [101]
push.v self.move_finished
pushi.e 1
add.i.v
pop.v.v self.move_finished

:[103]
push.v self.x
pushi.e 460
cmp.i.v GTE
bf [105]

:[104]
pushi.e 460
pop.v.i self.x
pushi.e 0
pop.v.i self.speed
push.v self.move_finished
pushi.e 1
add.i.v
pop.v.v self.move_finished

:[105]
push.v self.move_finished
pushi.e 2
cmp.i.v EQ
bf [107]

:[106]
pushi.e 35
pop.v.i self.con

:[107]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [111]

:[108]
push.v self.s
pushi.e -9
pushenv [110]

:[109]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[110]
popenv [109]
pushi.e 34
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[111]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [113]

:[112]
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
push.d 0.6
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_thrashmaker_event_slash_Step_0_gml_299_0"@38916
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_300_0"@38917
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
popz.v
pushi.e 39
pop.v.i self.con

:[113]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [115]

:[114]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [116]

:[115]
push.e 0

:[116]
bf [124]

:[117]
push.v self.s
pushi.e -9
pushenv [119]

:[118]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e -8
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[119]
popenv [118]
push.v self.k
pushi.e -9
pushenv [121]

:[120]
pushi.e -8
pop.v.i self.hspeed

:[121]
popenv [120]
push.v self.ral
pushi.e -9
pushenv [123]

:[122]
pushi.e -8
pop.v.i self.hspeed

:[123]
popenv [122]
pushi.e 40
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 12
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[124]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [132]

:[125]
push.v self.s
pushi.e -9
pushenv [127]

:[126]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[127]
popenv [126]
push.v self.k
pushi.e -9
pushenv [129]

:[128]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[129]
popenv [128]
push.v self.ral
pushi.e -9
pushenv [131]

:[130]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[131]
popenv [130]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v
pushi.e 3556
push.v self.s
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 123
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[132]
push.v self.con
pushi.e 124
cmp.i.v EQ
bf [166]

:[133]
pushi.e -1
pop.v.i self.type
pushi.e -1
pop.v.i self.topstat
pushi.e 0
pop.v.i self.topstatlevel
pushi.e 0
pop.v.i self.i

:[134]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [143]

:[135]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stat
push.v self.topstatlevel
cmp.v.v EQ
bf [137]

:[136]
push.v self.topstatlevel
pushi.e 2
cmp.i.v GTE
b [138]

:[137]
push.e 0

:[138]
bf [140]

:[139]
pushi.e 7
pop.v.i self.type

:[140]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stat
push.v self.topstatlevel
cmp.v.v GT
bf [142]

:[141]
push.v self.i
pop.v.v self.topstat
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.stat
pop.v.v self.topstatlevel

:[142]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [134]

:[143]
push.v self.topstat
pop.v.v self.type
push.v self.type
pushi.e 7
cmp.i.v EQ
bf [145]

:[144]
pushi.e -1
pop.v.i self.type

:[145]
push.v self.topstatlevel
pushi.e 0
cmp.i.v EQ
bf [147]

:[146]
pushi.e 6
pop.v.i self.type

:[147]
pushi.e 128
pop.v.i self.con
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashmaker_event_slash_Step_0_gml_359_0"@38918
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.type
pushi.e -1
cmp.i.v EQ
bf [149]

:[148]
push.s "obj_thrashmaker_event_slash_Step_0_gml_363_0"@38919
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[149]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [151]

:[150]
push.s "obj_thrashmaker_event_slash_Step_0_gml_367_0"@38920
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[151]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [153]

:[152]
push.s "obj_thrashmaker_event_slash_Step_0_gml_371_0"@38921
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[153]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [155]

:[154]
push.s "obj_thrashmaker_event_slash_Step_0_gml_375_0"@38922
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[155]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [157]

:[156]
push.s "obj_thrashmaker_event_slash_Step_0_gml_379_0"@38923
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_380_0"@38924
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_381_0"@38925
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_382_0"@38926
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_384_0"@38927
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg

:[157]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [159]

:[158]
push.s "obj_thrashmaker_event_slash_Step_0_gml_388_0"@38928
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[159]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [161]

:[160]
push.s "obj_thrashmaker_event_slash_Step_0_gml_392_0"@38929
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_393_0"@38930
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[161]
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [165]

:[162]
push.v self.s
pushi.e -9
pushenv [164]

:[163]
pushi.e 0
pop.v.i self.image_speed

:[164]
popenv [163]
pushi.e 0
pop.v.i global.fe
push.s "obj_thrashmaker_event_slash_Step_0_gml_401_0"@38931
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_402_0"@38932
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_403_0"@38933
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_404_0"@38934
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 126
pop.v.i self.con

:[165]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[166]
push.v self.con
pushi.e 126
cmp.i.v EQ
bf [168]

:[167]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [169]

:[168]
push.e 0

:[169]
bf [175]

:[170]
push.v self.s
pushi.e -9
pushenv [172]

:[171]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[172]
popenv [171]
push.v self.s
pushi.e -9
pushenv [174]

:[173]
pushi.e 3556
pop.v.i self.sprite_index

:[174]
popenv [173]
pushi.e 127
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[175]
push.v self.con
pushi.e 128
cmp.i.v EQ
bf [177]

:[176]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [178]

:[177]
push.e 0

:[178]
bf [186]

:[179]
push.v self.s
pushi.e -9
pushenv [181]

:[180]
pushi.e 3549
pop.v.i self.sprite_index

:[181]
popenv [180]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_thrashmaker_event_slash_Step_0_gml_427_0"@38935
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "D"@9480
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_429_0"@38936
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_430_0"@38937
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [185]

:[182]
push.v self.s
pushi.e -9
pushenv [184]

:[183]
pushi.e 3548
pop.v.i self.sprite_index

:[184]
popenv [183]
pushi.e 6
pop.v.i global.fe
push.s "obj_thrashmaker_event_slash_Step_0_gml_435_0"@38938
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "D"@9480
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_437_0"@38939
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
push.s "obj_thrashmaker_event_slash_Step_0_gml_439_0"@38940
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "E"@9481
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_thrashmaker_event_slash_Step_0_gml_441_0"@38941
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_thrashmaker_event_slash_Step_0_gml_442_0"@38942
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg

:[185]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 49
pop.v.i self.con

:[186]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [188]

:[187]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [189]

:[188]
push.e 0

:[189]
bf [195]

:[190]
push.v self.s
pushi.e -9
pushenv [192]

:[191]
pushi.e 3549
pop.v.i self.sprite_index
pushi.e 12
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[192]
popenv [191]
push.v self.easel
pushi.e -9
pushenv [194]

:[193]
pushi.e 12
pop.v.i self.hspeed

:[194]
popenv [193]
pushi.e 12
pop.v.i self.hspeed
pushi.e 50
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume_ch1(argc=3)
popz.v
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[195]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [197]

:[196]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 31
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 2
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_thrashmaker_event_slash_Step_0_gml_465_0"@38943
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
pushi.e 52
pop.v.i self.con

:[197]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [199]

:[198]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [200]

:[199]
push.e 0

:[200]
bf [206]

:[201]
push.v self.ral
pushi.e -9
pushenv [203]

:[202]
pushi.e 3575
pop.v.i self.sprite_index

:[203]
popenv [202]
push.v self.k
pushi.e -9
pushenv [205]

:[204]
pushi.e 4202
pop.v.i self.sprite_index

:[205]
popenv [204]
pushi.e 54
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[206]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [end]

:[207]
push.v self.ral
pop.v.v self.r
push.v self.k
pushi.e -9
push.v [stacktop]self.x
pop.v.v 1351.x
push.v self.k
pushi.e -9
push.v [stacktop]self.y
pop.v.v 1351.y
pushi.e 1351
pushenv [209]

:[208]
pushi.e 1
pop.v.i self.visible

:[209]
popenv [208]
call.i gml_Script_scr_unmarkify_caterpillar_ch1(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_caterpillar_facing_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i global.facing
push.v self.ral
pushi.e -9
pushenv [211]

:[210]
call.i instance_destroy(argc=0)
popz.v

:[211]
popenv [210]
push.v self.k
pushi.e -9
pushenv [213]

:[212]
call.i instance_destroy(argc=0)
popz.v

:[213]
popenv [212]
push.v self.s
pushi.e -9
pushenv [215]

:[214]
call.i instance_destroy(argc=0)
popz.v

:[215]
popenv [214]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 56
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 226
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact
call.i gml_Script_scr_tempsave_ch1(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]