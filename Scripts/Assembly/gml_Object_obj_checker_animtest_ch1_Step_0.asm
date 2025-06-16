.localvar 2 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [132]

:[1]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[2]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 800
add.i.v
pop.v.v self.x
push.d 0.2
pop.v.d self.image_speed
pushi.e 3903
pop.v.i self.sprite_index
pushi.e 1
pop.v.i global.interact
pushi.e 3549
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -100
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
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
pop.v.v self.r
pushi.e 4202
conv.i.v
push.v 1351.y
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
pushi.e 1493
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.visible

:[4]
popenv [3]
pushi.e 1351
pushenv [6]

:[5]
pushi.e 0
pop.v.i self.visible

:[6]
popenv [5]
pushi.e 1407
pushenv [8]

:[7]
pushi.e 5
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[8]
popenv [7]
pushi.e 3583
conv.i.v
push.v 1351.y
pushi.e 500
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.l
pushi.e -50
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 28
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[9]
push.v self.con
pushi.e -49
cmp.i.v EQ
bf [13]

:[10]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1407
pushenv [12]

:[11]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[12]
popenv [11]
pushi.e -48
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[13]
push.v self.con
pushi.e -47
cmp.i.v EQ
bf [21]

:[14]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_checker_animtest_slash_Step_0_gml_42_0"@41040
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.name
pushi.e -5
pushi.e 214
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
push.s "obj_checker_animtest_slash_Step_0_gml_43_0"@41041
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.name

:[16]
pushi.e -5
pushi.e 214
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_checker_animtest_slash_Step_0_gml_44_0"@41042
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.name

:[18]
pushi.e -5
pushi.e 214
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_checker_animtest_slash_Step_0_gml_45_0"@41043
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.name

:[20]
push.i 231251
setowner.e
push.s "obj_checker_animtest_slash_Step_0_gml_47_0"@22619
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_48_0"@22621
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
push.v self.name
add.v.v
push.s "/"@4448
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_49_0"@22623
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
push.s "obj_checker_animtest_slash_Step_0_gml_51_0"@22625
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_checker_animtest_slash_Step_0_gml_53_0"@22627
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
pushi.e -46
pop.v.i self.con
pushi.e 0
pop.v.i self.warnpitch

:[21]
push.v self.con
pushi.e -46
cmp.i.v EQ
bf [23]

:[22]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [24]

:[23]
push.e 0

:[24]
bf [28]

:[25]
pushi.e 452
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
pop.v.v self.hitnoise
pushi.e 1
push.v self.warnpitch
pushi.e 16
conv.i.d
div.d.v
add.v.i
push.v self.hitnoise
call.i gml_Script_snd_pitch_ch1(argc=2)
popz.v
push.v self.l
pushi.e -9
pushenv [27]

:[26]
pushi.e 3587
pop.v.i self.sprite_index
pushi.e -10
pop.v.i self.hspeed

:[27]
popenv [26]
pushi.e -45
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[28]
push.v self.con
pushi.e -44
cmp.i.v EQ
bf [32]

:[29]
push.v self.l
pushi.e -9
pushenv [31]

:[30]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[31]
popenv [30]
pushi.e -43
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[32]
push.v self.con
pushi.e -42
cmp.i.v EQ
bf [40]

:[33]
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_checker_animtest_slash_Step_0_gml_82_0"@22631
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.warnpitch
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
pushi.e 1
pop.v.i global.fe
push.s "obj_checker_animtest_slash_Step_0_gml_87_0"@22633
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[35]
push.v self.warnpitch
pushi.e 2
cmp.i.v EQ
bf [37]

:[36]
pushi.e 3
pop.v.i global.fe
push.s "obj_checker_animtest_slash_Step_0_gml_92_0"@22635
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_checker_animtest_slash_Step_0_gml_94_0"@22637
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[37]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.v self.warnpitch
pushi.e 2
cmp.i.v LT
bf [39]

:[38]
pushi.e -46
pop.v.i self.con
push.v self.warnpitch
pushi.e 1
add.i.v
pop.v.v self.warnpitch
b [40]

:[39]
pushi.e -40
pop.v.i self.con

:[40]
push.v self.con
pushi.e -40
cmp.i.v EQ
bf [42]

:[41]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [43]

:[42]
push.e 0

:[43]
bf [49]

:[44]
pushi.e 0
pop.v.i self.ltimer
pushi.e 1407
pushenv [48]

