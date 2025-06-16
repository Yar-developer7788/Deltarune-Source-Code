.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [8]

:[1]
push.v 1351.x
push.v self.x
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
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i global.facing
pushi.e 1493
pushenv [7]

:[6]
push.v self.rsprite
pop.v.v self.sprite_index
pushi.e 1
pop.v.i self.fun

:[7]
popenv [6]

:[8]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 4282
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.darkfade
pushi.e 700
push.v self.darkfade
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 400
push.v self.darkfade
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.darkfade
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.i 800000
push.v self.darkfade
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.darkfade
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
pop.v.i self.fade
pushi.e 3
pop.v.i self.con

:[10]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [15]

:[11]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1493
pushenv [13]

:[12]
pushi.e 0
pop.v.i self.image_index

:[13]
popenv [12]
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
push.v self.fade
push.d 0.02
add.d.v
pop.v.v self.fade
push.v self.fade
push.v self.darkfade
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.fade
push.d 0.6
cmp.d.v GTE
bf [15]

:[14]
pushi.e 4
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 11
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[15]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [17]

:[16]
push.i 231251
setowner.e
push.s "obj_rurus_checker_event_slash_Step_0_gml_45_0"@38379
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 42
pop.v.i global.typer
pushi.e 1331
conv.i.v
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 120
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 6
pop.v.i self.con

:[17]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 1374
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 160
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 420
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.appear
pushi.e 361
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 14
pop.v.i self.con
pushi.e 3687
conv.i.v
push.v self.appear
pushi.e -9
push.v [stacktop]self.y
push.v self.appear
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.rurus
pushi.e 0
push.v self.rurus
pushi.e -9
pop.v.i [stacktop]self.visible
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[22]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [28]

:[23]
push.v self.rurus
pushi.e -9
pushenv [25]

:[24]
pushi.e 1
pop.v.i self.visible

:[25]
popenv [24]
push.v self.appear
pushi.e -9
pushenv [27]

:[26]
call.i instance_destroy(argc=0)
popz.v

:[27]
popenv [26]
pushi.e 16
pop.v.i self.con
pushi.e 21
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[28]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [33]

:[29]
push.v self.darkfade
pushi.e -9
pushenv [32]

:[30]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [32]

:[31]
pushi.e 0
pop.v.i self.image_alpha

:[32]
popenv [30]

:[33]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [35]

:[34]
push.i 231459
setowner.e
push.s "ruruskaado.ogg"@20924
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 18
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_rurus_checker_event_slash_Step_0_gml_88_0"@38382
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_rurus_checker_event_slash_Step_0_gml_89_0"@38383
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_rurus_checker_event_slash_Step_0_gml_90_0"@38384
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
pop.v.v self.d
pushi.e 1
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 18
pop.v.i self.con

:[35]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [37]

:[36]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [38]

:[37]
push.e 0

:[38]
bf [42]

:[39]
push.v self.rurus
pushi.e -9
pushenv [41]

:[40]
pushi.e 7
pop.v.i self.hspeed

:[41]
popenv [40]
pushi.e 19
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[42]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [50]

:[43]
push.v self.rurus
pushi.e -9
pushenv [45]

:[44]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[45]
popenv [44]
pushi.e 361
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1374
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 120
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 380
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.checkerappear
push.v self.checkerappear
pushi.e -9
pushenv [47]

:[46]
pushi.e 1
pop.v.i self.type

:[47]
popenv [46]
pushi.e 3917
conv.i.v
push.v self.checkerappear
pushi.e -9
push.v [stacktop]self.y
push.v self.checkerappear
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.checker
push.v self.checker
pushi.e -9
pushenv [49]

:[48]
pushi.e 0
pop.v.i self.visible

:[49]
popenv [48]
pushi.e 21
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[50]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [56]

:[51]
push.v self.checker
pushi.e -9
pushenv [53]

:[52]
pushi.e 1
pop.v.i self.visible

:[53]
popenv [52]
push.v self.checkerappear
pushi.e -9
pushenv [55]

:[54]
call.i instance_destroy(argc=0)
popz.v

:[55]
popenv [54]
push.i 231405
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.smalarm
push.i 231406
setowner.e
pushi.e 70
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.smyy
push.i 231407
setowner.e
pushi.e 170
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.smxx
push.i 231408
setowner.e
pushi.e 180
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.smdir
push.i 231409
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.smspeed
push.i 231410
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.smtype
push.i 231413
setowner.e
pushi.e 3372
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.smsprite
push.i 231414
setowner.e
push.i 16777215
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.smcolor
push.i 231415
setowner.e
push.s "obj_rurus_checker_event_slash_Step_0_gml_133_0"@38386
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.smstring
push.i 231405
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smalarm
push.i 231406
setowner.e
pushi.e 70
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smyy
push.i 231407
setowner.e
pushi.e 170
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smxx
push.i 231408
setowner.e
pushi.e 180
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smdir
push.i 231409
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smspeed
push.i 231410
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smtype
push.i 231413
setowner.e
pushi.e 3373
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smsprite
push.i 231414
setowner.e
push.i 16777215
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.smcolor
push.i 231415
setowner.e
push.s "obj_rurus_checker_event_slash_Step_0_gml_143_0"@38387
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.smstring
push.i 231251
setowner.e
push.s "obj_rurus_checker_event_slash_Step_0_gml_145_0"@38388
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
push.s "obj_rurus_checker_event_slash_Step_0_gml_147_0"@38389
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_rurus_checker_event_slash_Step_0_gml_148_0"@38390
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "%%"@2565
conv.s.v
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
pushi.e 23
pop.v.i self.con

