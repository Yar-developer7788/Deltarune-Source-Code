.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[1]
pushi.e 1660
conv.i.v
pushi.e 360
conv.i.v
pushi.e 640
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.doorblock
push.v self.doorblock
pushi.e -9
pushenv [3]

:[2]
pushi.e 2
pop.v.i self.image_xscale

:[3]
popenv [2]
pushi.e 377
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
pushi.e 440
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 1351
pushenv [5]

:[4]
pushi.e 1
pop.v.i self.cutscene
pushi.e 0
pop.v.i self.visible

:[5]
popenv [4]
pushi.e 3818
conv.i.v
push.v 1351.y
push.v 1351.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
pushi.e 4142
conv.i.v
pushi.e 160
conv.i.v
pushi.e 520
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.r
push.v self.r
pushi.e -9
pushenv [7]

:[6]
pushi.e 2
pop.v.i self.image_index

:[7]
popenv [6]
pushi.e 3598
conv.i.v
pushi.e 280
conv.i.v
pushi.e 640
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.irondoor
push.v self.irondoor
pushi.e -9
pushenv [9]

:[8]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[9]
popenv [8]
pushi.e 3869
conv.i.v
pushi.e 360
conv.i.v
pushi.e 640
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.diamond
push.v self.diamond
pushi.e -9
pushenv [11]

:[10]
pushi.e 100
pop.v.i self.depth

:[11]
popenv [10]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[12]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i global.interact

:[14]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [18]

:[15]
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.v self.diamond
pushi.e -9
pushenv [17]

:[16]
push.d 0.25
pop.v.d self.image_speed

:[17]
popenv [16]
push.i 231251
setowner.e
push.s "obj_prisonevent_slash_Step_0_gml_29_0"@38573
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_30_0"@38574
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_31_0"@38575
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 4
pop.v.i self.con
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
pop.v.i [stacktop]self.side

:[18]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [20]

:[19]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [21]

:[20]
push.e 0

:[21]
bf [25]

:[22]
push.v self.diamond
pushi.e -9
pushenv [24]

:[23]
push.d 0.5
pop.v.d self.image_speed
pushi.e 5
pop.v.i self.vspeed

:[24]
popenv [23]
pushi.e 5
pop.v.i self.con
push.v self.k
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.kx
push.v self.k
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.ky
push.v self.r
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.rx
push.v self.r
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.ry
push.d 0.5
pop.v.d self.moveamt
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[25]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [32]

:[26]
push.v self.moveamt
push.d 0.1
add.d.v
pop.v.v self.moveamt
push.v self.kx
push.v self.moveamt
call.i random(argc=1)
add.v.v
push.v self.k
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.ky
push.v self.moveamt
call.i random(argc=1)
add.v.v
push.v self.k
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.rx
push.v self.moveamt
call.i random(argc=1)
add.v.v
push.v self.r
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.ry
push.v self.moveamt
call.i random(argc=1)
add.v.v
push.v self.r
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.moveamt
pushi.e 3
cmp.i.v GTE
bf [32]

:[27]
push.v self.rx
push.v self.r
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.ry
push.v self.r
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.kx
push.v self.k
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.ky
push.v self.k
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.k
pushi.e -9
pushenv [29]

:[28]
pushi.e 4200
pop.v.i self.sprite_index

:[29]
popenv [28]
push.v self.r
pushi.e -9
pushenv [31]

:[30]
pushi.e 3570
pop.v.i self.sprite_index

:[31]
popenv [30]
pushi.e 382
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 7
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[32]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [38]

:[33]
push.v self.r
pushi.e -9
pushenv [35]

:[34]
pushi.e 3575
pop.v.i self.sprite_index

:[35]
popenv [34]
push.v self.k
pushi.e -9
pushenv [37]

:[36]
pushi.e 4204
pop.v.i self.sprite_index

:[37]
popenv [36]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_prisonevent_slash_Step_0_gml_82_0"@38577
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_83_0"@38578
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_84_0"@38579
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_85_0"@38580
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_86_0"@38581
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.d 8.1
pop.v.d self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[38]
push.v self.con
push.d 8.1
cmp.d.v EQ
bf [40]

:[39]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [41]

:[40]
push.e 0

:[41]
bf [45]

:[42]
push.v self.r
pushi.e -9
pushenv [44]

:[43]
pushi.e 3570
pop.v.i self.sprite_index

:[44]
popenv [43]
pushi.e 1490
conv.i.v
push.v self.r
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.r
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.exc
push.d 7.2
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[45]
push.v self.con
push.d 8.2
cmp.d.v EQ
bf [51]