:[45]
push.v self.sprite_index
pushi.e 3587
cmp.i.v NEQ
bf [47]

:[46]
pushi.e 5
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed
b [48]

:[47]
pushi.e 3578
pop.v.i self.sprite_index
pushi.e -2
pop.v.i self.vspeed
push.i 100000
pop.v.i self.depth

:[48]
popenv [45]
pushi.e -10
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 96
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[49]
push.v self.con
pushi.e -10
cmp.i.v EQ
bf [57]

:[50]
push.v self.ltimer
pushi.e 1
add.i.v
pop.v.v self.ltimer
push.v self.ltimer
pushi.e 20
cmp.i.v GTE
bf [54]

:[51]
push.v self.l
pushi.e -9
pushenv [53]

:[52]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[53]
popenv [52]

:[54]
push.v self.k
pushi.e -9
push.v [stacktop]self.x
pushi.e 140
cmp.i.v GTE
bf [56]

:[55]
push.v self.k
pushi.e -9
push.v [stacktop]self.x
pop.v.v 1351.x

:[56]
pushi.e 1
pop.v.i global.interact

:[57]
push.v self.con
pushi.e -9
cmp.i.v EQ
bf [65]

:[58]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i global.facing
pushi.e -8
pop.v.i self.con
pushi.e 1407
pushenv [60]

:[59]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[60]
popenv [59]
push.v self.k
pushi.e -9
push.v [stacktop]self.x
pop.v.v 1351.x
pushi.e 1
pop.v.i 1351.visible
pushi.e 1
pop.v.i 1351.cutscene
push.v self.l
pushi.e -9
pushenv [62]

:[61]
pushi.e 3583
pop.v.i self.sprite_index

:[62]
popenv [61]
push.v self.k
pushi.e -9
pushenv [64]

:[63]
call.i instance_destroy(argc=0)
popz.v

:[64]
popenv [63]
pushi.e 16
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 16
conv.i.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v

:[65]
push.v self.con
pushi.e -7
cmp.i.v EQ
bf [67]

:[66]
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_checker_animtest_slash_Step_0_gml_178_0"@22639
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_checker_animtest_slash_Step_0_gml_180_0"@22641
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
push.s "obj_checker_animtest_slash_Step_0_gml_182_0"@22643
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
push.s "obj_checker_animtest_slash_Step_0_gml_184_0"@22645
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_checker_animtest_slash_Step_0_gml_186_0"@22647
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.d -5.2
pop.v.d self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[67]
push.v self.con
push.d -5.2
cmp.d.v EQ
bf [69]

:[68]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
pushi.e 3905
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.v self.x
pushi.e 40
add.i.v
pop.v.v self.x
pushi.e -2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.hspeed
pushi.e 2
pop.v.i self.con

:[72]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [75]

:[73]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 520
add.i.v
cmp.v.v GT
bf [75]

:[74]
pushi.e 0
pop.v.i self.image_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 3903
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 480
add.i.v
pop.v.v self.x
push.d 1.1
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[75]
push.v self.con
push.d 2.1
cmp.d.v EQ
bf [80]

:[76]
pushi.e 415
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.j

:[77]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [79]

:[78]
push.i 170052
setowner.e
pushi.e 4094
conv.i.v
pushi.e 240
push.v self.j
pushi.e 40
mul.i.v
add.v.i
pushi.e 480
push.v self.j
pushi.e 40
mul.i.v
sub.v.i
pushi.e 400
add.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pushi.e -1
push.v self.j
conv.v.i
pop.v.v [array]self.tile
push.i 133653
setowner.e
pushi.e 0
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.tile
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.i 133637
setowner.e
push.i 700000
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.tile
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [77]

:[79]
pushi.e 0
pop.v.i self.ttimer
push.d 2.2
pop.v.d self.con

:[80]
push.v self.con
push.d 2.2
cmp.d.v EQ
bf [86]

:[81]
pushi.e 0
pop.v.i self.j

:[82]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [84]

:[83]
push.i 133653
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.tile
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.1
add.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [82]

:[84]
push.v self.ttimer
pushi.e 1
add.i.v
pop.v.v self.ttimer
push.v self.ttimer
pushi.e 10
cmp.i.v GTE
bf [86]

:[85]
push.d 2.3
pop.v.d self.con

:[86]
push.v self.con
push.d 2.3
cmp.d.v EQ
bf [92]