:[56]
push.v self.con
pushi.e 23
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
bf [61]

:[60]
pushi.e 6
pop.v.i global.typer
pushi.e 18
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_rurus_checker_event_slash_Step_0_gml_161_0"@38391
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_rurus_checker_event_slash_Step_0_gml_162_0"@38392
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
pushi.e 24
pop.v.i self.con

:[61]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [63]

:[62]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [64]

:[63]
push.e 0

:[64]
bf [68]

:[65]
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
push.v self.checker
pushi.e -9
pushenv [67]

:[66]
pushi.e 4
pop.v.i self.image_index

:[67]
popenv [66]
pushi.e 25
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[68]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [70]

:[69]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_rurus_checker_event_slash_Step_0_gml_181_0"@38393
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_rurus_checker_event_slash_Step_0_gml_182_0"@38394
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "%%"@2565
conv.s.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 27
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[70]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [72]

:[71]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
pushi.e 18
pop.v.i global.fc
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.s "obj_rurus_checker_event_slash_Step_0_gml_194_0"@38395
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_rurus_checker_event_slash_Step_0_gml_195_0"@38396
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_rurus_checker_event_slash_Step_0_gml_196_0"@38397
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
pushi.e 28
pop.v.i self.con

:[75]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [77]

:[76]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [78]

:[77]
push.e 0

:[78]
bf [84]

:[79]
push.v self.rurus
pushi.e -9
pushenv [81]

:[80]
pushi.e 10
pop.v.i self.hspeed

:[81]
popenv [80]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 27
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
pushi.e 4000
pop.v.i self.depth
push.v self.checker
pushi.e -9
pushenv [83]

:[82]
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

:[83]
popenv [82]
pushi.e 29
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[84]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [88]

:[85]
push.v self.checker
pushi.e -9
pushenv [87]

:[86]
pushi.e 0
pop.v.i self.speed

:[87]
popenv [86]
pushi.e 31
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[88]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [92]

:[89]
push.v self.checker
pushi.e -9
pushenv [91]

:[90]
call.i instance_destroy(argc=0)
popz.v

:[91]
popenv [90]
pushi.e 35
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.victimer

:[92]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [97]

:[93]
pushi.e 1517
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [97]

:[94]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 660
add.i.v
push.v self.rurus
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.rurus
pushi.e -9
pushenv [96]

:[95]
pushi.e -12
pop.v.i self.hspeed

:[96]
popenv [95]
pushi.e 37
pop.v.i self.con

:[97]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [102]

:[98]
push.v self.rurus
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 420
add.i.v
cmp.v.v LTE
bf [102]

:[99]
push.v self.rurus
pushi.e -9
pushenv [101]

:[100]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[101]
popenv [100]
pushi.e 38
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[102]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [104]

:[103]
push.i 231251
setowner.e
push.s "obj_rurus_checker_event_slash_Step_0_gml_260_0"@38398
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_rurus_checker_event_slash_Step_0_gml_261_0"@38399
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 18
pop.v.i global.fc
pushi.e 6
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.d 39.1
pop.v.d self.con

:[104]
push.v self.con
push.d 39.1
cmp.d.v EQ
bf [106]

:[105]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [107]

:[106]
push.e 0

:[107]
bf [109]

:[108]
push.i 231459
setowner.e
push.s "ruruskaado.ogg"@20924
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.9
conv.d.v
push.d 0.7
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 5
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_rurus_checker_event_slash_Step_0_gml_274_0"@38400
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_rurus_checker_event_slash_Step_0_gml_275_0"@38401
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_rurus_checker_event_slash_Step_0_gml_276_0"@38402
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_rurus_checker_event_slash_Step_0_gml_277_0"@38403
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_rurus_checker_event_slash_Step_0_gml_278_0"@38404
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_rurus_checker_event_slash_Step_0_gml_279_0"@38405
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
pushi.e 40
pop.v.i self.con

:[109]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [111]

:[110]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 41
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[114]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [116]

:[115]
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_rurus_checker_event_slash_Step_0_gml_296_0"@38406
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
pushi.e 43
pop.v.i self.con

:[116]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [118]

:[117]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [119]

:[118]
push.e 0

:[119]
bf [123]

:[120]
pushi.e 18
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
push.s "obj_rurus_checker_event_slash_Step_0_gml_306_0"@38407
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
pushi.e 44
pop.v.i self.con
push.v self.rurus
pushi.e -9
pushenv [122]

:[121]
pushi.e 24
pop.v.i self.hspeed

:[122]
popenv [121]

:[123]
push.v self.con
pushi.e 44
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
bf [end]

:[127]
pushi.e 1493
pushenv [129]

:[128]
pushi.e 0
pop.v.i self.fun

:[129]
popenv [128]
pushi.e 0
pop.v.i global.facing
pushi.e 175
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 45
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]