:[46]
push.v self.exc
pushi.e -9
pushenv [48]

:[47]
call.i instance_destroy(argc=0)
popz.v

:[48]
popenv [47]
push.v self.r
pushi.e -9
pushenv [50]

:[49]
pushi.e 3575
pop.v.i self.sprite_index

:[50]
popenv [49]
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_prisonevent_slash_Step_0_gml_104_0"@38582
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_105_0"@38583
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_106_0"@38584
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_107_0"@38585
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
pushi.e 9
pop.v.i self.con

:[51]
push.v self.con
pushi.e 9
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
bf [64]

:[55]
pushi.e 1411
conv.i.v
push.v self.r
pushi.e -9
push.v [stacktop]self.y
push.v self.r
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.rnpc
push.v self.rnpc
pushi.e -9
pushenv [57]

:[56]
push.v self.y
push.v self.sprite_height
add.v.v
pop.v.v self.y
pushi.e 3570
pop.v.i self.sprite_index
pushi.e 3570
pop.v.i self.dtsprite
pushi.e 3572
pop.v.i self.utsprite
pushi.e 3575
pop.v.i self.rtsprite
pushi.e 3573
pop.v.i self.ltsprite
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[57]
popenv [56]
push.v self.r
pushi.e -9
pushenv [59]

:[58]
call.i instance_destroy(argc=0)
popz.v

:[59]
popenv [58]
push.v self.k
pushi.e -9
pushenv [61]

:[60]
call.i instance_destroy(argc=0)
popz.v

:[61]
popenv [60]
pushi.e 0
pop.v.i global.facing
pushi.e 1351
pushenv [63]

:[62]
pushi.e 1
pop.v.i self.visible

:[63]
popenv [62]
pushi.e 0
pop.v.i global.interact
pushi.e 10
pop.v.i self.con

:[64]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [66]

:[65]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
pushglb.v global.facing
pop.v.v self.remfacing
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.fe
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
push.s "obj_prisonevent_slash_Step_0_gml_140_0"@38588
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_141_0"@38589
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_142_0"@38590
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_143_0"@38591
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_144_0"@38592
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_145_0"@38593
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_prisonevent_slash_Step_0_gml_147_0"@38594
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_148_0"@38595
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
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
pushi.e 16
pop.v.i self.con

:[69]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [71]

:[70]
push.v self.remfacing
pop.v.v global.facing
pushi.e 1
pop.v.i global.interact

:[71]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [73]

:[72]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [74]

:[73]
push.e 0

:[74]
bf [80]

:[75]
pushi.e 3866
conv.i.v
push.v self.rnpc
pushi.e -9
push.v [stacktop]self.y
push.v self.rnpc
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.r
push.v self.r
pushi.e -9
pushenv [77]

:[76]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[77]
popenv [76]
push.v self.rnpc
pushi.e -9
pushenv [79]

:[78]
call.i instance_destroy(argc=0)
popz.v

:[79]
popenv [78]
pushi.e 3
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 1490
conv.i.v
push.v self.r
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.r
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.exc
pushi.e 17
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[80]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [86]

:[81]
push.v self.exc
pushi.e -9
pushenv [83]

:[82]
call.i instance_destroy(argc=0)
popz.v

:[83]
popenv [82]
push.v self.r
pushi.e -9
pushenv [85]

:[84]
pushi.e 3573
pop.v.i self.sprite_index

:[85]
popenv [84]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_prisonevent_slash_Step_0_gml_179_0"@38596
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
push.s "obj_prisonevent_slash_Step_0_gml_181_0"@38597
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 19
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[86]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [88]

:[87]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [89]

:[88]
push.e 0

:[89]
bf [95]

:[90]
pushi.e 3598
conv.i.v
pushi.e 520
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.irondoor2
push.v self.irondoor2
pushi.e -9
pushenv [92]

:[91]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[92]
popenv [91]
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
pushi.e 3549
conv.i.v
pushi.e 300
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
push.v self.s
pushi.e -9
pushenv [94]

:[93]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[94]
popenv [93]
pushi.e 20
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[95]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [97]

:[96]
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_prisonevent_slash_Step_0_gml_207_0"@38599
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_208_0"@38600
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_prisonevent_slash_Step_0_gml_210_0"@38601
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 22
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[97]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [99]

:[98]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [100]

:[99]
push.e 0

:[100]
bf [104]

:[101]
push.v self.s
pushi.e -9
pushenv [103]

:[102]
pushi.e 3548
pop.v.i self.sprite_index

:[103]
popenv [102]
pushi.e 70
conv.i.v
pushi.e 0
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
pushi.e 23
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[104]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [108]