:[87]
pushi.e 0
pop.v.i self.j

:[88]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [90]

:[89]
push.i 133653
setowner.e
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self.tile
pushi.e -9
dup.i 4
push.v [stacktop]self.image_alpha
push.d 0.1
sub.d.v
pop.i.v [stacktop]self.image_alpha
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [88]

:[90]
push.v self.ttimer
pushi.e 1
add.i.v
pop.v.v self.ttimer
push.v self.ttimer
pushi.e 30
cmp.i.v GTE
bf [92]

:[91]
push.d 3.1
pop.v.d self.con

:[92]
push.v self.con
push.d 3.1
cmp.d.v EQ
bf [94]

:[93]
pushi.e 4
pop.v.i self.con

:[94]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [96]

:[95]
pushi.e 3903
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 1407
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 40
sub.i.v
push.v self.x
pushi.e 8
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.crown
pushi.e 2
push.v self.crown
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.crown
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 3910
push.v self.crown
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 4
push.v self.crown
pushi.e -9
pop.v.i [stacktop]self.vspeed
push.v self.depth
pushi.e 1
sub.i.v
push.v self.crown
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 5
pop.v.i self.con

:[96]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [101]

:[97]
push.v self.crown
pushi.e -9
push.v [stacktop]self.y
push.v self.y
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [101]

:[98]
pushi.e 3912
pop.v.i self.sprite_index
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.y
pushi.e 421
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.crown
pushi.e -9
pushenv [100]

:[99]
call.i instance_destroy(argc=0)
popz.v

:[100]
popenv [99]
pushi.e 6
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[101]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [103]

:[102]
pushi.e 416
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.d 0.25
pop.v.d self.image_speed
pushi.e 8
pop.v.i self.con

:[103]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [106]

:[104]
push.v self.image_speed
push.d 0.01
add.d.v
pop.v.v self.image_speed
push.v self.image_speed
push.d 0.4
cmp.d.v GTE
bf [106]

:[105]
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 9
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[106]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [108]

:[107]
pushi.e 0
pop.v.i self.image_index
pushi.e 3913
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed
pushi.e 11
pop.v.i self.con

:[108]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [111]

:[109]
push.v self.image_index
pushi.e 4
cmp.i.v GTE
bf [111]

:[110]
pushi.e 4
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 12
pop.v.i self.con
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[111]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [117]

:[112]
push.v self.x
pushi.e 18
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 90
sub.i.v
pop.v.v self.y
pushi.e 379
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.s
pushi.e -9
pushenv [114]

:[113]
pushi.e 3560
pop.v.i self.sprite_index

:[114]
popenv [113]
push.v self.r
pushi.e -9
pushenv [116]

:[115]
pushi.e 3866
pop.v.i self.sprite_index

:[116]
popenv [115]
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 3917
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 16
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[117]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [123]

:[118]
push.v self.r
pushi.e -9
pushenv [120]

:[119]
pushi.e 3575
pop.v.i self.sprite_index

:[120]
popenv [119]
push.v self.s
pushi.e -9
pushenv [122]

:[121]
pushi.e 3549
pop.v.i self.sprite_index

:[122]
popenv [121]
pushi.e 6
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_checker_animtest_slash_Step_0_gml_356_0"@22655
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 18
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[123]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [125]

:[124]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [126]

:[125]
push.e 0

:[126]
bf [128]

:[127]
call.i gml_Script_scr_unmarkify_caterpillar_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i global.facing
pushglb.v global.facing
call.i gml_Script_scr_caterpillar_facing_ch1(argc=1)
popz.v
pushi.e 12
pop.v.i global.encounterno
pushglb.v global.encounterno
call.i gml_Script_scr_encountersetup_ch1(argc=1)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
push.i 232336
setowner.e
push.s "checkers.ogg"@22657
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
pushi.e 3
pop.v.i global.specialbattle
pushi.e 1492
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 1628
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 4000
pop.v.i self.depth
pushi.e 20
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.monstermakey
pushi.e -5
pushi.e 0
push.v [array]self.monstermakex
call.i gml_Script_scr_move_to_point_over_time_ch1(argc=3)
popz.v
pushi.e 19
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[128]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [130]

:[129]
pushi.e 0
pop.v.i self.speed
pushi.e 21
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[130]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [132]

:[131]
pushi.e 0
pop.v.i self.visible
pushi.e 2
pop.v.i self.type
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.victimer

