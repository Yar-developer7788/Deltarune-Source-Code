.localvar 2 arguments

:[0]
push.v self.con
pushi.e 76
cmp.i.v LT
bf [418]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [17]

:[2]
pushi.e 1411
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 1412
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
push.i 231459
setowner.e
push.s "wind.ogg"@40473
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.7
conv.d.v
push.d 0.5
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 1
pop.v.i self.part
pushi.e 1351
pushenv [8]

:[7]
pushi.e 0
pop.v.i self.visible
pushi.e 1
pop.v.i self.cutscene

:[8]
popenv [7]
pushi.e 1493
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.visible

:[10]
popenv [9]
pushi.e 1
pop.v.i self.con
pushi.e 4202
conv.i.v
pushi.e 200
conv.i.v
pushi.e -20
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
pushi.e 3549
conv.i.v
pushi.e 180
conv.i.v
pushi.e -75
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
pushi.e 3575
conv.i.v
pushi.e 190
conv.i.v
pushi.e -130
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.r
pushi.e 1407
pushenv [12]

:[11]
pushi.e 4
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[12]
popenv [11]
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [16]

:[13]
pushi.e 1407
pushenv [15]

:[14]
pushi.e 8
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[15]
popenv [14]
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[16]
pushi.e 3583
conv.i.v
pushi.e 194
conv.i.v
pushi.e 512
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.l

:[17]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
pop.v.i global.interact

:[19]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [24]

:[20]
pushi.e 1407
pushenv [22]

:[21]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[22]
popenv [21]
pushi.e 3
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[24]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [28]

:[25]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_72_0"@40474
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[27]
pushi.e 5
pop.v.i self.con

:[28]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [30]

:[29]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [31]

:[30]
push.e 0

:[31]
bf [40]

:[32]
pushi.e 4136
conv.i.v
pushi.e 120
conv.i.v
pushi.e 820
pushglb.v global.xoff
add.v.i
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.king
push.v self.l
pushi.e -9
pushenv [34]

:[33]
pushi.e 5
pop.v.i self.hspeed

:[34]
popenv [33]
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
pushi.e 90
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v

:[36]
push.d 5.1
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [40]

:[37]
push.v self.l
pushi.e -9
pushenv [39]

:[38]
pushi.e 10
pop.v.i self.hspeed

:[39]
popenv [38]
pushi.e 45
conv.i.v
pushi.e 0
conv.i.v
pushi.e 16
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
push.d 5.1
pop.v.d self.con
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[40]
push.v self.con
push.d 6.1
cmp.d.v EQ
bf [44]

:[41]
push.v self.l
pushi.e -9
pushenv [43]

:[42]
pushi.e 0
pop.v.i self.hspeed

:[43]
popenv [42]
pushi.e 6
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[44]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [51]

:[45]
push.v self.l
pushi.e -9
pushenv [47]

:[46]
pushi.e 0
pop.v.i self.hspeed

:[47]
popenv [46]
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_110_0"@40475
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_kingface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_112_0"@40476
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_113_0"@40477
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_115_0"@40478
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_116_0"@40479
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_117_0"@40480
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_118_0"@40481
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[49]
pushi.e 8
pop.v.i self.con
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
pushi.e 9
pop.v.i self.con

:[51]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [53]

:[52]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [54]

:[53]
push.e 0

:[54]
bf [58]

:[55]
push.v self.king
pushi.e -9
pushenv [57]

:[56]
pushi.e 4130
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
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v

:[57]
popenv [56]
pushi.e 0
pop.v.i global.fc
pushi.e 36
pop.v.i global.typer
push.s "obj_kingcutscene_slash_Step_0_gml_137_0"@40482
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_139_0"@40483
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_140_0"@40484
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_kingface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_142_0"@40485
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_144_0"@40486
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
pushi.e 9
pop.v.i self.con

:[58]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [60]

:[59]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [61]

:[60]
push.e 0

:[61]
bf [76]

:[62]
push.v self.king
pushi.e -9
pushenv [64]

:[63]
pushi.e 4130
pop.v.i self.sprite_index

:[64]
popenv [63]
push.v self.k
pushi.e -9
pushenv [66]

:[65]
pushi.e 440
pushglb.v global.xoff
add.v.i
pop.v.v self.x
pushi.e 50
pop.v.i self.y
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[66]
popenv [65]
push.v self.s
pushi.e -9
pushenv [68]

:[67]
pushi.e 440
pushglb.v global.xoff
add.v.i
pop.v.v self.x
pushi.e 130
pop.v.i self.y
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[68]
popenv [67]
push.v self.r
pushi.e -9
pushenv [70]

:[69]
pushi.e 440
pushglb.v global.xoff
add.v.i
pop.v.v self.x
pushi.e 210
pop.v.i self.y
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[70]
popenv [69]
push.v self.l
pushi.e -9
pushenv [72]

:[71]
pushi.e 3587
pop.v.i self.sprite_index

:[72]
popenv [71]
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [74]

:[73]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v

:[74]
pushi.e 10
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [76]

:[75]
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e -8
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[76]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [80]

:[77]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_175_0"@40487
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_177_0"@40488
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[79]
pushi.e 12
pop.v.i self.con

:[80]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [82]

:[81]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [83]

:[82]
push.e 0

:[83]
bf [89]

:[84]
push.v self.l
pushi.e -9
pushenv [86]

:[85]
pushi.e 3583
pop.v.i self.sprite_index

:[86]
popenv [85]
pushi.e 36
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_187_0"@40489
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_189_0"@40490
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [88]

:[87]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[88]
pushi.e 13
pop.v.i self.con

:[89]
push.v self.con
pushi.e 13
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
push.v self.king
pushi.e -9
pushenv [95]

:[94]
pushi.e -2
pop.v.i self.hspeed
push.d 0.1
pop.v.d self.image_speed

:[95]
popenv [94]
pushi.e 14
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[96]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [102]

:[97]
push.v self.l
pushi.e -9
pushenv [99]

:[98]
pushi.e 0
pop.v.i self.visible

:[99]
popenv [98]
push.v self.king
pushi.e -9
pushenv [101]

:[100]
pushi.e 0
pop.v.i self.hspeed
pushi.e 4126
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.2
pop.v.d self.image_speed

:[101]
popenv [100]
pushi.e 16
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[102]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [110]

:[103]
push.v self.s
pushi.e -9
pushenv [105]

:[104]
pushi.e 3551
pop.v.i self.sprite_index

:[105]
popenv [104]
push.v self.king
pushi.e -9
pushenv [107]

:[106]
pushi.e 3
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[107]
popenv [106]
pushi.e 36
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_223_0"@40491
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_225_0"@40492
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [109]

:[108]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[109]
push.d 17.1
pop.v.d self.con

:[110]
push.v self.con
push.d 17.1
cmp.d.v EQ
bf [112]

:[111]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [113]

:[112]
push.e 0

:[113]
bf [117]

:[114]
push.v self.king
pushi.e -9
pushenv [116]

:[115]
pushi.e 3
pop.v.i self.image_index
push.d 0.1
pop.v.d self.image_speed

:[116]
popenv [115]
push.d 17.3
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[117]
push.v self.con
push.d 17.3
cmp.d.v GTE
bf [119]

:[118]
push.v self.con
pushi.e 19
cmp.i.v LT
b [120]

:[119]
push.e 0

:[120]
bt [125]

:[121]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [123]

:[122]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
b [124]

:[123]
push.e 0

:[124]
b [126]

:[125]
push.e 1

:[126]
bf [129]

:[127]
push.v self.king
pushi.e -9
push.v [stacktop]self.image_index
push.d 4.9
cmp.d.v GT
bf [129]

:[128]
pushi.e 0
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 5
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.image_index

:[129]
push.v self.con
push.d 18.3
cmp.d.v EQ
bf [131]

:[130]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [132]

:[131]
push.e 0

:[132]
bf [135]

:[133]
pushi.e 36
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_251_0"@40493
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_252_0"@40494
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_253_0"@40495
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_254_0"@40496
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_255_0"@40497
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "A"@1192
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_257_0"@40498
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 19
pop.v.i self.con
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [135]

:[134]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[135]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [137]

:[136]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [138]

:[137]
push.e 0

:[138]
bf [146]

:[139]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 378
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.s
pushi.e -9
pushenv [141]

:[140]
pushi.e 3560
pop.v.i self.sprite_index

:[141]
popenv [140]
push.v self.r
pushi.e -9
pushenv [143]

:[142]
pushi.e 3866
pop.v.i self.sprite_index

:[143]
popenv [142]
push.v self.king
pushi.e -9
pushenv [145]

:[144]
pushi.e 5
pop.v.i self.image_index
push.d 0.2
pop.v.d self.image_speed

:[145]
popenv [144]
pushi.e 20
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[146]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [151]

:[147]
push.v self.king
pushi.e -9
pushenv [150]

:[148]
push.v self.image_index
pushi.e 5
cmp.i.v GT
bf [150]

:[149]
pushi.e 6
pop.v.i self.image_index

:[150]
popenv [148]

:[151]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [156]

:[152]
push.v self.king
pushi.e -9
pushenv [155]

:[153]
push.v self.image_index
pushi.e 6
cmp.i.v GT
bf [155]

:[154]
pushi.e 0
pop.v.i self.image_speed
pushi.e 7
pop.v.i self.image_index

:[155]
popenv [153]
pushi.e 22
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[156]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [162]

:[157]
push.v self.king
pushi.e -9
pushenv [159]

:[158]
pushi.e 0
pop.v.i self.image_speed
pushi.e 7
pop.v.i self.image_index

:[159]
popenv [158]
pushi.e 36
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_285_0"@40499
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [161]

:[160]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[161]
pushi.e 24
pop.v.i self.con

:[162]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [164]

:[163]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [165]

:[164]
push.e 0

:[165]
bf [171]

:[166]
pushi.e 408
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.r
pushi.e -9
pushenv [168]

:[167]
pushi.e 3575
pop.v.i self.sprite_index

:[168]
popenv [167]
push.v self.s
pushi.e -9
pushenv [170]

:[169]
pushi.e 3848
pop.v.i self.sprite_index
pushi.e 8
pop.v.i self.hspeed

:[170]
popenv [169]
pushi.e 25
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[171]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [175]

:[172]
push.v self.s
pushi.e -9
pushenv [174]

:[173]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[174]
popenv [173]
pushi.e 27
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[175]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [179]

:[176]
push.i 231459
setowner.e
push.s "GALLERY.ogg"@32578
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
push.d 0.8
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
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_316_0"@40500
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_kingface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_319_0"@40501
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_320_0"@40502
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_321_0"@40503
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [178]

:[177]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[178]
pushi.e 30
pop.v.i self.con

:[179]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [181]

:[180]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [182]

:[181]
push.e 0

:[182]
bf [186]

:[183]
pushi.e 382
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.king
pushi.e -9
pushenv [185]

:[184]
push.d 0.25
pop.v.d self.image_speed

:[185]
popenv [184]
pushi.e 31
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[186]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [191]

:[187]
push.v self.king
pushi.e -9
pushenv [189]

:[188]
pushi.e 9
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[189]
popenv [188]
pushi.e 33
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [191]

:[190]
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[191]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [194]

:[192]
pushi.e 0
pop.v.i global.fc
pushi.e 36
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_348_0"@40504
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_349_0"@40505
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.d 34.1
pop.v.d self.con
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [194]

:[193]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[194]
push.v self.con
push.d 34.1
cmp.d.v EQ
bf [196]

:[195]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [197]

:[196]
push.e 0

:[197]
bf [199]

:[198]
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.d 34.2
pop.v.d self.con

:[199]
push.v self.con
push.d 35.2
cmp.d.v EQ
bf [202]

:[200]
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_363_0"@40506
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.d 35.3
pop.v.d self.con
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [202]

:[201]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[202]
push.v self.con
push.d 35.3
cmp.d.v EQ
bf [204]

:[203]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [205]

:[204]
push.e 0

:[205]
bf [208]

:[206]
pushi.e 36
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [208]

:[207]
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[208]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [210]

:[209]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [211]

:[210]
push.e 0

:[211]
bf [215]

:[212]
push.v self.s
pushi.e -9
pushenv [214]

:[213]
pushi.e 3551
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e -2
pop.v.i self.hspeed

:[214]
popenv [213]
pushi.e 38
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[215]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [220]

:[216]
push.v self.s
pushi.e -9
pushenv [218]

:[217]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[218]
popenv [217]
push.d 39.1
pop.v.d self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [220]

:[219]
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[220]
push.v self.con
push.d 40.1
cmp.d.v EQ
bf [223]

:[221]
pushi.e 12
pop.v.i global.fe
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_396_0"@40507
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 41
pop.v.i self.con
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [223]

:[222]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[223]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [225]

:[224]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [226]

:[225]
push.e 0

:[226]
bf [229]

:[227]
push.d 40.2
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [229]

:[228]
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[229]
push.v self.con
push.d 41.2
cmp.d.v EQ
bf [231]

:[230]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [232]

:[231]
push.e 0

:[232]
bf [241]

:[233]
push.v self.r
pushi.e -9
pushenv [235]

:[234]
pushi.e 4146
pop.v.i self.sprite_index

:[235]
popenv [234]
push.v self.s
pushi.e -9
pushenv [237]

:[236]
pushi.e 4158
pop.v.i self.sprite_index

:[237]
popenv [236]
push.v self.k
pushi.e -9
pushenv [239]

:[238]
pushi.e 4139
pop.v.i self.sprite_index

:[239]
popenv [238]
pushi.e 42
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [241]

:[240]
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[241]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [245]

:[242]
push.v self.king
pushi.e -9
pushenv [244]

:[243]
pushi.e -1
pop.v.i self.hspeed

:[244]
popenv [243]
pushi.e 44
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[245]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [249]

:[246]
push.v self.king
pushi.e -9
pushenv [248]

:[247]
pushi.e 0
pop.v.i self.hspeed

:[248]
popenv [247]
pushi.e 46
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[249]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [253]

:[250]
pushi.e 36
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_437_0"@40508
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [252]

:[251]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[252]
pushi.e 48
pop.v.i self.con

:[253]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [255]

:[254]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [256]

:[255]
push.e 0

:[256]
bf [261]

:[257]
pushi.e 364
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.i 166199
setowner.e
push.v self.k
pushi.e -1
pushi.e 0
pop.v.v [array]self.c
push.v self.s
pushi.e -1
pushi.e 1
pop.v.v [array]self.c
push.v self.r
pushi.e -1
pushi.e 2
pop.v.v [array]self.c
pushi.e 0
pop.v.i self.i