:[105]
push.v self.s
pushi.e -9
pushenv [107]

:[106]
pushi.e 3549
pop.v.i self.sprite_index

:[107]
popenv [106]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_prisonevent_slash_Step_0_gml_229_0"@38602
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_232_0"@38603
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_prisonevent_slash_Step_0_gml_234_0"@38604
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 25
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[108]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [110]

:[109]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [111]

:[110]
push.e 0

:[111]
bf [115]

:[112]
push.v self.s
pushi.e -9
pushenv [114]

:[113]
pushi.e 3556
pop.v.i self.sprite_index

:[114]
popenv [113]
pushi.e 26
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[115]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [119]

:[116]
push.v self.s
pushi.e -9
pushenv [118]

:[117]
pushi.e 3549
pop.v.i self.sprite_index

:[118]
popenv [117]
pushi.e 1
pop.v.i global.fc
pushi.e 5
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_prisonevent_slash_Step_0_gml_252_0"@38605
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_253_0"@38606
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_254_0"@38607
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_255_0"@38608
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
push.s "obj_prisonevent_slash_Step_0_gml_257_0"@38609
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_prisonevent_slash_Step_0_gml_259_0"@38610
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_260_0"@38611
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_261_0"@38612
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_262_0"@38613
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
push.s "6"@3595
conv.s.v
pushi.e 11
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_prisonevent_slash_Step_0_gml_264_0"@38614
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
pushi.e 200
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[119]
push.v self.con
pushi.e 200
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
push.v self.s
pushi.e -9
pushenv [125]

:[124]
pushi.e 3556
pop.v.i self.sprite_index

:[125]
popenv [124]
pushi.e 1
pop.v.i global.interact
pushi.e 290
pop.v.i global.msc
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 201
pop.v.i self.con
push.v self.tried
pushi.e 1
add.i.v
pop.v.v self.tried

:[126]
push.v self.con
pushi.e 201
cmp.i.v EQ
bf [128]

:[127]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [129]

:[128]
push.e 0

:[129]
bf [171]

:[130]
push.v 1546.won
pushi.e 0
cmp.i.v EQ
bf [168]

:[131]
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
pushi.e 200
pop.v.i self.con
pushi.e 1546
pushi.e 0
push.v [array]self.suit
pushi.e 3
cmp.i.v EQ
bf [134]

:[132]
pushi.e 1546
pushi.e 1
push.v [array]self.suit
pushi.e 4
cmp.i.v EQ
bf [134]

:[133]
pushi.e 1546
pushi.e 2
push.v [array]self.suit
pushi.e 3
cmp.i.v EQ
b [135]

:[134]
push.e 0

:[135]
bf [140]

:[136]
push.v self.wcon
pushi.e 1
cmp.i.v EQ
bf [138]

:[137]
pushi.e 2
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_299_0"@38615
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_300_0"@38616
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_301_0"@38617
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
pushi.e 2
pop.v.i self.wcon

:[138]
push.v self.wcon
pushi.e 0
cmp.i.v EQ
bf [140]

:[139]
pushi.e 2
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_309_0"@38618
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_310_0"@38619
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_311_0"@38620
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
pushi.e 1
pop.v.i self.wcon

:[140]
push.v 1546.reset
pushi.e 1
cmp.i.v EQ
bf [142]

:[141]
push.v self.pcon
pushi.e 0
cmp.i.v EQ
b [143]

:[142]
push.e 0

:[143]
bf [145]

:[144]
pushi.e 1
pop.v.i self.pcon
pushi.e 0
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_322_0"@38621
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

:[145]
push.v 1546.reset
pushi.e 2
cmp.i.v EQ
bf [147]

:[146]
push.v self.pcon
pushi.e 1
cmp.i.v EQ
b [148]

:[147]
push.e 0

:[148]
bf [150]

:[149]
pushi.e 2
pop.v.i self.pcon
pushi.e 0
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_329_0"@38622
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

:[150]
push.v 1546.reset
pushi.e 3
cmp.i.v EQ
bf [152]

:[151]
push.v self.pcon
pushi.e 2
cmp.i.v EQ
b [153]

:[152]
push.e 0

:[153]
bf [155]

:[154]
pushi.e 3
pop.v.i self.pcon
pushi.e 6
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_336_0"@38623
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

:[155]
push.v 1546.reset
pushi.e 4
cmp.i.v EQ
bf [157]

:[156]
push.v self.pcon
pushi.e 3
cmp.i.v EQ
b [158]

:[157]
push.e 0

:[158]
bf [160]