:[132]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [176]

:[133]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [135]

:[134]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 1407
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 24
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.crown
pushi.e 2
push.v self.crown
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.crown
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 3910
push.v self.crown
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
sub.i.v
push.v self.crown
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 3914
pop.v.i self.sprite_index
push.d 0.4
pop.v.d self.con
pushi.e 0
pop.v.i self.windsound
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[135]
push.v self.con
push.d 1.4
cmp.d.v EQ
bf [143]

:[136]
push.v self.windsound
pushi.e 0
cmp.i.v EQ
bf [138]

:[137]
pushi.e 393
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i self.windsound

:[138]
push.v self.secondtime
pushi.e 0
cmp.i.v EQ
bf [140]

:[139]
push.v self.crown
pushi.e -9
dup.i 4
push.v [stacktop]self.hspeed
push.d 0.2
add.d.v
pop.i.v [stacktop]self.hspeed
b [141]

:[140]
push.v self.crown
pushi.e -9
dup.i 4
push.v [stacktop]self.hspeed
push.d 0.4
add.d.v
pop.i.v [stacktop]self.hspeed

:[141]
push.v self.crown
pushi.e -9
push.v [stacktop]self.hspeed
pushi.e 3
cmp.i.v GTE
bf [143]

:[142]
push.d 1.5
pop.v.d self.con

:[143]
push.v self.con
push.d 1.5
cmp.d.v EQ
bf [147]

:[144]
push.v self.crown
pushi.e -9
pushenv [146]

:[145]
push.v 1583.y
push.v 1583.sprite_height
add.v.v
pop.v.v self.maxy
pushi.e -45
pop.v.i self.image_angle
push.v self.y
pushi.e 10
sub.i.v
pop.v.v self.y
push.d 0.5
pop.v.d self.gravity
pushi.e 5
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.friction

:[146]
popenv [145]
push.d 1.6
pop.v.d self.con

:[147]
push.v self.con
push.d 1.6
cmp.d.v EQ
bf [151]

:[148]
push.v self.crown
pushi.e -9
push.v [stacktop]self.y
push.v self.crown
pushi.e -9
push.v [stacktop]self.maxy
push.v self.crown
pushi.e -9
push.v [stacktop]self.sprite_height
sub.v.v
pushi.e 10
sub.i.v
cmp.v.v GTE
bf [151]

:[149]
push.v self.crown
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 10
add.i.v
pop.i.v [stacktop]self.y
pushi.e 0
push.v self.crown
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 0
push.v self.crown
pushi.e -9
pop.v.i [stacktop]self.gravity
pushi.e 0
push.v self.crown
pushi.e -9
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.crown
pushi.e -9
pop.v.i [stacktop]self.friction
pushi.e 1
push.v self.crown
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.d 0.9
pop.v.d self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [151]

:[150]
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1409
conv.i.v
push.v self.crown
pushi.e -9
push.v [stacktop]self.y
push.v self.crown
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.interactcrown
pushi.e 1
push.v self.interactcrown
pushi.e -9
pop.v.i [stacktop]self.hspeed
push.d 1.6
push.v self.interactcrown
pushi.e -9
pop.v.d [stacktop]self.image_xscale
pushi.e 1
push.v self.interactcrown
pushi.e -9
pop.v.i [stacktop]self.image_yscale

:[151]
push.v self.con
push.d 1.9
cmp.d.v EQ
bf [153]

:[152]
push.d 0.25
pop.v.d self.image_speed
pushi.e 417
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.d 2.1
pop.v.d self.con

:[153]
push.v self.con
push.d 2.1
cmp.d.v EQ
bf [159]

:[154]
push.v self.image_speed
push.d 0.01
add.d.v
pop.v.v self.image_speed
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [156]

:[155]
push.v self.image_speed
push.d 0.01
add.d.v
pop.v.v self.image_speed

:[156]
push.v self.image_speed
push.d 0.4
cmp.d.v GTE
bf [159]

:[157]
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 3
pop.v.i self.con
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 30
sub.i.v
pop.v.v self.maxy
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [159]

:[158]
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[159]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [163]

:[160]
push.v self.x
pushi.e 40
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 46
add.i.v
pop.v.v self.y
pushi.e 3911
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed
pushi.e -3
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.gravity
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [162]

:[161]
pushi.e -6
pop.v.i self.vspeed
pushi.e 2
pop.v.i self.gravity
push.d 0.5
pop.v.d self.image_speed