:[258]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [260]

:[259]
push.i 175419
setowner.e
pushi.e 4147
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
push.v [stacktop]self.y
pushi.e 50
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
push.v [stacktop]self.x
pushi.e 100
add.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.spadechunk
push.i 133652
setowner.e
pushi.e 180
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
pushi.e -9
pop.v.i [stacktop]self.image_angle
push.i 133653
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.i 133623
setowner.e
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.i 133627
setowner.e
push.d 0.1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [258]

:[260]
pushi.e 49
pop.v.i self.con

:[261]
push.v self.con
pushi.e 49
cmp.i.v EQ
bf [267]

:[262]
pushi.e 0
pop.v.i self.i

:[263]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [267]

:[264]
push.i 133653
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_alpha
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 3
cmp.i.v GTE
bf [266]

:[265]
pushi.e 50
pop.v.i self.con

:[266]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [263]

:[267]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [271]

:[268]
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_471_0"@40510
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [270]

:[269]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[270]
pushi.e 51
pop.v.i self.con

:[271]
push.v self.con
pushi.e 51
cmp.i.v EQ
bf [273]

:[272]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [274]

:[273]
push.e 0

:[274]
bf [278]

:[275]
pushi.e 363
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.king
pushi.e -9
pushenv [277]

:[276]
push.d 0.25
pop.v.d self.image_speed
pushi.e 10
pop.v.i self.image_index

:[277]
popenv [276]
push.i 68097
setowner.e
pushi.e 16
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 52
pop.v.i self.con

:[278]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [282]

:[279]
push.v self.king
pushi.e -9
pushenv [281]

:[280]
pushi.e 0
pop.v.i self.image_speed
pushi.e 13
pop.v.i self.image_index

:[281]
popenv [280]
pushi.e 4051
conv.i.v
push.v self.king
pushi.e -9
push.v [stacktop]self.y
pushi.e 60
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 660
add.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.lspade
pushi.e 180
push.v self.lspade
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e -16
push.v self.lspade
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e 54
pop.v.i self.con

:[282]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [291]

:[283]
push.v self.lspade
pushi.e -9
push.v [stacktop]self.x
push.v self.king
pushi.e -9
push.v [stacktop]self.x
pushi.e 70
add.i.v
cmp.v.v LTE
bf [291]

:[284]
pushi.e 435
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 403
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.lspade
pushi.e -9
pushenv [286]

:[285]
call.i instance_destroy(argc=0)
popz.v

:[286]
popenv [285]
push.v self.king
pushi.e -9
pushenv [288]

:[287]
pushi.e 4119
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v

:[288]
popenv [287]
push.v self.l
pushi.e -9
pushenv [290]

:[289]
push.v self.x
pushi.e 24
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 60
sub.i.v
pop.v.v self.y
pushi.e 4140
pop.v.i self.sprite_index
pushi.e 10
pop.v.i self.vspeed
pushi.e -4
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.visible

:[290]
popenv [289]
pushi.e 55
pop.v.i self.con
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.i 133653
setowner.e
pushi.e 1
pushi.e -1
pushi.e 0
push.v [array]self.spadechunk
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 1
pushi.e -1
pushi.e 1
push.v [array]self.spadechunk
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 1
pushi.e -1
pushi.e 2
push.v [array]self.spadechunk
pushi.e -9
pop.v.i [stacktop]self.image_alpha

:[291]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [295]

:[292]
pushi.e 0
pop.v.i self.i

:[293]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [295]

:[294]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.18
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [293]

:[295]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [306]

:[296]
pushi.e 0
pop.v.i self.i

:[297]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [301]

:[298]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunk
pushi.e -9
pushenv [300]

:[299]
call.i instance_destroy(argc=0)
popz.v

:[300]
popenv [299]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [297]

:[301]
push.v self.l
pushi.e -9
pushenv [303]

:[302]
pushi.e 0
pop.v.i self.speed

:[303]
popenv [302]
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_529_0"@40512
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [305]

:[304]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[305]
pushi.e 57
pop.v.i self.con

:[306]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [308]

:[307]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [309]

:[308]
push.e 0

:[309]
bf [321]

:[310]
push.v self.l
pushi.e -9
pushenv [312]

:[311]
pushi.e -16
pop.v.i self.hspeed
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[312]
popenv [311]
push.v self.r
pushi.e -9
pushenv [314]

:[313]
pushi.e 3575
pop.v.i self.sprite_index

:[314]
popenv [313]
push.v self.s
pushi.e -9
pushenv [316]

:[315]
pushi.e 3551
pop.v.i self.sprite_index

:[316]
popenv [315]
push.v self.k
pushi.e -9
pushenv [318]

:[317]
pushi.e 4202
pop.v.i self.sprite_index

:[318]
popenv [317]
pushi.e 58
pop.v.i self.con
push.s "obj_kingcutscene_slash_Step_0_gml_543_0"@40513
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [320]

:[319]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[320]
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[321]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [323]

:[322]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [324]

:[323]
push.e 0

:[324]
bf [328]

:[325]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_554_0"@40514
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [327]

:[326]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[327]
pushi.e 60
pop.v.i self.con

:[328]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [330]

:[329]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [331]

:[330]
push.e 0

:[331]
bf [339]

:[332]
pushi.e 443
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.k
pushi.e -9
pushenv [334]

:[333]
push.d 0.25
conv.d.v
pushi.e 3819
conv.i.v
call.i gml_Script_scr_anim_ch1(argc=2)
popz.v

:[334]
popenv [333]
push.v self.s
pushi.e -9
pushenv [336]

:[335]
push.d 0.25
conv.d.v
pushi.e 3845
conv.i.v
call.i gml_Script_scr_anim_ch1(argc=2)
popz.v

:[336]
popenv [335]
push.v self.r
pushi.e -9
pushenv [338]

:[337]
push.d 0.25
conv.d.v
pushi.e 3860
conv.i.v
call.i gml_Script_scr_anim_ch1(argc=2)
popz.v

:[338]
popenv [337]
pushi.e 61
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[339]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [343]

:[340]
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_573_0"@40515
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [342]

:[341]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[342]
pushi.e 64
pop.v.i self.con

:[343]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [345]

:[344]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [346]

:[345]
push.e 0

:[346]
bf [350]

:[347]
push.v self.king
pushi.e -9
pushenv [349]

:[348]
pushi.e 1
pop.v.i self.image_index
pushi.e 3
pop.v.i self.hspeed
push.d 0.1
pop.v.d self.friction

:[349]
popenv [348]
pushi.e 65
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[350]
push.v self.con
pushi.e 66
cmp.i.v EQ
bf [356]

:[351]
push.v self.king
pushi.e -9
pushenv [353]

:[352]
pushi.e 0
pop.v.i self.hspeed
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v

:[353]
popenv [352]
pushi.e 36
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_592_0"@40516
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_593_0"@40517
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_594_0"@40518
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [355]

:[354]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[355]
pushi.e 67
pop.v.i self.con

:[356]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [358]

:[357]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [359]

:[358]
push.e 0

:[359]
bf [363]

:[360]
push.v self.king
pushi.e -9
pushenv [362]

:[361]
pushi.e 4131
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed

:[362]
popenv [361]
push.d 66.1
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[363]
push.v self.con
push.d 67.1
cmp.d.v EQ
bf [367]

:[364]
push.v self.king
pushi.e -9
pushenv [366]

:[365]
pushi.e 6
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[366]
popenv [365]
pushi.e 4131
conv.i.v
push.v self.king
pushi.e -9
push.v [stacktop]self.y
push.v self.king
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.shadowking
pushi.e 0
push.v self.shadowking
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 5
push.v self.shadowking
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.king
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
push.v self.shadowking
pushi.e -9
pop.v.v [stacktop]self.depth
push.d 68.2
pop.v.d self.con
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 362
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[367]
push.v self.con
push.d 68.2
cmp.d.v EQ
bf [371]

:[368]
push.v self.shadowking
pushi.e -9
pushenv [370]

:[369]
push.v self.image_alpha
push.d 0.03
sub.d.v
pop.v.v self.image_alpha

:[370]
popenv [369]

:[371]
push.v self.con
push.d 69.2
cmp.d.v EQ
bf [377]

:[372]
pushi.e 235
pop.v.i global.plot
push.v self.shadowking
pushi.e -9
pushenv [374]

:[373]
call.i instance_destroy(argc=0)
popz.v

:[374]
popenv [373]
pushi.e 33
pop.v.i global.typer
pushi.e 4
pop.v.i global.fe
pushi.e 20
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_636_0"@40520
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e -5
pushi.e 8
push.v [array]self.tempflag
pushi.e 0
cmp.i.v EQ
bf [376]

:[375]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[376]
push.d 68.1
pop.v.d self.con

:[377]
push.v self.con
push.d 68.1
cmp.d.v EQ
bf [379]

:[378]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [380]

:[379]
push.e 0

:[380]
bf [382]

:[381]
pushi.e 4132
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.334
push.v self.king
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 69
pop.v.i self.con
pushi.e 404
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.i 68097
setowner.e
pushi.e 70
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[382]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [384]

:[383]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [385]

:[384]
push.e 0

:[385]
bf [407]

:[386]
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.tempflag
push.v self.k
pushi.e -9
push.v [stacktop]self.x
pop.v.v 1351.x
push.v self.k
pushi.e -9
push.v [stacktop]self.y
pop.v.v 1351.y
push.i 133617
setowner.e
push.v self.s
pushi.e -9
push.v [stacktop]self.x
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.y
push.i 133617
setowner.e
push.v self.r
pushi.e -9
push.v [stacktop]self.x
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.x
push.i 133618
setowner.e
push.v self.r
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [388]

:[387]
call.i gml_Script_scr_caterpillar_interpolate_ch1(argc=0)
popz.v

:[388]
popenv [387]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pushenv [390]

:[389]
call.i gml_Script_scr_caterpillar_interpolate_ch1(argc=0)
popz.v

:[390]
popenv [389]
pushi.e 1
conv.i.v
call.i gml_Script_scr_caterpillar_facing_ch1(argc=1)
popz.v
pushi.e 1351
pushenv [392]

:[391]
pushi.e 1
pop.v.i self.visible
pushi.e 3828
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.fun

:[392]
popenv [391]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [394]

:[393]
pushi.e 1
pop.v.i self.visible
pushi.e 3841
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.fun

:[394]
popenv [393]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pushenv [396]

:[395]
pushi.e 1
pop.v.i self.visible
pushi.e 3852
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.fun

:[396]
popenv [395]
push.v self.k
pushi.e -9
pushenv [398]

:[397]
pushi.e 0
pop.v.i self.visible

:[398]
popenv [397]
push.v self.r
pushi.e -9
pushenv [400]

:[399]
pushi.e 0
pop.v.i self.visible

:[400]
popenv [399]
push.v self.s
pushi.e -9
pushenv [402]

:[401]
pushi.e 0
pop.v.i self.visible

:[402]
popenv [401]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
push.i 232336
setowner.e
push.s "kingboss.ogg"@40521
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
pushi.e 40
pop.v.i global.encounterno
pushglb.v global.encounterno
call.i gml_Script_scr_encountersetup_ch1(argc=1)
popz.v
pushi.e 3
pop.v.i global.specialbattle
push.v self.king
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.remkingx
push.v self.king
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.remkingy
pushi.e 1492
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 71
pop.v.i self.con
pushi.e 4007
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.king
pushi.e -9
pushenv [404]

:[403]
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.monstermakey
pushi.e -5
pushi.e 0
push.v [array]self.monstermakex
call.i gml_Script_scr_move_to_point_over_time_ch1(argc=3)
popz.v

:[404]
popenv [403]
push.v self.king
pushi.e -9
pushenv [406]

:[405]
pushi.e 1000
pop.v.i self.depth

:[406]
popenv [405]
push.i 68097
setowner.e
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.bultimer

:[407]
push.v self.con
pushi.e 72
cmp.i.v EQ
bf [411]

:[408]
push.v self.king
pushi.e -9
pushenv [410]

:[409]
pushi.e 0
pop.v.i self.visible

:[410]
popenv [409]
pushi.e 73
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[411]
push.v self.con
pushi.e 74
cmp.i.v EQ
bf [418]

:[412]
pushi.e 1517
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [418]

:[413]
push.v self.king
pushi.e -9
pushenv [415]

:[414]
pushi.e 1
pop.v.i self.visible

:[415]
popenv [414]
push.v self.remkingx
push.v self.king
pushi.e -9
pop.v.v [stacktop]self.remkingx
push.v self.remkingy
push.v self.king
pushi.e -9
pop.v.v [stacktop]self.remkingy
push.v self.king
pushi.e -9
pushenv [417]

:[416]
pushi.e 10
conv.i.v
push.v self.remkingy
push.v self.remkingx
call.i gml_Script_scr_move_to_point_over_time_ch1(argc=3)
popz.v

:[417]
popenv [416]
pushi.e 75
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[418]
push.v self.con
pushi.e 76
cmp.i.v GTE
bf [420]

:[419]
push.v self.con
pushi.e 150
cmp.i.v LT
b [421]

:[420]
push.e 0

:[421]
bf [677]

:[422]
push.v self.con
pushi.e 76
cmp.i.v EQ
bf [424]

:[423]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [425]

:[424]
push.e 0

:[425]
bf [444]

:[426]
push.v self.part
pushi.e 0
cmp.i.v EQ
bf [434]

:[427]
pushi.e 360
pushglb.v global.xoff
add.v.i
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 3828
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
pushi.e 3841
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
pushi.e 3852
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.r
pushi.e 4123
conv.i.v
pushi.e 120
conv.i.v
pushi.e 784
pushglb.v global.xoff
add.v.i
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.king
push.v self.k
pushi.e -9
pushenv [429]

:[428]
pushi.e 440
pushglb.v global.xoff
add.v.i
pop.v.v self.x
pushi.e 50
pop.v.i self.y
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[429]
popenv [428]
push.v self.s
pushi.e -9
pushenv [431]

:[430]
pushi.e 440
pushglb.v global.xoff
add.v.i
pop.v.v self.x
pushi.e 130
pop.v.i self.y
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[431]
popenv [430]
push.v self.r
pushi.e -9
pushenv [433]