:[159]
pushi.e 4
pop.v.i self.pcon
pushi.e 9
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_343_0"@38624
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_344_0"@38625
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_345_0"@38626
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

:[160]
push.v 1546.swap
pushi.e 1
cmp.i.v EQ
bf [164]

:[161]
pushi.e 1546
pushi.e 0
push.v [array]self.suit
pushi.e 0
cmp.i.v EQ
bf [164]

:[162]
push.v self.scon
pushi.e 0
cmp.i.v EQ
bf [164]

:[163]
push.v self.pcon
pushi.e 0
cmp.i.v EQ
b [165]

:[164]
push.e 0

:[165]
bf [167]

:[166]
pushi.e 1
pop.v.i self.scon
pushi.e 0
pop.v.i global.fe
push.s "obj_prisonevent_slash_Step_0_gml_354_0"@38628
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

:[167]
b [171]

:[168]
push.v self.irondoor2
pushi.e -9
pushenv [170]

:[169]
call.i instance_destroy(argc=0)
popz.v

:[170]
popenv [169]
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
pushi.e 202
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[171]
push.v self.con
pushi.e 203
cmp.i.v EQ
bf [173]

:[172]
pushi.e 30
pop.v.i global.typer
pushi.e 2
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_prisonevent_slash_Step_0_gml_376_0"@38629
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
push.s "obj_prisonevent_slash_Step_0_gml_378_0"@38630
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_prisonevent_slash_Step_0_gml_380_0"@38631
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 204
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[173]
push.v self.con
pushi.e 204
cmp.i.v EQ
bf [175]

:[174]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [176]

:[175]
push.e 0

:[176]
bf [180]

:[177]
push.v self.s
pushi.e -9
pushenv [179]

:[178]
pushi.e 3546
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e -6
pop.v.i self.hspeed

:[179]
popenv [178]
pushi.e 205
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 16
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[180]
push.v self.con
pushi.e 206
cmp.i.v EQ
bf [184]

:[181]
push.v self.s
pushi.e -9
pushenv [183]

:[182]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v
pushi.e 3553
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.vspeed

:[183]
popenv [182]
pushi.e 207
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[184]
push.v self.con
pushi.e 208
cmp.i.v EQ
bf [186]

:[185]
pushi.e 60
conv.i.v
pushi.e -2
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
pushi.e 209
pop.v.i self.con
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[186]
push.v self.con
pushi.e 210
cmp.i.v EQ
bf [190]

:[187]
push.v self.r
pushi.e -9
pushenv [189]

:[188]
pushi.e 3570
pop.v.i self.sprite_index

:[189]
popenv [188]
pushi.e 305
pop.v.i global.msc
pushi.e 6
pop.v.i global.fe
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 228
pop.v.i self.con

:[190]
push.v self.con
pushi.e 228
cmp.i.v EQ
bf [192]

:[191]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [193]

:[192]
push.e 0

:[193]
bf [197]

:[194]
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
pushenv [196]

:[195]
push.d 0.02
pop.v.d self.fadespeed

:[196]
popenv [195]
pushi.e 229
pop.v.i self.con
pushi.e 70
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[197]
push.v self.con
pushi.e 230
cmp.i.v EQ
bf [199]

:[198]
call.i gml_Script_scr_losechar_ch1(argc=0)
popz.v
push.i 231118
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.char
pushi.e 0
pop.v.i global.entrance
pushi.e 3
pop.v.i global.interact
pushi.e 152
pop.v.i global.plot
pushi.e 1466
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.pers
pushi.e 387
conv.i.v
call.i room_goto(argc=1)
popz.v
pushi.e 231
pop.v.i self.con

:[199]
push.v self.con
pushi.e 300
cmp.i.v EQ
bf [211]

:[200]
pushi.e 440
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 1351
pushenv [202]

:[201]
pushi.e 1
pop.v.i self.cutscene
pushi.e 0
pop.v.i self.visible

:[202]
popenv [201]
pushi.e 680
pop.v.i 1351.x
pushi.e 160
pop.v.i 1351.y
pushi.e 4200
conv.i.v
push.v 1351.y
push.v 1351.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
pushi.e 3575
conv.i.v
pushi.e 150
conv.i.v
pushi.e 640
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.r
pushi.e 3556
conv.i.v
pushi.e 500
conv.i.v
pushi.e 660
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
push.v self.r
pushi.e -9
pushenv [204]

:[203]
pushi.e 2
pop.v.i self.image_index

:[204]
popenv [203]
push.v self.r
pushi.e -9
pushenv [206]

:[205]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[206]
popenv [205]
push.v self.k
pushi.e -9
pushenv [208]