:[162]
pushi.e 5
pop.v.i self.con

:[163]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [169]

:[164]
push.v self.image_index
pushi.e 2
cmp.i.v GTE
bf [166]

:[165]
pushi.e 0
pop.v.i self.image_speed

:[166]
push.v self.y
push.v self.maxy
pushi.e 4
sub.i.v
cmp.v.v GTE
bf [169]

:[167]
push.v self.maxy
pop.v.v self.y
pushi.e 0
pop.v.i self.gravity
pushi.e 0
pop.v.i self.vspeed
pushi.e 6
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [169]

:[168]
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[169]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [176]

:[170]
push.v self.image_angle
pushi.e 5
sub.i.v
pop.v.v self.image_angle
pushi.e 3
pop.v.i self.hspeed
push.v self.secondtime
pushi.e 1
cmp.i.v EQ
bf [172]

:[171]
pushi.e 6
pop.v.i self.hspeed
push.v self.image_angle
pushi.e 5
sub.i.v
pop.v.v self.image_angle

:[172]
push.v self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 720
add.i.v
cmp.v.v GTE
bf [176]

:[173]
pushi.e 8
pop.v.i self.con
push.i 231474
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.monster
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.monster
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.monster
call.i gml_Script_scr_attackphase_ch1(argc=0)
popz.v
pushi.e 1563
pushenv [175]

:[174]
call.i instance_destroy(argc=0)
popz.v

:[175]
popenv [174]
call.i instance_destroy(argc=0)
popz.v

:[176]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [end]

:[177]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [180]

:[178]
push.v self.victimer
pushi.e 1
add.i.v
pop.v.v self.victimer
push.v self.victimer
pushi.e 60
cmp.i.v GTE
bf [180]

:[179]
pushi.e 1
pop.v.i self.con

:[180]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [183]

:[181]
pushglb.v global.fighting
pushi.e 0
cmp.i.v EQ
bf [183]

:[182]
pushi.e 0
pop.v.i self.victimer
pushi.e 2
pop.v.i self.con

:[183]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [186]

:[184]
push.v self.victimer
pushi.e 1
add.i.v
pop.v.v self.victimer
push.v self.victimer
pushi.e 15
cmp.i.v GTE
bf [186]

:[185]
pushi.e 30
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_checker_animtest_slash_Step_0_gml_589_0"@22662
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

:[186]
push.v self.con
pushi.e 3
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
bf [193]

:[190]
push.v self.l
pushi.e -9
pushenv [192]

:[191]
pushi.e 18
pop.v.i self.hspeed

:[192]
popenv [191]
pushi.e 4
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[193]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [197]

:[194]
push.v self.l
pushi.e -9
pushenv [196]

:[195]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v
pushi.e 3587
pop.v.i self.sprite_index

:[196]
popenv [195]
pushi.e 6
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[197]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [199]

:[198]
pushi.e 32
pop.v.i global.typer
pushi.e 5
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_checker_animtest_slash_Step_0_gml_624_0"@22664
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_625_0"@22666
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
push.s "obj_checker_animtest_slash_Step_0_gml_627_0"@22668
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
push.d 7.2
pop.v.d self.con

:[199]
push.v self.con
push.d 7.1
cmp.d.v EQ
bf [201]

:[200]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [202]

:[201]
push.e 0

:[202]
bf [206]

:[203]
pushi.e 383
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.s
pushi.e -9
pushenv [205]

:[204]
push.d 0.2
pop.v.d self.image_speed

:[205]
popenv [204]
push.d 6.2
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[206]
push.v self.con
push.d 7.2
cmp.d.v EQ
bf [208]

:[207]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [209]

:[208]
push.e 0

:[209]
bf [217]

:[210]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [212]

:[211]
pushi.e 0
pop.v.i self.visible

:[212]
popenv [211]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pushenv [214]

:[213]
pushi.e 0
pop.v.i self.visible

:[214]
popenv [213]
pushi.e 1351
pushenv [216]

:[215]
pushi.e 0
pop.v.i self.visible

:[216]
popenv [215]
pushi.e 3573
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.r
pushi.e 3549
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
pushi.e 4204
conv.i.v
push.v 1351.y
push.v 1351.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_checker_animtest_slash_Step_0_gml_657_0"@22670
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_658_0"@22672
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_659_0"@22674
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_660_0"@22676
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_661_0"@22678
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_662_0"@22680
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_checker_animtest_slash_Step_0_gml_664_0"@22682
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_665_0"@22684
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_666_0"@22686
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 50
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[217]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [219]