:[432]
pushi.e 440
pushglb.v global.xoff
add.v.i
pop.v.v self.x
pushi.e 210
pop.v.i self.y
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[433]
popenv [432]
pushi.e 1
pop.v.i self.part
b [443]

:[434]
push.v self.k
pushi.e -9
pushenv [436]

:[435]
pushi.e 1
pop.v.i self.visible

:[436]
popenv [435]
push.v self.s
pushi.e -9
pushenv [438]

:[437]
pushi.e 1
pop.v.i self.visible

:[438]
popenv [437]
push.v self.r
pushi.e -9
pushenv [440]

:[439]
pushi.e 1
pop.v.i self.visible

:[440]
popenv [439]
pushi.e 0
pop.v.i 1351.visible
pushi.e 1493
pushenv [442]

:[441]
pushi.e 0
pop.v.i self.visible

:[442]
popenv [441]
pushi.e 3828
push.v self.k
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3841
push.v self.s
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 3852
push.v self.r
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 4123
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[443]
pushi.e 78
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[444]
push.v self.con
pushi.e 79
cmp.i.v EQ
bf [448]

:[445]
pushi.e 20
pop.v.i global.fc
pushi.e 33
pop.v.i global.typer
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_762_0"@40524
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_763_0"@40525
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e -5
pushi.e 247
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [447]

:[446]
push.s "obj_kingcutscene_slash_Step_0_gml_766_0"@40526
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_767_0"@40527
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_768_0"@40528
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[447]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 81
pop.v.i self.con

:[448]
push.v self.con
pushi.e 81
cmp.i.v EQ
bf [450]

:[449]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [451]

:[450]
push.e 0

:[451]
bf [455]

:[452]
pushi.e 425
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.king
pushi.e -9
pushenv [454]

:[453]
push.d 0.1
conv.d.v
pushi.e 4123
conv.i.v
call.i gml_Script_scr_anim_ch1(argc=2)
popz.v

:[454]
popenv [453]
pushi.e 82
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[455]
push.v self.con
pushi.e 83
cmp.i.v EQ
bf [457]

:[456]
pushi.e 393
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 4121
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 4128
conv.i.v
push.v self.king
pushi.e -9
push.v [stacktop]self.y
push.v self.king
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.cape
push.d 0.25
push.v self.cape
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 6
push.v self.cape
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e -1
push.v self.cape
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.d 0.2
push.v self.cape
pushi.e -9
pop.v.d [stacktop]self.friction
push.d -0.3
push.v self.cape
pushi.e -9
pop.v.d [stacktop]self.gravity
push.v self.king
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.cape
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 84
pop.v.i self.con
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[457]
push.v self.con
pushi.e 85
cmp.i.v EQ
bf [459]

:[458]
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_802_0"@40530
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_803_0"@40531
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_804_0"@40532
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_805_0"@40533
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_806_0"@40534
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_807_0"@40535
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_808_0"@40536
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_809_0"@40537
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 86
pop.v.i self.con

:[459]
push.v self.con
pushi.e 86
cmp.i.v EQ
bf [461]

:[460]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [462]

:[461]
push.e 0

:[462]
bf [466]

:[463]
push.v self.king
pushi.e -9
pushenv [465]

:[464]
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v
pushi.e 2
pop.v.i self.image_index

:[465]
popenv [464]
pushi.e 433
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 87
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[466]
push.v self.con
pushi.e 88
cmp.i.v EQ
bf [470]

:[467]
push.v self.king
pushi.e -9
pushenv [469]

:[468]
pushi.e 2
pop.v.i self.image_index

:[469]
popenv [468]
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_826_0"@40538
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_827_0"@40539
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_828_0"@40540
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
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
push.d 88.1
pop.v.d self.con

:[470]
push.v self.con
push.d 88.1
cmp.d.v EQ
bf [472]

:[471]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [473]

:[472]
push.e 0

:[473]
bf [475]

:[474]
push.d 88.2
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[475]
push.v self.con
push.d 89.2
cmp.d.v EQ
bf [477]

:[476]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [478]

:[477]
push.e 0

:[478]
bf [482]

:[479]
pushi.e 424
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.r
pushi.e -9
pushenv [481]

:[480]
pushi.e 3575
pop.v.i self.sprite_index

:[481]
popenv [480]
pushi.e 90
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[482]
push.v self.con
pushi.e 91
cmp.i.v EQ
bf [486]

:[483]
pushi.e 424
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.k
pushi.e -9
pushenv [485]

:[484]
pushi.e 4202
pop.v.i self.sprite_index

:[485]
popenv [484]
pushi.e 92
pop.v.i self.con
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[486]
push.v self.con
pushi.e 93
cmp.i.v EQ
bf [488]

:[487]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_861_0"@40541
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
push.s "obj_kingcutscene_slash_Step_0_gml_863_0"@40542
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
pushi.e 94
pop.v.i self.con

:[488]
push.v self.con
pushi.e 94
cmp.i.v EQ
bf [490]

:[489]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [491]

:[490]
push.e 0

:[491]
bf [493]

:[492]
pushi.e 95
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[493]
push.v self.con
pushi.e 96
cmp.i.v EQ
bf [497]

:[494]
pushi.e 424
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.s
pushi.e -9
pushenv [496]

:[495]
pushi.e 3551
pop.v.i self.sprite_index

:[496]
popenv [495]
pushi.e 97
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[497]
push.v self.con
pushi.e 98
cmp.i.v EQ
bf [505]

:[498]
push.v self.s
pushi.e -9
pushenv [500]

:[499]
pushi.e 3
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[500]
popenv [499]
push.v self.k
pushi.e -9
pushenv [502]

:[501]
pushi.e 3
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[502]
popenv [501]
push.v self.r
pushi.e -9
pushenv [504]

:[503]
pushi.e 4
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[504]
popenv [503]
pushi.e 99
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[505]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [513]

:[506]
push.v self.k
pushi.e -9
pushenv [508]

:[507]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[508]
popenv [507]
push.v self.s
pushi.e -9
pushenv [510]

:[509]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[510]
popenv [509]
push.v self.r
pushi.e -9
pushenv [512]

:[511]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[512]
popenv [511]
pushi.e 101
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[513]
push.v self.con
pushi.e 102
cmp.i.v EQ
bf [515]

:[514]
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_919_0"@40543
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_920_0"@40544
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_921_0"@40545
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_922_0"@40546
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_kingface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_924_0"@40547
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_925_0"@40548
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
pushi.e 103
pop.v.i self.con

:[515]
push.v self.con
pushi.e 103
cmp.i.v EQ
bf [517]

:[516]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [518]

:[517]
push.e 0

:[518]
bf [522]

:[519]
pushi.e 433
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.king
pushi.e -9
pushenv [521]

:[520]
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v
pushi.e 2
pop.v.i self.image_index

:[521]
popenv [520]
pushi.e 104
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[522]
push.v self.con
pushi.e 105
cmp.i.v EQ
bf [524]

:[523]
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_941_0"@40549
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_942_0"@40550
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_943_0"@40551
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_945_0"@40552
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
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
pushi.e 106
pop.v.i self.con

:[524]
push.v self.con
pushi.e 106
cmp.i.v EQ
bf [526]

:[525]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [527]

:[526]
push.e 0

:[527]
bf [531]

:[528]
push.v self.king
pushi.e -9
push.v [stacktop]self.y
pushi.e 50
add.i.v
push.v self.king
pushi.e -9
push.v [stacktop]self.x
pushi.e 90
sub.i.v
push.v self.r
pushi.e -9
push.v [stacktop]self.y
push.v self.r
pushi.e -9
push.v [stacktop]self.x
call.i point_distance(argc=4)
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.disto
push.v self.king
push.v self.r
pushi.e -9
pop.v.v [stacktop]self.king
push.v self.r
pushi.e -9
pushenv [530]

:[529]
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
conv.i.v
push.v self.king
pushi.e -9
push.v [stacktop]self.y
pushi.e 50
add.i.v
push.v self.king
pushi.e -9
push.v [stacktop]self.x
pushi.e 90
sub.i.v
call.i move_towards_point(argc=3)
popz.v

:[530]
popenv [529]
pushi.e 107
pop.v.i self.con
push.i 68097
setowner.e
push.v self.disto
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[531]
push.v self.con
pushi.e 108
cmp.i.v EQ
bf [535]

:[532]
push.v self.r
pushi.e -9
pushenv [534]

:[533]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[534]
popenv [533]
pushi.e 109
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[535]
push.v self.con
pushi.e 110
cmp.i.v EQ
bf [539]

:[536]
push.v self.r
pushi.e -9
pushenv [538]

:[537]
push.d 0.25
conv.d.v
pushi.e 3867
conv.i.v
call.i gml_Script_scr_anim_ch1(argc=2)
popz.v
push.v self.x
pushi.e 10
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 10
sub.i.v
pop.v.v self.y

:[538]
popenv [537]
pushi.e 396
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 111
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[539]
push.v self.con
pushi.e 112
cmp.i.v EQ
bf [541]

:[540]
pushi.e 431
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1622
conv.i.v
push.v self.king
pushi.e -9
push.v [stacktop]self.y
push.v self.king
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.healanim
push.v self.king
push.v self.healanim
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e 115
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[541]
push.v self.con
pushi.e 116
cmp.i.v EQ
bf [545]

:[542]
push.v self.r
pushi.e -9
pushenv [544]

:[543]
pushi.e 3575
pop.v.i self.sprite_index
push.v self.x
pushi.e 10
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y

:[544]
popenv [543]
pushi.e 8
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_994_0"@40554
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_995_0"@40555
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_kingface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_997_0"@40556
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
pushi.e 125
pop.v.i self.con

:[545]
push.v self.con
pushi.e 125
cmp.i.v EQ
bf [547]

:[546]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [548]

:[547]
push.e 0

:[548]
bf [560]

:[549]
pushi.e 429
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 363
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.king
pushi.e -9
pushenv [551]

:[550]
pushi.e 4
pop.v.i self.image_index

:[551]
popenv [550]
pushi.e 0
pop.v.i self.deathhit0
pushi.e 0
pop.v.i self.deathhit1
pushi.e 0
pop.v.i self.deathhit2
pushi.e 0
pop.v.i self.i

:[552]
push.v self.i
pushi.e 15
cmp.i.v LT
bf [559]

:[553]
push.i 175429
setowner.e
pushi.e 4147
conv.i.v
pushi.e 500
push.v self.i
pushi.e 30
mul.i.v
add.v.i
push.v self.k
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.deathwave
pushi.e 0
popaf.e
pushi.e 4147
conv.i.v
pushi.e 500
push.v self.i
pushi.e 30
mul.i.v
add.v.i
push.v self.r
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.deathwave
pushi.e 1
popaf.e
pushi.e 0
pop.v.i self.j

:[554]
push.v self.j
pushi.e 2
cmp.i.v LT
bf [558]

:[555]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.deathwave
push.v self.j
conv.v.i
pushaf.e
pushi.e -9
pushenv [557]

:[556]
pushi.e -40
pop.v.i self.vspeed
pushi.e 90
pop.v.i self.image_angle

:[557]
popenv [556]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [554]

:[558]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [552]

:[559]
pushi.e 126
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[560]
push.v self.con
pushi.e 126
cmp.i.v EQ
bf [582]

:[561]
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.deathwave
pushi.e 0
pushaf.e
pushi.e -9
push.v [stacktop]self.y
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
add.i.v
cmp.v.v LTE
bf [563]

:[562]
push.v self.deathhit0
pushi.e 0
cmp.i.v EQ
b [564]

:[563]
push.e 0

:[564]
bf [568]

:[565]
push.v self.s
pushi.e -9
pushenv [567]

:[566]
pushi.e 4151
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.vspeed
pushi.e -1
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.friction
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v

:[567]
popenv [566]
pushi.e 1
pop.v.i self.deathhit0
pushi.e 435
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[568]
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.deathwave
pushi.e 0
pushaf.e
pushi.e -9
push.v [stacktop]self.y
push.v self.k
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
add.i.v
cmp.v.v LTE
bf [570]

:[569]
push.v self.deathhit1
pushi.e 0
cmp.i.v EQ
b [571]

:[570]
push.e 0

:[571]
bf [575]

:[572]
push.v self.k
pushi.e -9
pushenv [574]

:[573]
pushi.e 4138
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.hspeed
pushi.e 4
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.friction
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v

:[574]
popenv [573]
pushi.e 1
pop.v.i self.deathhit1
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 439
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[575]
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.deathwave
pushi.e 1
pushaf.e
pushi.e -9
push.v [stacktop]self.y
push.v self.r
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
add.i.v
cmp.v.v LTE
bf [577]

:[576]
push.v self.deathhit2
pushi.e 0
cmp.i.v EQ
b [578]

:[577]
push.e 0

:[578]
bf [582]

:[579]
push.v self.r
pushi.e -9
pushenv [581]

:[580]
pushi.e 4142
pop.v.i self.sprite_index
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v
pushi.e 2
pop.v.i self.hspeed
pushi.e -6
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.friction

:[581]
popenv [580]
pushi.e 1
pop.v.i self.deathhit2
pushi.e 435
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[582]
push.v self.con
pushi.e 127
cmp.i.v EQ
bf [586]

:[583]
pushi.e 424
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.king
pushi.e -9
pushenv [585]

:[584]
pushi.e 4129
pop.v.i self.sprite_index

:[585]
popenv [584]
pushi.e 128
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[586]
push.v self.con
pushi.e 129
cmp.i.v EQ
bf [588]

:[587]
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1067_0"@40561
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
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
pushi.e 130
pop.v.i self.con

:[588]
push.v self.con
pushi.e 130
cmp.i.v EQ
bf [590]

:[589]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [591]

:[590]
push.e 0

:[591]
bf [597]

:[592]
push.i 231459
setowner.e
push.s "GALLERY.ogg"@32578
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 433
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.s
pushi.e -9
pushenv [594]

:[593]
pushi.e 4158
pop.v.i self.sprite_index
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v

:[594]
popenv [593]
push.v self.k
pushi.e -9
pushenv [596]

:[595]
pushi.e 4139
pop.v.i self.sprite_index
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v

:[596]
popenv [595]
pushi.e 131
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[597]
push.v self.con
pushi.e 132
cmp.i.v EQ
bf [599]

:[598]
pushi.e 9
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1090_0"@40562
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 133
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[599]
push.v self.con
pushi.e 133
cmp.i.v EQ
bf [601]

:[600]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [602]

:[601]
push.e 0

:[602]
bf [611]