:[207]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[208]
popenv [207]
pushi.e 3598
conv.i.v
pushi.e 280
conv.i.v
pushi.e 640
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.irondoor
push.v self.irondoor
pushi.e -9
pushenv [210]

:[209]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[210]
popenv [209]
pushi.e 301
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[211]
push.v self.con
pushi.e 301
cmp.i.v EQ
bf [213]

:[212]
pushi.e 1
pop.v.i global.interact

:[213]
push.v self.con
pushi.e 302
cmp.i.v EQ
bf [215]

:[214]
pushi.e 2
pop.v.i global.fc
pushi.e 31
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_prisonevent_slash_Step_0_gml_481_0"@38632
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

:[215]
push.v self.con
pushi.e 303
cmp.i.v EQ
bf [217]

:[216]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [218]

:[217]
push.e 0

:[218]
bf [226]

:[219]
push.v self.irondoor
pushi.e -9
pushenv [221]

:[220]
call.i instance_destroy(argc=0)
popz.v

:[221]
popenv [220]
pushi.e 377
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.r
pushi.e -9
pushenv [223]

:[222]
pushi.e 3570
pop.v.i self.sprite_index

:[223]
popenv [222]
push.v self.k
pushi.e -9
pushenv [225]

:[224]
pushi.e 4200
pop.v.i self.sprite_index

:[225]
popenv [224]
pushi.e 1490
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.r
pushi.e -9
push.v [stacktop]self.x
pushi.e 25
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.exc
pushi.e 304
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[226]
push.v self.con
pushi.e 305
cmp.i.v EQ
bf [232]

:[227]
push.v self.exc
pushi.e -9
pushenv [229]

:[228]
call.i instance_destroy(argc=0)
popz.v

:[229]
popenv [228]
push.v self.s
pushi.e -9
pushenv [231]

:[230]
pushi.e -6
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[231]
popenv [230]
pushi.e 306
pop.v.i self.con
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[232]
push.v self.con
pushi.e 307
cmp.i.v EQ
bf [236]

:[233]
push.v self.s
pushi.e -9
pushenv [235]

:[234]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[235]
popenv [234]
pushi.e 308
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[236]
push.v self.con
pushi.e 309
cmp.i.v EQ
bf [238]

:[237]
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_prisonevent_slash_Step_0_gml_521_0"@38633
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
push.s "obj_prisonevent_slash_Step_0_gml_523_0"@38634
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_prisonevent_slash_Step_0_gml_524_0"@38635
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
push.s "obj_prisonevent_slash_Step_0_gml_526_0"@38636
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
pop.v.v self.d
pushi.e 310
pop.v.i self.con

:[238]
push.v self.con
pushi.e 310
cmp.i.v EQ
bf [240]

:[239]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [241]

:[240]
push.e 0

:[241]
bf [245]

:[242]
push.v self.s
pushi.e -9
pushenv [244]

:[243]
pushi.e 3555
pop.v.i self.sprite_index

:[244]
popenv [243]
pushi.e 311
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[245]
push.v self.con
pushi.e 312
cmp.i.v EQ
bf [247]

:[246]
pushi.e 0
pop.v.i global.fc
pushi.e 6
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_prisonevent_slash_Step_0_gml_543_0"@38637
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
pushi.e 313
pop.v.i self.con

:[247]
push.v self.con
pushi.e 313
cmp.i.v EQ
bf [249]

:[248]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [250]

:[249]
push.e 0

:[250]
bf [258]

:[251]
push.v self.s
pushi.e -9
pushenv [253]

:[252]
push.d 0.25
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.vspeed

:[253]
popenv [252]
push.v self.r
pushi.e -9
pushenv [255]

:[254]
push.d 0.25
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.vspeed

:[255]
popenv [254]
push.v self.k
pushi.e -9
pushenv [257]

:[256]
push.d 0.25
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.vspeed

:[257]
popenv [256]
pushi.e 314
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[258]
push.v self.con
pushi.e 315
cmp.i.v EQ
bf [260]

:[259]
pushi.e 1464
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 316
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[260]
push.v self.con
pushi.e 317
cmp.i.v EQ
bf [end]

:[261]
pushi.e 156
pop.v.i global.plot
call.i gml_Script_scr_losechar_ch1(argc=0)
popz.v
push.i 231118
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.char
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar_ch1(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar_ch1(argc=1)
popz.v
push.i 231859
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charauto
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charauto
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.charauto
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.charauto
pushi.e 318
pop.v.i self.con
pushi.e 0
pop.v.i global.facing
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
pushi.e 387
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]