:[218]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [220]

:[219]
push.e 0

:[220]
bf [224]

:[221]
push.v self.r
pushi.e -9
pushenv [223]

:[222]
pushi.e 3570
pop.v.i self.sprite_index

:[223]
popenv [222]
pushi.e 51
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[224]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [228]

:[225]
push.v self.r
pushi.e -9
pushenv [227]

:[226]
pushi.e 3573
pop.v.i self.sprite_index

:[227]
popenv [226]
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_checker_animtest_slash_Step_0_gml_685_0"@22688
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_checker_animtest_slash_Step_0_gml_687_0"@22690
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
push.s "obj_checker_animtest_slash_Step_0_gml_689_0"@22692
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
push.s "obj_checker_animtest_slash_Step_0_gml_691_0"@22694
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 53
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[228]
push.v self.con
pushi.e 53
cmp.i.v EQ
bf [230]

:[229]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [231]

:[230]
push.e 0

:[231]
bf [235]

:[232]
push.v self.s
pushi.e -9
pushenv [234]

:[233]
pushi.e 3553
pop.v.i self.sprite_index

:[234]
popenv [233]
pushi.e 54
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[235]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [239]

:[236]
push.v self.s
pushi.e -9
pushenv [238]

:[237]
pushi.e 3549
pop.v.i self.sprite_index

:[238]
popenv [237]
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_checker_animtest_slash_Step_0_gml_709_0"@22696
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "C"@9479
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_checker_animtest_slash_Step_0_gml_711_0"@22698
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_712_0"@22699
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_713_0"@22701
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_714_0"@22703
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_715_0"@22705
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 56
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[239]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [241]

:[240]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [242]

:[241]
push.e 0

:[242]
bf [246]

:[243]
push.v self.s
pushi.e -9
pushenv [245]

:[244]
pushi.e 3548
pop.v.i self.sprite_index

:[245]
popenv [244]
pushi.e 57
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[246]
push.v self.con
pushi.e 58
cmp.i.v EQ
bf [248]

:[247]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_checker_animtest_slash_Step_0_gml_732_0"@22707
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_733_0"@22709
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_734_0"@22711
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
pushi.e 59
pop.v.i self.con

:[248]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [250]

:[249]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [251]

:[250]
push.e 0

:[251]
bf [255]

:[252]
push.v self.s
pushi.e -9
pushenv [254]

:[253]
pushi.e 2
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed
pushi.e 3555
pop.v.i self.sprite_index

:[254]
popenv [253]
pushi.e 60
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[255]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [263]

:[256]
push.v self.k
pushi.e -9
pushenv [258]

:[257]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[258]
popenv [257]
push.v self.r
pushi.e -9
pushenv [260]

:[259]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[260]
popenv [259]
push.v self.s
pushi.e -9
pushenv [262]

:[261]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[262]
popenv [261]
pushi.e 62
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[263]
push.v self.con
pushi.e 63
cmp.i.v EQ
bf [265]

:[264]
push.i 231251
setowner.e
push.s "obj_checker_animtest_slash_Step_0_gml_762_0"@22712
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_763_0"@22714
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 64
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[265]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [267]

:[266]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [268]

:[267]
push.e 0

:[268]
bf [272]

:[269]
push.v self.s
pushi.e -9
pushenv [271]

:[270]
pushi.e 12
pop.v.i self.hspeed
pushi.e 3549
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed

:[271]
popenv [270]
pushi.e 65
pop.v.i self.con

:[272]
push.v self.con
pushi.e 65
cmp.i.v EQ
bf [283]

:[273]
push.v self.s
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 460
add.i.v
cmp.v.v GTE
bf [283]

:[274]
push.v self.s
pushi.e -9
pushenv [276]

:[275]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[276]
popenv [275]
push.v self.s
pushi.e -9
pushenv [278]

:[277]
pushi.e 3546
pop.v.i self.sprite_index

:[278]
popenv [277]
push.v self.k
pushi.e -9
pushenv [280]

:[279]
pushi.e 4202
pop.v.i self.sprite_index

:[280]
popenv [279]
push.v self.r
pushi.e -9
pushenv [282]

:[281]
pushi.e 3575
pop.v.i self.sprite_index