:[603]
pushi.e 364
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 134
pop.v.i self.con
pushi.e 4147
conv.i.v
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e 50
add.i.v
push.v self.s
pushi.e -9
push.v [stacktop]self.x
pushi.e 200
add.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.spadechunk2
pushi.e 180
push.v self.spadechunk2
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 0
push.v self.spadechunk2
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 2
push.v self.spadechunk2
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.d 0.1
push.v self.spadechunk2
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e 0
pop.v.i self.i

:[604]
push.v self.i
pushi.e 15
cmp.i.v LT
bf [611]

:[605]
pushi.e 0
pop.v.i self.j

:[606]
push.v self.j
pushi.e 2
cmp.i.v LT
bf [610]

:[607]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.deathwave
push.v self.j
conv.v.i
pushaf.e
pushi.e -9
pushenv [609]

:[608]
call.i instance_destroy(argc=0)
popz.v

:[609]
popenv [608]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [606]

:[610]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [604]

:[611]
push.v self.con
pushi.e 134
cmp.i.v EQ
bf [614]

:[612]
push.v self.spadechunk2
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.spadechunk2
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 2
cmp.i.v GTE
bf [614]

:[613]
pushi.e 135
pop.v.i self.con

:[614]
push.v self.con
pushi.e 135
cmp.i.v EQ
bf [616]

:[615]
pushi.e 33
pop.v.i global.typer
pushi.e 20
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1137_0"@40564
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
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
pushi.e 136
pop.v.i self.con

:[616]
push.v self.con
pushi.e 136
cmp.i.v EQ
bf [618]

:[617]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [619]

:[618]
push.e 0

:[619]
bf [623]

:[620]
pushi.e 363
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.s
pushi.e -9
push.v [stacktop]self.x
pushi.e 90
add.i.v
push.v self.spadechunk2
pushi.e -9
push.v [stacktop]self.x
sub.v.v
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.hdisto
push.v self.hdisto
pushi.e 7
add.i.v
push.v self.spadechunk2
pushi.e -9
pop.v.v [stacktop]self.hspeed
pushi.e -1
push.v self.spadechunk2
pushi.e -9
pop.v.i [stacktop]self.friction
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.s
pushi.e -9
push.v [stacktop]self.x
pushi.e 60
add.i.v
push.v self.k
pushi.e -9
push.v [stacktop]self.y
push.v self.k
pushi.e -9
push.v [stacktop]self.x
call.i point_distance(argc=4)
pushi.e 10
conv.i.d
div.d.v
pop.v.v self.disto
push.v self.s
push.v self.k
pushi.e -9
pop.v.v [stacktop]self.s
push.v self.disto
push.v self.k
pushi.e -9
pop.v.v [stacktop]self.disto
push.v self.k
pushi.e -9
pushenv [622]

:[621]
push.d 0.5
conv.d.v
pushi.e 3829
conv.i.v
call.i gml_Script_scr_anim_ch1(argc=2)
popz.v
push.v self.disto
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.s
pushi.e -9
push.v [stacktop]self.x
pushi.e 60
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[622]
popenv [621]
pushi.e 137
pop.v.i self.con
push.i 68097
setowner.e
push.v self.disto
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[623]
push.v self.con
pushi.e 138
cmp.i.v EQ
bf [629]

:[624]
pushi.e 358
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.k
pushi.e -9
pushenv [626]

:[625]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v

:[626]
popenv [625]
push.v self.spadechunk2
pushi.e -9
pushenv [628]

:[627]
call.i instance_destroy(argc=0)
popz.v

:[628]
popenv [627]
pushi.e 139
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[629]
push.v self.con
pushi.e 140
cmp.i.v EQ
bf [631]

:[630]
pushi.e 9
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1176_0"@40566
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
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
pushi.e 141
pop.v.i self.con

:[631]
push.v self.con
pushi.e 141
cmp.i.v EQ
bf [633]

:[632]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [634]

:[633]
push.e 0

:[634]
bf [641]

:[635]
pushi.e 429
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 363
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.deathhit0
pushi.e 0
pop.v.i self.deathhit1
pushi.e 0
pop.v.i self.i

:[636]
push.v self.i
pushi.e 15
cmp.i.v LT
bf [640]

:[637]
push.i 175429
setowner.e
pushi.e 4147
conv.i.v
pushi.e -30
push.v self.i
pushi.e 30
mul.i.v
sub.v.i
push.v self.k
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_marker_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.deathwave
pushi.e 0
popaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.deathwave
pushi.e 0
pushaf.e
pushi.e -9
pushenv [639]

:[638]
pushi.e 40
pop.v.i self.vspeed
pushi.e 270
pop.v.i self.image_angle

:[639]
popenv [638]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [636]

:[640]
pushi.e 142
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[641]
push.v self.con
pushi.e 142
cmp.i.v EQ
bf [656]

:[642]
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.deathwave
pushi.e 0
pushaf.e
pushi.e -9
push.v [stacktop]self.y
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
add.i.v
cmp.v.v GTE
bf [644]

:[643]
push.v self.deathhit0
pushi.e 0
cmp.i.v EQ
b [645]

:[644]
push.e 0

:[645]
bf [649]

:[646]
pushi.e 435
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.s
pushi.e -9
pushenv [648]

:[647]
pushi.e 4151
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.friction
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v

:[648]
popenv [647]
pushi.e 1
pop.v.i self.deathhit0

:[649]
pushi.e -1
pushi.e 0
push.v [arraypushaf]self.deathwave
pushi.e 0
pushaf.e
pushi.e -9
push.v [stacktop]self.y
push.v self.k
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
add.i.v
cmp.v.v GTE
bf [651]

:[650]
push.v self.deathhit1
pushi.e 0
cmp.i.v EQ
b [652]

:[651]
push.e 0

:[652]
bf [656]

:[653]
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 435
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 439
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.k
pushi.e -9
pushenv [655]

:[654]
pushi.e 4139
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.hspeed
pushi.e 2
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.friction
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v

:[655]
popenv [654]
pushi.e 1
pop.v.i self.deathhit1

:[656]
push.v self.con
pushi.e 143
cmp.i.v EQ
bf [658]

:[657]
pushi.e 0
pop.v.i global.fe
pushi.e 33
pop.v.i global.typer
pushi.e 20
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1227_0"@40567
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.d 143.1
pop.v.d self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[658]
push.v self.con
push.d 143.1
cmp.d.v EQ
bf [660]

:[659]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [661]

:[660]
push.e 0

:[661]
bf [663]

:[662]
pushi.e 363
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 4147
conv.i.v
pushi.e -30
conv.i.v
push.v self.k
pushi.e -9
push.v [stacktop]self.x
pushi.e 30
add.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.spadechunk3
pushi.e 30
push.v self.spadechunk3
pushi.e -9
pop.v.i [stacktop]self.vspeed
pushi.e 270
push.v self.spadechunk3
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 0
pop.v.i self.deathhit1
pushi.e 144
pop.v.i self.con

:[663]
push.v self.con
pushi.e 144
cmp.i.v EQ
bf [671]

:[664]
push.v self.spadechunk3
pushi.e -9
push.v [stacktop]self.y
push.v self.k
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
add.i.v
cmp.v.v GTE
bf [666]

:[665]
push.v self.deathhit1
pushi.e 0
cmp.i.v EQ
b [667]

:[666]
push.e 0

:[667]
bf [671]

:[668]
pushi.e 439
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.k
pushi.e -9
pushenv [670]

:[669]
pushi.e 4138
pop.v.i self.sprite_index
pushi.e -16
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.friction
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v

:[670]
popenv [669]
pushi.e 1
pop.v.i self.deathhit1
pushi.e 145
pop.v.i self.con

:[671]
push.v self.con
pushi.e 145
cmp.i.v EQ
bf [677]

:[672]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
cmp.i.v GT
bf [675]

:[673]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.k
pushi.e -9
push.v [stacktop]self.hspeed
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
cmp.i.v LTE
bf [675]

:[674]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[675]
push.v self.k
pushi.e -9
push.v [stacktop]self.hspeed
call.i abs(argc=1)
push.d 0.2
cmp.d.v LT
bf [677]

:[676]
pushi.e 150
pop.v.i self.con

:[677]
push.v self.con
pushi.e 150
cmp.i.v GTE
bf [679]

:[678]
push.v self.con
pushi.e 250
cmp.i.v LT
b [680]

:[679]
push.e 0

:[680]
bf [1042]

:[681]
push.v self.con
pushi.e 150
cmp.i.v EQ
bf [694]

:[682]
push.v self.part
pushi.e 0
cmp.i.v EQ
bf [684]

:[683]
pushi.e 4138
conv.i.v
pushi.e 180
conv.i.v
pushi.e 266
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
pushi.e 1
pop.v.i self.part
b [693]

:[684]
push.v self.king
pushi.e -9
pushenv [686]

:[685]
call.i instance_destroy(argc=0)
popz.v

:[686]
popenv [685]
push.v self.s
pushi.e -9
pushenv [688]

:[687]
call.i instance_destroy(argc=0)
popz.v

:[688]
popenv [687]
push.v self.r
pushi.e -9
pushenv [690]

:[689]
call.i instance_destroy(argc=0)
popz.v

:[690]
popenv [689]
pushi.e 1407
pushenv [692]

:[691]
call.i instance_destroy(argc=0)
popz.v

:[692]
popenv [691]
pushi.e 4138
conv.i.v
pushi.e 180
conv.i.v
pushi.e 266
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k

:[693]
pushi.e 151
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[694]
push.v self.con
pushi.e 152
cmp.i.v EQ
bf [696]

:[695]
pushi.e 4129
conv.i.v
push.v self.k
pushi.e -9
push.v [stacktop]self.y
pushi.e 80
sub.i.v
pushi.e 640
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.king
pushi.e 0
pop.v.i self.siner
pushi.e 153
pop.v.i self.con

:[696]
push.v self.con
pushi.e 153
cmp.i.v EQ
bf [704]

:[697]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
call.i abs(argc=1)
pop.v.v self.sinup
push.v self.sinup
pushi.e 1
cmp.i.v GTE
bf [699]

:[698]
pushi.e 1
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.image_index
b [700]

:[699]
pushi.e 0
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.image_index

:[700]
push.v self.king
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.sinup
sub.v.v
pop.i.v [stacktop]self.x
push.v self.king
pushi.e -9
push.v [stacktop]self.x
push.v self.k
pushi.e -9
push.v [stacktop]self.x
pushi.e 47
add.i.v
cmp.v.v LTE
bf [704]

:[701]
push.v self.k
pushi.e -9
push.v [stacktop]self.x
pushi.e 46
add.i.v
push.v self.king
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.king
pushi.e -9
pushenv [703]

:[702]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[703]
popenv [702]
pushi.e 154
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[704]
push.v self.con
pushi.e 155
cmp.i.v EQ
bf [706]

:[705]
pushi.e 5
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1324_0"@40570
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1325_0"@40571
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1326_0"@40572
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1327_0"@40573
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1328_0"@40574
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
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
pushi.e 156
pop.v.i self.con

:[706]
push.v self.con
pushi.e 156
cmp.i.v EQ
bf [708]

:[707]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [709]

:[708]
push.e 0

:[709]
bf [713]

:[710]
pushi.e 0
push.v self.k
pushi.e -9
pop.v.i [stacktop]self.visible
push.v self.king
pushi.e -9
pushenv [712]

:[711]
pushi.e 4124
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index

:[712]
popenv [711]
pushi.e 157
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[713]
push.v self.con
pushi.e 158
cmp.i.v EQ
bf [715]

:[714]
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1345_0"@40575
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1346_0"@40576
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
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
pushi.e 159
pop.v.i self.con
pushi.e 0
pop.v.i self.grabsounded

:[715]
push.v self.con
pushi.e 159
cmp.i.v EQ
bf [717]

:[716]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [718]

:[717]
push.e 0

:[718]
bf [723]

:[719]
push.v self.grabsounded
pushi.e 0
cmp.i.v EQ
bf [721]

:[720]
pushi.e 378
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i self.grabsounded

:[721]
push.v self.king
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.d 0.25
add.d.v
pop.i.v [stacktop]self.image_index
push.v self.king
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 4
cmp.i.v GTE
bf [723]

:[722]
pushi.e 364
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 4147
conv.i.v
pushi.e 100
conv.i.v
push.v self.k
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.spadechunk4
pushi.e 0
push.v self.spadechunk4
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e -2
push.v self.spadechunk4
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.d 0.1
push.v self.spadechunk4
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e 270
push.v self.spadechunk4
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 160
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[723]
push.v self.con
pushi.e 160
cmp.i.v EQ
bf [725]

:[724]
push.v self.spadechunk4
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_alpha

:[725]
push.v self.con
pushi.e 161
cmp.i.v EQ
bf [727]

:[726]
pushi.e 4
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1379_0"@40579
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
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
pushi.e 162
pop.v.i self.con

:[727]
push.v self.con
pushi.e 162
cmp.i.v EQ
bf [729]

:[728]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [730]

:[729]
push.e 0

:[730]
bf [734]

:[731]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 379
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 435
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
pushi.e 1406
conv.i.v
push.v self.king
pushi.e -9
push.v [stacktop]self.y
pushi.e 80
add.i.v
push.v self.king
pushi.e -9
push.v [stacktop]self.x
pushi.e 52
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.hitanim
pushi.e -100
push.v self.hitanim
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 3781
push.v self.hitanim
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.hitanim
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.hitanim
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.5
push.v self.hitanim
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.spadechunk4
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 4137
conv.i.v
push.v self.king
pushi.e -9
push.v [stacktop]self.y
pushi.e 34
add.i.v
push.v self.king
pushi.e -9
push.v [stacktop]self.x
pushi.e 30
sub.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k2
pushi.e 1
push.v self.k2
pushi.e -9
pop.v.i [stacktop]self.gravity
pushi.e -2
push.v self.k2
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.v self.king
pushi.e -9
pushenv [733]

:[732]
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v
pushi.e 5
pop.v.i self.image_index

:[733]
popenv [732]
pushi.e 163
pop.v.i self.con

:[734]
push.v self.con
pushi.e 163
cmp.i.v EQ
bf [739]

:[735]
push.v self.spadechunk4
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.2
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.k2
pushi.e -9
push.v [stacktop]self.y
push.v self.king
pushi.e -9
push.v [stacktop]self.y
pushi.e 80
add.i.v
cmp.v.v GTE
bf [739]

:[736]
push.v self.k2
pushi.e -9
push.v [stacktop]self.x
push.v self.k
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.k2
pushi.e -9
pushenv [738]

:[737]
call.i instance_destroy(argc=0)
popz.v

:[738]
popenv [737]
pushi.e 1
push.v self.k
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 164
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[739]
push.v self.con
pushi.e 165
cmp.i.v EQ
bf [741]

:[740]
pushi.e 4148
conv.i.v
push.v self.king
pushi.e -9
push.v [stacktop]self.y
pushi.e 76
add.i.v
pushi.e 640
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
pushi.e 166
pop.v.i self.con
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[741]
push.v self.con
pushi.e 167
cmp.i.v EQ
bf [743]

:[742]
pushi.e 168
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[743]
push.v self.con
pushi.e 169
cmp.i.v EQ
bf [745]

:[744]
push.i 231459
setowner.e
push.s "wind.ogg"@40473
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.7
conv.d.v
push.d 0.5
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 29
pop.v.v [array]self.flag
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1442_0"@40581
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1443_0"@40582
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
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
pushi.e 170
pop.v.i self.con

:[745]
push.v self.con
pushi.e 170
cmp.i.v EQ
bf [747]

:[746]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [748]

:[747]
push.e 0

:[748]
bf [752]

:[749]
pushi.e 424
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.king
pushi.e -9
pushenv [751]

:[750]
pushi.e 4133
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.hspeed
push.d 0.5
pop.v.d self.friction
pushi.e 0
pop.v.i self.image_index

:[751]
popenv [750]
pushi.e 171
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[752]
push.v self.con
pushi.e 172
cmp.i.v EQ
bf [756]

:[753]
pushi.e 20
pop.v.i global.fc
pushi.e 33
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1470_0"@40583
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1471_0"@40584
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1472_0"@40585
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1473_0"@40586
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1474_0"@40587
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1475_0"@40588
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1476_0"@40589
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [755]

:[754]
push.s "obj_kingcutscene_slash_Step_0_gml_1480_0"@40590
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1481_0"@40591
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[755]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 173
pop.v.i self.con

:[756]
push.v self.con
pushi.e 173
cmp.i.v EQ
bf [758]

:[757]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [759]

:[758]
push.e 0

:[759]
bf [761]

:[760]
pushi.e 174
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 7
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[761]
push.v self.con
pushi.e 175
cmp.i.v EQ
bf [765]

:[762]
push.v self.s
pushi.e -9
pushenv [764]

:[763]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[764]
popenv [763]
pushi.e 176
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[765]
push.v self.con
pushi.e 177
cmp.i.v EQ
bf [767]

:[766]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1513_0"@40592
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
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
pushi.e 178
pop.v.i self.con
pushi.e 0
pop.v.i self.siner
push.v self.king
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.kingxnow

:[767]
push.v self.con
pushi.e 178
cmp.i.v EQ
bf [769]

:[768]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [770]

:[769]
push.e 0

:[770]
bf [778]

:[771]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
call.i abs(argc=1)
pop.v.v self.sinup
push.v self.king
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.sinup
add.v.v
pop.i.v [stacktop]self.x
push.v self.sinup
push.d 1.5
cmp.d.v GTE
bf [773]

:[772]
pushi.e 1
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.image_index
b [774]

:[773]
pushi.e 0
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.image_index

:[774]
push.v self.king
pushi.e -9
push.v [stacktop]self.x
push.v self.s
pushi.e -9
push.v [stacktop]self.x
pushi.e 240
sub.i.v
cmp.v.v GTE
bf [778]

:[775]
push.v self.s
pushi.e -9
push.v [stacktop]self.x
pushi.e 240
sub.i.v
push.v self.king
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.king
pushi.e -9
pushenv [777]

:[776]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[777]
popenv [776]
pushi.e 179
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[778]
push.v self.con
pushi.e 180
cmp.i.v EQ
bf [782]

:[779]
push.v self.king
pushi.e -9
pushenv [781]

:[780]
pushi.e 0
pop.v.i self.image_index

:[781]
popenv [780]
pushi.e 181
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[782]
push.v self.con
pushi.e 182
cmp.i.v EQ
bf [786]

:[783]
pushi.e 33
pop.v.i global.typer
pushi.e 5
pop.v.i global.fe
pushi.e 20
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1550_0"@40594
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1551_0"@40595
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [785]

:[784]
push.s "obj_kingcutscene_slash_Step_0_gml_1555_0"@40596
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1556_0"@40597
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[785]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 183
pop.v.i self.con
pushi.e 0
pop.v.i self.siner
push.v self.king
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.kx

:[786]
push.v self.con
pushi.e 183
cmp.i.v EQ
bf [788]

:[787]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [789]

:[788]
push.e 0

:[789]
bf [795]

:[790]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
call.i abs(argc=1)
pop.v.v self.sinup
push.v self.king
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.sinup
add.v.v
pop.i.v [stacktop]self.x
push.v self.sinup
pushi.e 1
cmp.i.v GTE
bf [792]

:[791]
pushi.e 1
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.image_index
b [793]

:[792]
pushi.e 0
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.image_index

:[793]
push.v self.king
pushi.e -9
push.v [stacktop]self.x
push.v self.kx
pushi.e 80
add.i.v
cmp.v.v GTE
bf [795]

:[794]
pushi.e 187
pop.v.i self.con

:[795]
push.v self.con
pushi.e 187
cmp.i.v EQ
bf [801]

:[796]
push.v self.s
pushi.e -9
pushenv [798]

:[797]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[798]
popenv [797]
push.v self.king
pushi.e -9
pushenv [800]

:[799]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[800]
popenv [799]
pushi.e 188
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[801]
push.v self.con
pushi.e 189
cmp.i.v EQ
bf [805]

:[802]
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1590_0"@40598
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1591_0"@40599
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [804]

:[803]
push.s "obj_kingcutscene_slash_Step_0_gml_1594_0"@40600
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1595_0"@40601
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[804]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 190
pop.v.i self.con

:[805]
push.v self.con
pushi.e 190
cmp.i.v EQ
bf [807]

:[806]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [808]

:[807]
push.e 0

:[808]
bf [814]

:[809]
pushi.e 4
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1605_0"@40602
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1607_0"@40603
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_kingface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1609_0"@40604
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [811]

:[810]
push.s "obj_kingcutscene_slash_Step_0_gml_1613_0"@40605
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[811]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 191
pop.v.i self.con
pushi.e 364
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.i 175438
setowner.e
pushi.e 4147
conv.i.v
push.v self.k
pushi.e -9
push.v [stacktop]self.y
pushi.e 100
sub.i.v
push.v self.k
pushi.e -9
push.v [stacktop]self.x
pushi.e 30
add.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.spadechunkf
pushi.e 4147
conv.i.v
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e 100
sub.i.v
push.v self.s
pushi.e -9
push.v [stacktop]self.x
pushi.e 70
add.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.spadechunkf
pushi.e 0
pop.v.i self.i

:[812]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [814]

:[813]
push.i 133652
setowner.e
pushi.e 270
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunkf
pushi.e -9
pop.v.i [stacktop]self.image_angle
push.i 133653
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunkf
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.i 133624
setowner.e
pushi.e -4
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunkf
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.i 133627
setowner.e
push.d 0.5
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunkf
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [812]

:[814]
push.v self.con
pushi.e 191
cmp.i.v EQ
bf [825]

:[815]
pushi.e 0
pop.v.i self.i

:[816]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [820]

:[817]
push.i 133653
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunkf
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_alpha
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunkf
pushi.e -9
push.v [stacktop]self.image_alpha
pushi.e 3
cmp.i.v GTE
bf [819]

:[818]
pushi.e 192
pop.v.i self.con

:[819]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [816]

:[820]
push.v self.con
pushi.e 192
cmp.i.v EQ
bf [822]

:[821]
push.v self.type
pushi.e 1
cmp.i.v EQ
b [823]

:[822]
push.e 0

:[823]
bf [825]

:[824]
pushi.e 240
pop.v.i self.con

:[825]
push.v self.con
pushi.e 192
cmp.i.v EQ
bf [827]

:[826]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [828]

:[827]
push.e 0

:[828]
bf [834]

:[829]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
push.v self.king
pushi.e -9
pushenv [831]

:[830]
pushi.e 4135
pop.v.i self.sprite_index

:[831]
popenv [830]
push.v self.king
pushi.e -9
pushenv [833]

:[832]
call.i gml_Script_scr_oflash_ch1(argc=0)
pop.v.v self.o
push.i 16711680
push.v self.o
pushi.e -9
pop.v.i [stacktop]self.flashcolor

:[833]
popenv [832]
pushi.e 362
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 193
pop.v.i self.con
pushi.e 0
pop.v.i self.spadetimer
push.i 133653
setowner.e
pushi.e 1
pushi.e -1
pushi.e 0
push.v [array]self.spadechunkf
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 1
pushi.e -1
pushi.e 1
push.v [array]self.spadechunkf
pushi.e -9
pop.v.i [stacktop]self.image_alpha

:[834]
push.v self.con
pushi.e 193
cmp.i.v EQ
bf [844]

:[835]
push.v self.spadetimer
pushi.e 1
add.i.v
pop.v.v self.spadetimer
pushi.e 0
pop.v.i self.i

:[836]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [838]

:[837]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spadechunkf
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.1
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [836]

:[838]
push.v self.spadetimer
pushi.e 60
cmp.i.v GTE
bf [844]

:[839]
pushi.e -1
pushi.e 0
push.v [array]self.spadechunkf
pushi.e -9
pushenv [841]

:[840]
call.i instance_destroy(argc=0)
popz.v

:[841]
popenv [840]
pushi.e -1
pushi.e 1
push.v [array]self.spadechunkf
pushi.e -9
pushenv [843]

:[842]
call.i instance_destroy(argc=0)
popz.v

:[843]
popenv [842]
pushi.e 194
pop.v.i self.con

:[844]
push.v self.con
pushi.e 194
cmp.i.v EQ
bf [846]

:[845]
pushi.e 6
pop.v.i global.fe
pushi.e 33
pop.v.i global.typer
pushi.e 20
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1678_0"@40608
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1679_0"@40609
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1680_0"@40610
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
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
pushi.e 195
pop.v.i self.con

:[846]
push.v self.con
pushi.e 195
cmp.i.v EQ
bf [848]

:[847]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [849]

:[848]
push.e 0

:[849]
bf [853]

:[850]
push.v self.king
pushi.e -9
pushenv [852]

:[851]
pushi.e 1
pop.v.i self.image_index
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v
pushi.e -4
pop.v.i self.hspeed
push.d 0.5
pop.v.d self.friction

:[852]
popenv [851]
pushi.e 1
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1690_0"@40611
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1691_0"@40612
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
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
pushi.e 196
pop.v.i self.con

:[853]
push.v self.con
pushi.e 196
cmp.i.v EQ
bf [855]

:[854]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [856]

:[855]
push.e 0

:[856]
bf [860]

:[857]
push.v self.king
pushi.e -9
pushenv [859]

:[858]
pushi.e 2
pop.v.i self.image_index

:[859]
popenv [858]
pushi.e 36
pop.v.i global.typer
pushi.e 8
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1702_0"@40613
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
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
pushi.e 197
pop.v.i self.con

:[860]
push.v self.con
pushi.e 197
cmp.i.v EQ
bf [862]

:[861]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [863]

:[862]
push.e 0

:[863]
bf [869]

:[864]
pushi.e 201
pop.v.i self.con
push.v self.king
pushi.e -9
pushenv [866]

:[865]
pushi.e 4134
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed

:[866]
popenv [865]
push.v self.s
pushi.e -9
pushenv [868]

:[867]
push.v self.x
pushi.e 60
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 10
sub.i.v
pop.v.v self.y
pushi.e 4154
pop.v.i self.sprite_index

:[868]
popenv [867]

:[869]
push.v self.con
pushi.e 200
cmp.i.v EQ
bf [877]

:[870]
pushi.e 4134
conv.i.v
pushi.e 100
conv.i.v
pushi.e 480
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.king
push.v self.king
pushi.e -9
pushenv [872]

:[871]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[872]
popenv [871]
pushi.e 4138
conv.i.v
pushi.e 180
conv.i.v
pushi.e 262
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
push.v self.k
pushi.e -9
pushenv [874]

:[873]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[874]
popenv [873]
pushi.e 4154
conv.i.v
pushi.e 166
conv.i.v
pushi.e 700
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
push.v self.s
pushi.e -9
pushenv [876]

:[875]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[876]
popenv [875]
pushi.e 200
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 201
pop.v.i self.con

:[877]
push.v self.con
pushi.e 201
cmp.i.v EQ
bf [885]

:[878]
push.v self.s
pushi.e -9
pushenv [880]

:[879]
pushi.e -13
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[880]
popenv [879]
push.v self.k
pushi.e -9
pushenv [882]

:[881]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[882]
popenv [881]
push.v self.king
pushi.e -9
pushenv [884]

:[883]
pushi.e -8
pop.v.i self.vspeed
push.d 0.8
pop.v.d self.friction
push.i 800000
pop.v.i self.depth

:[884]
popenv [883]
pushi.e 28
conv.i.v
pushi.e 0
conv.i.v
pushi.e -7
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
pushi.e 202
pop.v.i self.con
pushi.e 0
pop.v.i self.blend
push.i 68097
setowner.e
pushi.e 28
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[885]
push.v self.con
pushi.e 202
cmp.i.v EQ
bf [887]

:[886]
push.v self.blend
push.d 0.02
add.d.v
pop.v.v self.blend
push.v self.blend
pushi.e 0
conv.i.v
push.i 16777215
conv.i.v
call.i merge_color(argc=3)
push.v self.king
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[887]
push.v self.con
pushi.e 203
cmp.i.v EQ
bf [893]

:[888]
push.v self.r
pushi.e -9
pushenv [890]

:[889]
call.i instance_destroy(argc=0)
popz.v

:[890]
popenv [889]
push.v self.s
pushi.e -9
pushenv [892]

:[891]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[892]
popenv [891]
pushi.e 204
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[893]
push.v self.con
pushi.e 205
cmp.i.v EQ
bf [897]

:[894]
push.v self.k
pushi.e -9
pushenv [896]

:[895]
pushi.e 4139
pop.v.i self.sprite_index

:[896]
popenv [895]
pushi.e 3
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1760_0"@40614
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
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
pushi.e 206
pop.v.i self.con