:[282]
popenv [281]
pushi.e 66
pop.v.i self.con

:[283]
push.v self.con
pushi.e 66
cmp.i.v EQ
bf [285]

:[284]
pushi.e 67
pop.v.i self.con
pushi.e 1
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_checker_animtest_slash_Step_0_gml_799_0"@22716
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

:[285]
push.v self.con
pushi.e 67
cmp.i.v EQ
bf [287]

:[286]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [288]

:[287]
push.e 0

:[288]
bf [292]

:[289]
push.v self.r
pushi.e -9
pushenv [291]

:[290]
pushi.e 3866
pop.v.i self.sprite_index

:[291]
popenv [290]
pushi.e 68
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[292]
push.v self.con
pushi.e 69
cmp.i.v EQ
bf [296]

:[293]
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
push.v self.r
pushi.e -9
pushenv [295]

:[294]
pushi.e 3575
pop.v.i self.sprite_index

:[295]
popenv [294]
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_checker_animtest_slash_Step_0_gml_820_0"@22718
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_821_0"@22720
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
push.s "obj_checker_animtest_slash_Step_0_gml_823_0"@22722
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_checker_animtest_slash_Step_0_gml_825_0"@22724
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_checker_animtest_slash_Step_0_gml_827_0"@22726
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_checker_animtest_slash_Step_0_gml_829_0"@22728
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_checker_animtest_slash_Step_0_gml_831_0"@22730
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_checker_animtest_slash_Step_0_gml_833_0"@22732
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 14
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_checker_animtest_slash_Step_0_gml_835_0"@22734
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 16
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_checker_animtest_slash_Step_0_gml_837_0"@22736
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 17
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_838_0"@22738
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 18
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 19
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_checker_animtest_slash_Step_0_gml_840_0"@22740
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 20
pop.v.v [array]self.msg
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 70
pop.v.i self.con

:[296]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [298]

:[297]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [299]

:[298]
push.e 0

:[299]
bf [305]

:[300]
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume_ch1(argc=3)
popz.v
pushi.e 455
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.l
pushi.e -9
pushenv [302]

:[301]
pushi.e 3590
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 12
pop.v.i self.hspeed

:[302]
popenv [301]
push.v self.s
pushi.e -9
pushenv [304]

:[303]
pushi.e 3549
pop.v.i self.sprite_index
push.d 0.5
pop.v.d self.image_speed
pushi.e 12
pop.v.i self.hspeed

:[304]
popenv [303]
pushi.e 71
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 70
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[305]
push.v self.con
pushi.e 72
cmp.i.v EQ
bf [307]

:[306]
pushi.e 22
pop.v.i self.con

:[307]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [309]

:[308]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [310]

:[309]
push.e 0

:[310]
bf [314]

:[311]
push.v self.r
pushi.e -9
pushenv [313]

:[312]
pushi.e 6
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[313]
popenv [312]
pushi.e 23
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[314]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [318]

:[315]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 2
pop.v.i global.facing
push.v self.r
pushi.e -9
pushenv [317]

:[316]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[317]
popenv [316]
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_checker_animtest_slash_Step_0_gml_893_0"@22742
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_894_0"@22744
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_895_0"@22746
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_896_0"@22747
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_897_0"@22749
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_898_0"@22751
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_checker_animtest_slash_Step_0_gml_899_0"@22753
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 28
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[318]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [320]

:[319]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [321]

:[320]
push.e 0

:[321]
bf [327]

:[322]
push.v self.k
pushi.e -9
pushenv [324]

:[323]
pushi.e 8
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[324]
popenv [323]
push.v self.r
pushi.e -9
pushenv [326]

:[325]
pushi.e 8
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 3575
pop.v.i self.sprite_index

:[326]
popenv [325]
pushi.e 29
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[327]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [329]

:[328]
pushi.e 1464
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 31
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[329]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [end]

:[330]
pushglb.v global.plot
pushi.e 60
cmp.i.v LT
bf [333]

:[331]
pushi.e 60
pop.v.i global.plot
pushi.e -5
pushi.e 215
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [333]

:[332]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 251
pop.v.v [array]self.flag

:[333]
call.i gml_Script_scr_losechar_ch1(argc=0)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar_ch1(argc=1)
popz.v
pushi.e 1466
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 3
pop.v.i global.interact
pushi.e 1
pop.v.i global.entrance
call.i room_goto_next(argc=0)
popz.v

:[end]