:[897]
push.v self.con
pushi.e 206
cmp.i.v EQ
bf [899]

:[898]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [900]

:[899]
push.e 0

:[900]
bf [904]

:[901]
pushi.e 3573
conv.i.v
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 640
add.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.r
push.v self.r
pushi.e -9
pushenv [903]

:[902]
pushi.e -6
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[903]
popenv [902]
push.v self.s
pushi.e -9
push.v [stacktop]self.depth
pushi.e 1000
sub.i.v
push.v self.r
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 207
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 36
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[904]
push.v self.con
pushi.e 208
cmp.i.v EQ
bf [912]

:[905]
push.v self.r
pushi.e -9
pushenv [907]

:[906]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[907]
popenv [906]
push.v self.s
pushi.e -9
pushenv [909]

:[908]
pushi.e 4155
pop.v.i self.sprite_index

:[909]
popenv [908]
push.v self.k
pushi.e -9
pushenv [911]

:[910]
pushi.e 4202
pop.v.i self.sprite_index

:[911]
popenv [910]
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1785_0"@40615
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1786_0"@40616
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1788_0"@40617
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1789_0"@40618
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
pushi.e 209
pop.v.i self.con

:[912]
push.v self.con
pushi.e 209
cmp.i.v EQ
bf [914]

:[913]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [915]

:[914]
push.e 0

:[915]
bf [919]

:[916]
push.v self.r
pushi.e -9
pushenv [918]

:[917]
pushi.e 3575
pop.v.i self.sprite_index

:[918]
popenv [917]
pushi.e 210
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[919]
push.v self.con
pushi.e 211
cmp.i.v EQ
bf [921]

:[920]
pushi.e 2
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1806_0"@40619
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1807_0"@40620
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1808_0"@40621
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1809_0"@40622
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1810_0"@40623
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
pushi.e 212
pop.v.i self.con

:[921]
push.v self.con
pushi.e 212
cmp.i.v EQ
bf [923]

:[922]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [924]

:[923]
push.e 0

:[924]
bf [929]

:[925]
push.v self.s
pushi.e -9
pushenv [926]

:[926]
popenv [926]
push.v self.r
pushi.e -9
pushenv [928]

:[927]
pushi.e 3573
pop.v.i self.sprite_index

:[928]
popenv [927]
pushi.e 213
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[929]
push.v self.con
pushi.e 214
cmp.i.v EQ
bf [933]

:[930]
push.v self.s
pushi.e -9
pushenv [932]

:[931]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[932]
popenv [931]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1828_0"@40624
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1829_0"@40625
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1830_0"@40626
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
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
pushi.e 215
pop.v.i self.con

:[933]
push.v self.con
pushi.e 215
cmp.i.v EQ
bf [935]

:[934]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [936]

:[935]
push.e 0

:[936]
bf [940]

:[937]
push.v self.s
pushi.e -9
pushenv [939]

:[938]
pushi.e 4153
pop.v.i self.sprite_index

:[939]
popenv [938]
pushi.e 216
pop.v.i self.con

:[940]
push.v self.con
pushi.e 216
cmp.i.v EQ
bf [942]

:[941]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [943]

:[942]
push.e 0

:[943]
bf [951]

:[944]
push.v self.k
pushi.e -9
pushenv [946]

:[945]
pushi.e 4204
pop.v.i self.sprite_index

:[946]
popenv [945]
push.v self.l
pushi.e -9
pushenv [948]

:[947]
call.i instance_destroy(argc=0)
popz.v

:[948]
popenv [947]
pushi.e 3583
conv.i.v
push.v self.k
pushi.e -9
push.v [stacktop]self.y
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.l
push.v self.l
pushi.e -9
pushenv [950]

:[949]
pushi.e 8
pop.v.i self.hspeed

:[950]
popenv [949]
pushi.e 217
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[951]
push.v self.con
pushi.e 218
cmp.i.v EQ
bf [955]

:[952]
push.v self.l
pushi.e -9
pushenv [954]

:[953]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[954]
popenv [953]
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1856_0"@40627
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1858_0"@40628
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1860_0"@40629
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1861_0"@40630
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1863_0"@40631
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1864_0"@40632
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1865_0"@40633
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1867_0"@40634
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 219
pop.v.i self.con

:[955]
push.v self.con
pushi.e 219
cmp.i.v EQ
bf [957]

:[956]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [958]

:[957]
push.e 0

:[958]
bf [968]

:[959]
pushi.e 461
conv.i.v
call.i gml_Script_snd_loop_ch1(argc=1)
pop.v.v self.screen_noise
push.v self.l
pushi.e -9
pushenv [961]

:[960]
pushi.e 4140
pop.v.i self.sprite_index

:[961]
popenv [960]
push.v self.s
pushi.e -9
pushenv [963]

:[962]
pushi.e 3559
pop.v.i self.sprite_index

:[963]
popenv [962]
push.v self.r
pushi.e -9
pushenv [965]

:[964]
pushi.e 3866
pop.v.i self.sprite_index

:[965]
popenv [964]
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.shake
push.v self.shake
pushi.e -9
pushenv [967]

:[966]
pushi.e 1
pop.v.i self.permashake
pushi.e 2
pop.v.i self.shakex
pushi.e 2
pop.v.i self.shakey

:[967]
popenv [966]
pushi.e 220
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[968]
push.v self.con
pushi.e 221
cmp.i.v EQ
bf [978]

:[969]
push.v self.shake
pushi.e -9
pushenv [971]

:[970]
pushi.e 0
pop.v.i self.permashake

:[971]
popenv [970]
push.v self.screen_noise
call.i gml_Script_snd_stop_ch1(argc=1)
popz.v
push.v self.l
pushi.e -9
pushenv [973]

:[972]
pushi.e 4141
pop.v.i self.sprite_index

:[973]
popenv [972]
push.v self.s
pushi.e -9
pushenv [975]

:[974]
pushi.e 4154
pop.v.i self.sprite_index

:[975]
popenv [974]
push.v self.r
pushi.e -9
pushenv [977]

:[976]
pushi.e 3573
pop.v.i self.sprite_index

:[977]
popenv [976]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1896_0"@40636
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1898_0"@40637
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1899_0"@40638
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1900_0"@40639
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1901_0"@40640
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1902_0"@40641
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
pushi.e 222
pop.v.i self.con

:[978]
push.v self.con
pushi.e 222
cmp.i.v EQ
bf [980]

:[979]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [981]

:[980]
push.e 0

:[981]
bf [985]

:[982]
push.v self.l
pushi.e -9
pushenv [984]

:[983]
pushi.e 4140
pop.v.i self.sprite_index

:[984]
popenv [983]
pushi.e 4
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1911_0"@40642
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_1913_0"@40643
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
pushi.e 223
pop.v.i self.con

:[985]
push.v self.con
pushi.e 223
cmp.i.v EQ
bf [987]

:[986]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [988]

:[987]
push.e 0

:[988]
bf [994]

:[989]
push.v self.l
pushi.e -9
pushenv [991]

:[990]
pushi.e 4141
pop.v.i self.sprite_index

:[991]
popenv [990]
push.v self.r
pushi.e -9
pushenv [993]

:[992]
pushi.e 3570
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.vspeed

:[993]
popenv [992]
push.d 222.1
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[994]
push.v self.con
push.d 223.1
cmp.d.v EQ
bf [998]

:[995]
push.v self.r
pushi.e -9
pushenv [997]

:[996]
pushi.e 3573
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.vspeed
pushi.e -6
pop.v.i self.hspeed

:[997]
popenv [996]
push.d 222.2
pop.v.d self.con
pushi.e 35
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[998]
push.v self.con
push.d 223.2
cmp.d.v EQ
bf [1006]

:[999]
push.v self.r
pushi.e -9
pushenv [1001]

:[1000]
pushi.e 3572
pop.v.i self.sprite_index
pushi.e -3
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed

:[1001]
popenv [1000]
push.v self.k
pushi.e -9
pushenv [1003]

:[1002]
pushi.e 3
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[1003]
popenv [1002]
push.v self.s
pushi.e -9
pushenv [1005]

:[1004]
pushi.e 3
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[1005]
popenv [1004]
pushi.e 224
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1006]
push.v self.con
pushi.e 225
cmp.i.v EQ
bf [1016]

:[1007]
push.v self.k
pushi.e -9
pushenv [1009]

:[1008]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[1009]
popenv [1008]
push.v self.s
pushi.e -9
pushenv [1011]

:[1010]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[1011]
popenv [1010]
push.v self.r
pushi.e -9
pushenv [1013]

:[1012]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[1013]
popenv [1012]
push.v self.r
pushi.e -9
pushenv [1015]

:[1014]
pushi.e 3575
pop.v.i self.sprite_index

:[1015]
popenv [1014]
pushi.e 226
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1016]
push.v self.con
pushi.e 227
cmp.i.v EQ
bf [1018]

:[1017]
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_1957_0"@40644
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1958_0"@40645
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
pushi.e 268
pop.v.i self.con

:[1018]
push.v self.con
pushi.e 240
cmp.i.v EQ
bf [1020]

:[1019]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1021]

:[1020]
push.e 0

:[1021]
bf [1023]

:[1022]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_1973_0"@40646
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_1974_0"@40647
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
pushi.e 241
pop.v.i self.con

:[1023]
push.v self.con
pushi.e 241
cmp.i.v EQ
bf [1025]

:[1024]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1026]

:[1025]
push.e 0

:[1026]
bf [1034]

:[1027]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
push.v self.s
pushi.e -9
pushenv [1029]

:[1028]
push.v self.x
pushi.e 60
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 10
sub.i.v
pop.v.v self.y
pushi.e 4153
pop.v.i self.sprite_index

:[1029]
popenv [1028]
push.v self.king
pushi.e -9
pushenv [1031]

:[1030]
pushi.e 4127
pop.v.i self.sprite_index

:[1031]
popenv [1030]
pushi.e 0
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.siner
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.shake
push.v self.shake
pushi.e -9
pushenv [1033]

:[1032]
pushi.e 1
pop.v.i self.permashake
pushi.e 2
pop.v.i self.shakex
pushi.e 2
pop.v.i self.shakey

:[1033]
popenv [1032]
pushi.e 461
conv.i.v
call.i gml_Script_snd_loop_ch1(argc=1)
pop.v.v self.rumble
pushi.e 242
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1034]
push.v self.con
pushi.e 242
cmp.i.v EQ
bf [1040]

:[1035]
pushi.e -1
pushi.e 0
push.v [array]self.spadechunkf
pushi.e -9
pushenv [1037]

:[1036]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[1037]
popenv [1036]
pushi.e -1
pushi.e 1
push.v [array]self.spadechunkf
pushi.e -9
pushenv [1039]

:[1038]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha

:[1039]
popenv [1038]

:[1040]
push.v self.con
pushi.e 243
cmp.i.v EQ
bf [1042]

:[1041]
pushi.e 250
pop.v.i self.con

:[1042]
push.v self.con
pushi.e 250
cmp.i.v GTE
bf [1044]

:[1043]
push.v self.con
pushi.e 265
cmp.i.v LTE
b [1045]

:[1044]
push.e 0

:[1045]
bf [1132]

:[1046]
push.v self.con
pushi.e 250
cmp.i.v EQ
bf [1064]

:[1047]
push.v self.part
pushi.e 0
cmp.i.v EQ
bf [1051]

:[1048]
pushi.e 4138
conv.i.v
pushi.e 180
conv.i.v
pushi.e 266
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
push.v self.k
pushi.e -9
pushenv [1050]

:[1049]
push.i 800000
pop.v.i self.depth

:[1050]
popenv [1049]
pushi.e 200
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 4121
conv.i.v
pushi.e 100
conv.i.v
pushi.e 439
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.king
pushi.e 0
push.v self.king
pushi.e -9
pop.v.i [stacktop]self.siner
pushi.e 1
pop.v.i self.part

:[1051]
push.v self.k
pushi.e -9
pushenv [1053]

:[1052]
push.i 800000
pop.v.i self.depth

:[1053]
popenv [1052]
pushi.e 8
pop.v.i self.xmake
pushi.e 4
pop.v.i self.ymake
pushi.e 0
pop.v.i self.i

:[1054]
push.v self.i
push.v self.xmake
cmp.v.v LT
bf [1061]

:[1055]
pushi.e 0
pop.v.i self.j

:[1056]
push.v self.j
push.v self.ymake
cmp.v.v LT
bf [1060]

:[1057]
push.i 175443
setowner.e
pushi.e 4117
conv.i.v
pushi.e 230
push.v self.j
pushi.e 30
mul.i.v
add.v.i
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 180
sub.i.v
push.v self.i
pushi.e 90
mul.i.v
sub.v.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.cwp
push.v self.j
conv.v.i
popaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.cwp
push.v self.j
conv.v.i
pushaf.e
pushi.e -9
pushenv [1059]

:[1058]
pushi.e 0
pop.v.i self.siner
pushi.e 12
pop.v.i self.hspeed
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[1059]
popenv [1058]
push.i 231492
setowner.e
push.v self.i
push.v self.j
pushi.e 2
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.cwp
push.v self.j
conv.v.i
pushaf.e
pushi.e -9
pop.v.v [stacktop]self.siner
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [1056]

:[1060]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1054]

:[1061]
pushi.e 3583
conv.i.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 180
sub.i.v
pushi.e 280
sub.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.l
push.v self.l
pushi.e -9
pushenv [1063]

:[1062]
pushi.e 12
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.siner

:[1063]
popenv [1062]
pushi.e 1
pop.v.i self.crowdshift
pushi.e 251
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.lifttimer
pushi.e 0
pop.v.i self.liftking

:[1064]
push.v self.crowdshift
pushi.e 1
cmp.i.v EQ
bf [1076]

:[1065]
pushi.e 0
pop.v.i self.i

:[1066]
push.v self.i
push.v self.xmake
cmp.v.v LT
bf [1073]

:[1067]
pushi.e 0
pop.v.i self.j

:[1068]
push.v self.j
push.v self.ymake
cmp.v.v LT
bf [1072]

:[1069]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.cwp
push.v self.j
conv.v.i
pushaf.e
pushi.e -9
pushenv [1071]

:[1070]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 2
push.v self.siner
pushi.e 12
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
add.v.i
pop.v.v self.image_xscale
pushi.e 2
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.i
pop.v.v self.image_yscale

:[1071]
popenv [1070]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [1068]

:[1072]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1066]

:[1073]
push.v self.l
pushi.e -9
pushenv [1075]

:[1074]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.y

:[1075]
popenv [1074]

:[1076]
push.v self.liftking
pushi.e 1
cmp.i.v EQ
bf [1080]

:[1077]
push.v self.king
pushi.e -9
pushenv [1079]

:[1078]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
pop.v.v self.y

:[1079]
popenv [1078]

:[1080]
push.v self.con
pushi.e 251
cmp.i.v EQ
bf [1094]

:[1081]
push.v self.lifttimer
pushi.e 1
add.i.v
pop.v.v self.lifttimer
push.v self.lifttimer
pushi.e 18
cmp.i.v EQ
bt [1083]

:[1082]
push.v self.lifttimer
pushi.e 35
cmp.i.v EQ
b [1084]

:[1083]
push.e 1

:[1084]
bf [1086]

:[1085]
pushi.e 369
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[1086]
push.v self.lifttimer
pushi.e 18
cmp.i.v GTE
bf [1090]

:[1087]
push.v self.k
pushi.e -9
pushenv [1089]

:[1088]
pushi.e 4139
pop.v.i self.sprite_index
push.v self.x
pushi.e 12
add.i.v
pop.v.v self.x

:[1089]
popenv [1088]

:[1090]
push.v self.lifttimer
pushi.e 35
cmp.i.v GTE
bf [1094]

:[1091]
push.v self.king
pushi.e -9
pushenv [1093]

:[1092]
pushi.e -8
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.friction
pushi.e 4120
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[1093]
popenv [1092]
pushi.e 1
pop.v.i self.liftking

:[1094]
push.v self.con
pushi.e 252
cmp.i.v EQ
bf [1108]

:[1095]
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
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 1468
pushenv [1097]

:[1096]
pushi.e 0
pop.v.i self.permashake

:[1097]
popenv [1096]
pushi.e 461
conv.i.v
call.i gml_Script_snd_stop_ch1(argc=1)
popz.v
push.v self.l
pushi.e -9
pushenv [1099]

:[1098]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[1099]
popenv [1098]
pushi.e 0
pop.v.i self.i

:[1100]
push.v self.i
push.v self.xmake
cmp.v.v LT
bf [1107]

:[1101]
pushi.e 0
pop.v.i self.j

:[1102]
push.v self.j
push.v self.ymake
cmp.v.v LT
bf [1106]

:[1103]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.cwp
push.v self.j
conv.v.i
pushaf.e
pushi.e -9
pushenv [1105]

:[1104]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[1105]
popenv [1104]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [1102]

:[1106]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1100]

:[1107]
pushi.e 253
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1108]
push.v self.con
pushi.e 254
cmp.i.v EQ
bf [1110]

:[1109]
pushi.e 33
pop.v.i global.typer
pushi.e 20
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2116_0"@40654
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2117_0"@40655
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2119_0"@40656
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2120_0"@40657
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2121_0"@40658
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2122_0"@40659
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2123_0"@40660
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2124_0"@40661
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2125_0"@40662
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_scr_kingface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2127_0"@40663
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2128_0"@40664
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2130_0"@40665
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2131_0"@40666
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 255
pop.v.i self.con

:[1110]
push.v self.con
pushi.e 255
cmp.i.v EQ
bf [1112]

:[1111]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1113]

:[1112]
push.e 0

:[1113]
bf [1127]

:[1114]
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume_ch1(argc=3)
popz.v
push.v self.king
pushi.e -9
pushenv [1116]

:[1115]
pushi.e -12
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.friction

:[1116]
popenv [1115]
push.v self.l
pushi.e -9
pushenv [1118]

:[1117]
pushi.e -12
pop.v.i self.hspeed

:[1118]
popenv [1117]
pushi.e 0
pop.v.i self.i

:[1119]
push.v self.i
push.v self.xmake
cmp.v.v LT
bf [1126]

:[1120]
pushi.e 0
pop.v.i self.j

:[1121]
push.v self.j
push.v self.ymake
cmp.v.v LT
bf [1125]

:[1122]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.cwp
push.v self.j
conv.v.i
pushaf.e
pushi.e -9
pushenv [1124]

:[1123]
pushi.e -12
pop.v.i self.hspeed

:[1124]
popenv [1123]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [1121]

:[1125]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1119]

:[1126]
pushi.e 256
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 20
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
pushi.e 33
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2155_0"@40667
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

:[1127]
push.v self.con
pushi.e 257
cmp.i.v EQ
bf [1129]

:[1128]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1130]

:[1129]
push.e 0

:[1130]
bf [1132]

:[1131]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 350
pop.v.i self.con

:[1132]
push.v self.con
pushi.e 265
cmp.i.v GTE
bf [1134]

:[1133]
push.v self.con
pushi.e 320
cmp.i.v LT
b [1135]

:[1134]
push.e 0

:[1135]
bf [1286]

:[1136]
push.v self.con
pushi.e 268
cmp.i.v EQ
bf [1138]

:[1137]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1139]

:[1138]
push.e 0

:[1139]
bf [1143]

:[1140]
push.v self.s
pushi.e -9
pushenv [1142]

:[1141]
pushi.e 4156
pop.v.i self.sprite_index

:[1142]
popenv [1141]
pushi.e 269
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1143]
push.v self.con
pushi.e 270
cmp.i.v EQ
bf [1145]

:[1144]
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2182_0"@40668
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
pushi.e 275
pop.v.i self.con

:[1145]
push.v self.con
pushi.e 275
cmp.i.v EQ
bf [1147]

:[1146]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1148]

:[1147]
push.e 0

:[1148]
bf [1158]

:[1149]
push.v self.s
pushi.e -9
pushenv [1151]

:[1150]
pushi.e 4153
pop.v.i self.sprite_index

:[1151]
popenv [1150]
push.v self.l
pushi.e -9
pushenv [1153]

:[1152]
pushi.e 8
pop.v.i self.hspeed
pushi.e 3583
pop.v.i self.sprite_index

:[1153]
popenv [1152]
push.v self.r
pushi.e -9
pushenv [1155]

:[1154]
pushi.e 3573
pop.v.i self.sprite_index

:[1155]
popenv [1154]
push.v self.k
pushi.e -9
pushenv [1157]

:[1156]
pushi.e 4204
pop.v.i self.sprite_index

:[1157]
popenv [1156]
pushi.e 276
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1158]
push.v self.con
pushi.e 277
cmp.i.v EQ
bf [1160]

:[1159]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1161]

:[1160]
push.e 0

:[1161]
bf [1165]

:[1162]
push.v self.l
pushi.e -9
pushenv [1164]

:[1163]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[1164]
popenv [1163]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2205_0"@40669
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2206_0"@40670
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2208_0"@40671
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2210_0"@40672
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
pushi.e 280
pop.v.i self.con

:[1165]
push.v self.con
pushi.e 280
cmp.i.v EQ
bf [1167]

:[1166]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1168]

:[1167]
push.e 0

:[1168]
bf [1174]

:[1169]
push.v self.s
pushi.e -9
pushenv [1171]

:[1170]
pushi.e 3563
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed

:[1171]
popenv [1170]
push.v self.l
pushi.e -9
pushenv [1173]

:[1172]
pushi.e 3592
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed

:[1173]
popenv [1172]
pushi.e 455
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
pop.v.v self.ll
pushi.e 383
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
pop.v.v self.sl
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
push.v self.ll
call.i gml_Script_snd_volume_ch1(argc=3)
popz.v
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
push.v self.sl
call.i gml_Script_snd_volume_ch1(argc=3)
popz.v
pushi.e 281
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 70
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1174]
push.v self.con
pushi.e 282
cmp.i.v EQ
bf [1180]

:[1175]
push.v self.s
pushi.e -9
pushenv [1177]

:[1176]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v
pushi.e 3565
pop.v.i self.sprite_index

:[1177]
popenv [1176]
push.v self.l
pushi.e -9
pushenv [1179]

:[1178]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v
pushi.e 3587
pop.v.i self.sprite_index

:[1179]
popenv [1178]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2235_0"@40673
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
push.s "obj_kingcutscene_slash_Step_0_gml_2237_0"@40674
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
pushi.e 283
pop.v.i self.con

:[1180]
push.v self.con
pushi.e 283
cmp.i.v EQ
bf [1182]

:[1181]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1183]

:[1182]
push.e 0

:[1183]
bf [1193]

:[1184]
push.v self.l
pushi.e -9
pushenv [1186]

:[1185]
pushi.e -8
pop.v.i self.hspeed

:[1186]
popenv [1185]
push.v self.k
pushi.e -9
pushenv [1188]

:[1187]
pushi.e 6
pop.v.i self.hspeed
pushi.e 4202
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[1188]
popenv [1187]
push.v self.s
pushi.e -9
pushenv [1190]

:[1189]
pushi.e 6
pop.v.i self.hspeed
pushi.e 4155
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[1190]
popenv [1189]
push.v self.r
pushi.e -9
pushenv [1192]

:[1191]
push.d 5.5
pop.v.d self.hspeed
pushi.e 3575
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[1192]
popenv [1191]
pushi.e 160
conv.i.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
pushi.e 284
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 160
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1193]
push.v self.con
pushi.e 285
cmp.i.v EQ
bf [1201]

:[1194]
push.v self.r
pushi.e -9
pushenv [1196]

:[1195]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[1196]
popenv [1195]
push.v self.s
pushi.e -9
pushenv [1198]

:[1197]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v
pushi.e 4154
pop.v.i self.sprite_index

:[1198]
popenv [1197]
push.v self.k
pushi.e -9
pushenv [1200]

:[1199]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v
pushi.e 4204
pop.v.i self.sprite_index

:[1200]
popenv [1199]
pushi.e 2
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2262_0"@40675
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2263_0"@40676
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
pushi.e 286
pop.v.i self.con

:[1201]
push.v self.con
pushi.e 286
cmp.i.v EQ
bf [1203]

:[1202]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1204]

:[1203]
push.e 0

:[1204]
bf [1208]

:[1205]
push.v self.r
pushi.e -9
pushenv [1207]

:[1206]
pushi.e 4143
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed

:[1207]
popenv [1206]
pushi.e 0
pop.v.i global.fc
push.s "obj_kingcutscene_slash_Step_0_gml_2272_0"@40677
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2273_0"@40678
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
pushi.e 287
pop.v.i self.con
pushi.e 0
pop.v.i self.rtimer

:[1208]
push.v self.con
pushi.e 287
cmp.i.v EQ
bf [1210]

:[1209]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1211]

:[1210]
push.e 0

:[1211]
bf [1215]

:[1212]
push.v self.r
pushi.e -9
pushenv [1214]

:[1213]
pushi.e 4144
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[1214]
popenv [1213]
pushi.e 288
pop.v.i self.con

:[1215]
push.v self.con
pushi.e 288
cmp.i.v EQ
bf [1220]

:[1216]
push.v self.rtimer
push.d 0.1
add.d.v
pop.v.v self.rtimer
push.v self.r
pushi.e -9
pushenv [1218]

:[1217]
push.v self.image_index
push.d 0.1
add.d.v
pop.v.v self.image_index

:[1218]
popenv [1217]
push.v self.rtimer
pushi.e 2
cmp.i.v GTE
bf [1220]

:[1219]
pushi.e 289
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1220]
push.v self.con
pushi.e 290
cmp.i.v EQ
bf [1222]

:[1221]
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2294_0"@40679
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2295_0"@40680
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2297_0"@40681
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2298_0"@40682
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2299_0"@40683
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2300_0"@40684
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
pushi.e 291
pop.v.i self.con
pushi.e 0
pop.v.i self.hatsounded

:[1222]
push.v self.con
pushi.e 291
cmp.i.v EQ
bf [1224]

:[1223]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1225]

:[1224]
push.e 0

:[1225]
bf [1234]

:[1226]
push.v self.hatsounded
pushi.e 0
cmp.i.v EQ
bf [1228]

:[1227]
pushi.e 369
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i self.hatsounded

:[1228]
push.v self.r
pushi.e -9
pushenv [1230]

:[1229]
push.v self.image_index
push.d 0.1
add.d.v
pop.v.v self.image_index

:[1230]
popenv [1229]
push.v self.rtimer
push.d 0.1
add.d.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 6
cmp.i.v GTE
bf [1234]

:[1231]
pushi.e 292
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.v self.s
pushi.e -9
pushenv [1233]

:[1232]
pushi.e 3559
pop.v.i self.sprite_index
call.i gml_Script_scr_shakeobj_ch1(argc=0)
popz.v

:[1233]
popenv [1232]

:[1234]
push.v self.con
pushi.e 293
cmp.i.v EQ
bf [1236]

:[1235]
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 30
pop.v.v [array]self.flag
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2320_0"@40686
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
pushi.e 294
pop.v.i self.con

:[1236]
push.v self.con
pushi.e 294
cmp.i.v EQ
bf [1238]

:[1237]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1239]

:[1238]
push.e 0

:[1239]
bf [1244]

:[1240]
push.v self.r
pushi.e -9
pushenv [1242]

:[1241]
push.v self.image_index
push.d 0.1
add.d.v
pop.v.v self.image_index

:[1242]
popenv [1241]
push.v self.rtimer
push.d 0.1
add.d.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 11
cmp.i.v GTE
bf [1244]

:[1243]
pushi.e 295
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1244]
push.v self.con
pushi.e 296
cmp.i.v EQ
bf [1246]

:[1245]
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2335_0"@40687
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2336_0"@40688
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
pushi.e 297
pop.v.i self.con

:[1246]
push.v self.con
pushi.e 297
cmp.i.v EQ
bf [1248]

:[1247]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1249]

:[1248]
push.e 0

:[1249]
bf [1251]

:[1250]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_2347_0"@40689
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2348_0"@40690
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
pushi.e 298
pop.v.i self.con

:[1251]
push.v self.con
pushi.e 298
cmp.i.v EQ
bf [1253]

:[1252]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1254]

:[1253]
push.e 0

:[1254]
bf [1264]

:[1255]
push.v self.k
pushi.e -9
pushenv [1257]

:[1256]
pushi.e 4202
pop.v.i self.sprite_index

:[1257]
popenv [1256]
push.v self.s
pushi.e -9
pushenv [1259]

:[1258]
pushi.e 4155
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index
pushi.e 6
pop.v.i self.hspeed

:[1259]
popenv [1258]
pushglb.v global.plot
pushi.e 240
cmp.i.v GTE
bf [1263]

:[1260]
push.v self.s
pushi.e -9
pushenv [1262]

:[1261]
pushi.e 0
pop.v.i self.hspeed

:[1262]
popenv [1261]

:[1263]
pushi.e 299
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1264]
push.v self.con
pushi.e 300
cmp.i.v EQ
bf [1268]

:[1265]
push.v self.s
pushi.e -9
pushenv [1267]

:[1266]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[1267]
popenv [1266]
pushi.e 301
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1268]
push.v self.con
pushi.e 302
cmp.i.v EQ
bf [1270]

:[1269]
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2372_0"@40691
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
pushi.e 303
pop.v.i self.con

:[1270]
push.v self.con
pushi.e 303
cmp.i.v EQ
bf [1272]

:[1271]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1273]

:[1272]
push.e 0

:[1273]
bf [1282]

:[1274]
push.v self.s
pushi.e -9
pushenv [1276]

:[1275]
push.d 0.2
pop.v.d self.image_speed
pushi.e 4
pop.v.i self.hspeed

:[1276]
popenv [1275]
push.v self.k
pushi.e -9
pushenv [1278]

:[1277]
push.d 0.2
pop.v.d self.image_speed
pushi.e 4
pop.v.i self.hspeed

:[1278]
popenv [1277]
pushi.e 304
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 110
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1464
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.fade
push.v self.fade
pushi.e -9
pushenv [1280]

:[1279]
push.d 0.01
pop.v.d self.fadespeed

:[1280]
popenv [1279]
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [1282]

:[1281]
pushi.e 999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v

:[1282]
push.v self.con
pushi.e 305
cmp.i.v EQ
bf [1286]

:[1283]
call.i gml_Script_scr_losechar_ch1(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar_ch1(argc=1)
popz.v
pushi.e 3
pop.v.i global.interact
pushi.e 1
pop.v.i global.entrance
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [1285]

:[1284]
pushi.e 240
pop.v.i global.plot
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 248
pop.v.v [array]self.flag

:[1285]
pushi.e 1466
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
call.i room_goto_next(argc=0)
popz.v

:[1286]
push.v self.con
pushi.e 350
cmp.i.v GTE
bf [1288]

:[1287]
push.v self.con
pushi.e 700
cmp.i.v LT
b [1289]

:[1288]
push.e 0

:[1289]
bf [1422]

:[1290]
push.v self.con
pushi.e 350
cmp.i.v EQ
bf [1292]

:[1291]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1293]

:[1292]
push.e 0

:[1293]
bf [1309]

:[1294]
push.v self.part
pushi.e 0
cmp.i.v EQ
bf [1300]

:[1295]
pushi.e 200
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 4139
conv.i.v
pushi.e 180
conv.i.v
pushi.e 598
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
pushi.e 4154
conv.i.v
pushi.e 166
conv.i.v
pushi.e 700
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
push.v self.k
pushi.e -9
pushenv [1297]

:[1296]
push.i 800000
pop.v.i self.depth

:[1297]
popenv [1296]
push.v self.s
pushi.e -9
pushenv [1299]

:[1298]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[1299]
popenv [1298]

:[1300]
push.v self.k
pushi.e -9
pushenv [1302]

:[1301]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[1302]
popenv [1301]
push.v self.s
pushi.e -9
pushenv [1304]

:[1303]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[1304]
popenv [1303]
push.v self.r
pushi.e -9
pushenv [1306]

:[1305]
call.i instance_destroy(argc=0)
popz.v

:[1306]
popenv [1305]
push.v self.s
pushi.e -9
pushenv [1308]

:[1307]
pushi.e -6
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[1308]
popenv [1307]
pushi.e 351
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1309]
push.v self.con
pushi.e 352
cmp.i.v EQ
bf [1313]

:[1310]
push.v self.s
pushi.e -9
pushenv [1312]

:[1311]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[1312]
popenv [1311]
pushi.e 3
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2435_0"@40692
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
pushi.e 353
pop.v.i self.con

:[1313]
push.v self.con
pushi.e 353
cmp.i.v EQ
bf [1315]

:[1314]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1316]

:[1315]
push.e 0

:[1316]
bf [1324]

:[1317]
push.v self.k
pushi.e -9
pushenv [1319]

:[1318]
pushi.e 4202
pop.v.i self.sprite_index

:[1319]
popenv [1318]
push.v self.s
pushi.e -9
pushenv [1321]

:[1320]
pushi.e 4155
pop.v.i self.sprite_index

:[1321]
popenv [1320]
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
pushi.e 3573
conv.i.v
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 800
add.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.r
push.v self.r
pushi.e -9
pushenv [1323]

:[1322]
pushi.e -4
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[1323]
popenv [1322]
pushi.e 354
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1324]
push.v self.con
pushi.e 355
cmp.i.v EQ
bf [1328]

:[1325]
push.v self.r
pushi.e -9
pushenv [1327]

:[1326]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[1327]
popenv [1326]
pushi.e 356
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1328]
push.v self.con
pushi.e 357
cmp.i.v EQ
bf [1330]

:[1329]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2463_0"@40693
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2464_0"@40694
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2466_0"@40695
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
pushi.e 358
pop.v.i self.con

:[1330]
push.v self.con
pushi.e 358
cmp.i.v EQ
bf [1332]

:[1331]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1333]

:[1332]
push.e 0

:[1333]
bf [1337]

:[1334]
push.v self.r
pushi.e -9
pushenv [1336]

:[1335]
pushi.e 3575
pop.v.i self.sprite_index

:[1336]
popenv [1335]
pushi.e 359
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1337]
push.v self.con
pushi.e 360
cmp.i.v EQ
bf [1339]

:[1338]
pushi.e 4
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2484_0"@40696
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2485_0"@40697
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2486_0"@40698
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2487_0"@40699
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2488_0"@40700
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
pushi.e 361
pop.v.i self.con

:[1339]
push.v self.con
pushi.e 361
cmp.i.v EQ
bf [1341]

:[1340]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1342]

:[1341]
push.e 0

:[1342]
bf [1347]

:[1343]
push.v self.s
pushi.e -9
pushenv [1344]

:[1344]
popenv [1344]
push.v self.r
pushi.e -9
pushenv [1346]

:[1345]
pushi.e 3573
pop.v.i self.sprite_index

:[1346]
popenv [1345]
pushi.e 362
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1347]
push.v self.con
pushi.e 363
cmp.i.v EQ
bf [1351]

:[1348]
push.v self.s
pushi.e -9
pushenv [1350]

:[1349]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[1350]
popenv [1349]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2506_0"@40701
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2507_0"@40702
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2508_0"@40703
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
pushi.e 364
pop.v.i self.con

:[1351]
push.v self.con
pushi.e 364
cmp.i.v EQ
bf [1353]

:[1352]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1354]

:[1353]
push.e 0

:[1354]
bf [1358]

:[1355]
push.v self.s
pushi.e -9
pushenv [1357]

:[1356]
pushi.e 4156
pop.v.i self.sprite_index

:[1357]
popenv [1356]
push.s "obj_kingcutscene_slash_Step_0_gml_2516_0"@40704
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 365
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[1358]
push.v self.con
pushi.e 365
cmp.i.v EQ
bf [1360]

:[1359]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1361]

:[1360]
push.e 0

:[1361]
bf [1367]

:[1362]
push.v self.s
pushi.e -9
pushenv [1364]

:[1363]
pushi.e 4157
pop.v.i self.sprite_index

:[1364]
popenv [1363]
push.v self.r
pushi.e -9
pushenv [1366]

:[1365]
pushi.e 4145
pop.v.i self.sprite_index

:[1366]
popenv [1365]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
push.s "obj_kingcutscene_slash_Step_0_gml_2528_0"@40705
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2529_0"@40706
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2531_0"@40707
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
pushi.e 366
pop.v.i self.con

:[1367]
push.v self.con
pushi.e 366
cmp.i.v EQ
bf [1369]

:[1368]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1370]

:[1369]
push.e 0

:[1370]
bf [1374]

:[1371]
push.v self.r
pushi.e -9
pushenv [1373]

:[1372]
pushi.e 3570
pop.v.i self.sprite_index

:[1373]
popenv [1372]
pushi.e 367
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1374]
push.v self.con
pushi.e 368
cmp.i.v EQ
bf [1378]

:[1375]
push.v self.r
pushi.e -9
pushenv [1377]

:[1376]
pushi.e 3573
pop.v.i self.sprite_index

:[1377]
popenv [1376]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2549_0"@40708
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2550_0"@40709
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_kingcutscene_slash_Step_0_gml_2552_0"@40710
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2553_0"@40711
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
pushi.e 369
pop.v.i self.con

:[1378]
push.v self.con
pushi.e 369
cmp.i.v EQ
bf [1380]

:[1379]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1381]

:[1380]
push.e 0

:[1381]
bf [1391]

:[1382]
push.v self.r
pushi.e -9
pushenv [1384]

:[1383]
pushi.e -1
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed
pushi.e 3570
pop.v.i self.sprite_index

:[1384]
popenv [1383]
push.v self.s
pushi.e -9
pushenv [1386]

:[1385]
pushi.e 5
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[1386]
popenv [1385]
push.v self.k
pushi.e -9
pushenv [1388]

:[1387]
pushi.e 5
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[1388]
popenv [1387]
push.v self.r
pushi.e -9
pushenv [1390]

:[1389]
push.i 900000
pop.v.i self.depth

:[1390]
popenv [1389]
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
pushi.e 370
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1391]
push.v self.con
pushi.e 371
cmp.i.v EQ
bf [1401]

:[1392]
push.v self.r
pushi.e -9
pushenv [1394]

:[1393]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[1394]
popenv [1393]
push.v self.s
pushi.e -9
pushenv [1396]

:[1395]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[1396]
popenv [1395]
push.v self.k
pushi.e -9
pushenv [1398]

:[1397]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[1398]
popenv [1397]
push.v self.r
pushi.e -9
pushenv [1400]

:[1399]
pushi.e 3575
pop.v.i self.sprite_index

:[1400]
popenv [1399]
pushi.e 372
pop.v.i self.con
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1401]
push.v self.con
pushi.e 373
cmp.i.v EQ
bf [1407]

:[1402]
push.v self.s
pushi.e -9
pushenv [1404]

:[1403]
pushi.e 4154
pop.v.i self.sprite_index

:[1404]
popenv [1403]
push.v self.k
pushi.e -9
pushenv [1406]

:[1405]
pushi.e 4204
pop.v.i self.sprite_index

:[1406]
popenv [1405]
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2584_0"@40712
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_kingcutscene_slash_Step_0_gml_2585_0"@40713
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
pushi.e 374
pop.v.i self.con

:[1407]
push.v self.con
pushi.e 374
cmp.i.v EQ
bf [1409]

:[1408]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1410]

:[1409]
push.e 0

:[1410]
bf [1416]

:[1411]
push.v self.k
pushi.e -9
pushenv [1413]

:[1412]
pushi.e 4202
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.hspeed

:[1413]
popenv [1412]
push.v self.s
pushi.e -9
pushenv [1415]

:[1414]
pushi.e 4157
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.hspeed

:[1415]
popenv [1414]
pushi.e 999
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
pushi.e 375
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1416]
push.v self.con
pushi.e 376
cmp.i.v EQ
bf [1420]

:[1417]
pushi.e 1464
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.fade
push.v self.fade
pushi.e -9
pushenv [1419]

:[1418]
push.d 0.02
pop.v.d self.fadespeed

:[1419]
popenv [1418]
pushi.e 377
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1420]
push.v self.con
pushi.e 378
cmp.i.v EQ
bf [1422]

:[1421]
call.i gml_Script_scr_losechar_ch1(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar_ch1(argc=1)
popz.v
pushi.e 240
pop.v.i global.plot
pushi.e 1
pop.v.i global.entrance
pushi.e 3
pop.v.i global.interact
pushi.e 1466
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
call.i room_goto_next(argc=0)
popz.v

:[1422]
push.v self.con
pushi.e 700
cmp.i.v GTE
bf [end]

:[1423]
push.v self.con
pushi.e 700
cmp.i.v EQ
bf [1427]

:[1424]
pushglb.v global.plot
pushi.e 243
cmp.i.v GTE
bf [1427]

:[1425]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [1427]

:[1426]
push.v 1351.x
pushi.e 1900
cmp.i.v GTE
b [1428]

:[1427]
push.e 0

:[1428]
bf [1442]

:[1429]
pushi.e 1
pop.v.i global.interact
pushi.e 701
pop.v.i self.con
pushi.e 1493
pushenv [1431]

:[1430]
pushi.e 0
pop.v.i self.visible

:[1431]
popenv [1430]
pushi.e 1351
pushenv [1433]

:[1432]
pushi.e 0
pop.v.i self.visible

:[1433]
popenv [1432]
pushi.e 1411
pushenv [1435]

:[1434]
pushi.e 0
pop.v.i self.visible

:[1435]
popenv [1434]
pushi.e 3565
conv.i.v
push.v 1493.y
push.v 1493.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
push.v self.s
pushi.e -9
pushenv [1437]

:[1436]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[1437]
popenv [1436]
pushi.e 4204
conv.i.v
push.v 1351.y
push.v 1351.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
push.v self.k
pushi.e -9
pushenv [1439]

:[1438]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[1439]
popenv [1438]
pushi.e 3575
conv.i.v
push.v 1411.y
push.v 1411.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.r
push.v self.r
pushi.e -9
pushenv [1441]

:[1440]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[1441]
popenv [1440]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_kingcutscene_slash_Step_0_gml_2648_0"@40714
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 80
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume_ch1(argc=3)
popz.v
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[1442]
push.v self.con
pushi.e 701
cmp.i.v EQ
bf [1444]

:[1443]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [1445]

:[1444]
push.e 0

:[1445]
bf [1449]

:[1446]
push.v self.r
pushi.e -9
pushenv [1448]

:[1447]
pushi.e 3570
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.vspeed

:[1448]
popenv [1447]
pushi.e 702
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1449]
push.v self.con
pushi.e 703
cmp.i.v EQ
bf [1453]

:[1450]
push.v self.r
pushi.e -9
pushenv [1452]

:[1451]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[1452]
popenv [1451]
pushi.e 704
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[1453]
push.v self.con
pushi.e 705
cmp.i.v EQ
bf [end]

:[1454]
pushi.e 244
pop.v.i global.plot
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 286
pop.v.i self.con

:[end]