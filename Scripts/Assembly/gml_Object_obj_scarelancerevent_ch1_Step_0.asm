.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [16]

:[1]
push.v 1351.x
push.v self.tx
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
bf [16]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
pushi.e 1493
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.visible

:[7]
popenv [6]
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
pushi.e 3575
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
pushi.e 4202
conv.i.v
push.v 1351.y
push.v 1351.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
pushi.e 1351
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.visible

:[9]
popenv [8]
push.v self.s
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e 15
conv.i.v
push.v 1351.y
push.v 1351.sprite_height
add.v.v
push.v self.sprite_height
sub.v.v
push.v 1351.x
pushi.e 120
sub.i.v
call.i gml_Script_scr_move_to_point_over_time_ch1(argc=3)
popz.v

:[11]
popenv [10]
push.v self.r
pushi.e -9
pushenv [13]

:[12]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e 15
conv.i.v
push.v 1351.y
push.v 1351.sprite_height
add.v.v
push.v self.sprite_height
sub.v.v
push.v 1351.x
pushi.e 60
sub.i.v
call.i gml_Script_scr_move_to_point_over_time_ch1(argc=3)
popz.v

:[13]
popenv [12]
push.v self.k
pushi.e -9
pushenv [15]

:[14]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[15]
popenv [14]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1490
conv.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 3587
pop.v.i self.sprite_index
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v

:[16]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
pushi.e 4
pop.v.i self.con
push.i 231459
setowner.e
push.s "lancer.ogg"@20915
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[18]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [20]

:[19]
push.i 231459
setowner.e
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 3
pop.v.i global.fe
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_scarelancerevent_slash_Step_0_gml_49_0"@39207
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_50_0"@39208
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_51_0"@39209
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_52_0"@39210
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_53_0"@39211
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_54_0"@39212
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
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 6
pop.v.i self.con

:[20]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [22]

:[21]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_scarelancerevent_slash_Step_0_gml_66_0"@39213
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_67_0"@39214
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_68_0"@39215
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
push.s "obj_scarelancerevent_slash_Step_0_gml_70_0"@39216
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_71_0"@39217
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_73_0"@39218
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_75_0"@39219
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_77_0"@39220
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
pushi.e 7
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

:[25]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [27]

:[26]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [32]

:[29]
push.v 1351.y
pop.v.v self.oy
pushi.e 1
pop.v.i 1351.cutscene
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
push.i 231459
setowner.e
push.s "s_neo.ogg"@38265
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.v self.s
pushi.e -9
pushenv [31]

:[30]
pushi.e 100
pop.v.i self.depth
push.d 0.2
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.hspeed

:[31]
popenv [30]
pushi.e 8
pop.v.i self.con

:[32]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [45]

:[33]
push.v self.s
pushi.e -9
push.v [stacktop]self.x
push.v self.r
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
sub.i.v
sub.v.v
call.i abs(argc=1)
pushi.e 6
cmp.i.v LT
bf [37]

:[34]
push.v self.r
pushi.e -9
pushenv [36]

:[35]
pushi.e 3570
pop.v.i self.sprite_index
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y

:[36]
popenv [35]

:[37]
push.v self.s
pushi.e -9
push.v [stacktop]self.x
push.v 1351.x
pushi.e 20
sub.i.v
sub.v.v
call.i abs(argc=1)
pushi.e 6
cmp.i.v LT
bf [41]

:[38]
push.v self.k
pushi.e -9
pushenv [40]

:[39]
pushi.e 4200
pop.v.i self.sprite_index
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y

:[40]
popenv [39]

:[41]
push.v self.s
pushi.e -9
push.v [stacktop]self.x
push.v 1351.x
pushi.e 60
add.i.v
cmp.v.v GT
bf [45]

:[42]
push.v self.s
pushi.e -9
pushenv [44]

:[43]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[44]
popenv [43]
pushi.e 9
pop.v.i self.con
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[45]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [51]

:[46]
pushi.e 1
pop.v.i global.facing
push.v self.r
pushi.e -9
pushenv [48]

:[47]
pushi.e 3575
pop.v.i self.sprite_index

:[48]
popenv [47]
push.v self.k
pushi.e -9
pushenv [50]

:[49]
pushi.e 4202
pop.v.i self.sprite_index

:[50]
popenv [49]
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_scarelancerevent_slash_Step_0_gml_134_0"@39221
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
push.s "obj_scarelancerevent_slash_Step_0_gml_136_0"@39222
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_138_0"@39223
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_139_0"@39224
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_140_0"@39225
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
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
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side

:[51]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [53]

:[52]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [54]

:[53]
push.e 0

:[54]
bf [58]

:[55]
push.v self.s
pushi.e -9
pushenv [57]

:[56]
pushi.e 1
pop.v.i self.hspeed
push.d 0.1
pop.v.d self.image_speed

:[57]
popenv [56]
pushi.e 11
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[58]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [62]

:[59]
push.v self.s
pushi.e -9
pushenv [61]

:[60]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[61]
popenv [60]
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_scarelancerevent_slash_Step_0_gml_163_0"@39226
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
push.s "obj_scarelancerevent_slash_Step_0_gml_165_0"@39227
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
push.s "obj_scarelancerevent_slash_Step_0_gml_167_0"@39228
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 13
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

:[62]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [64]

:[63]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [69]

:[66]
push.v self.s
pushi.e -9
pushenv [68]

:[67]
pushi.e 2
pop.v.i self.hspeed
push.v 1377.y
push.v self.y
sub.v.v
push.v 1377.sprite_height
add.v.v
push.v self.sprite_height
sub.v.v
pushi.e 30
conv.i.d
div.d.v
pop.v.v self.vspeed
push.d 0.2
pop.v.d self.image_speed

:[68]
popenv [67]
pushi.e 1
pop.v.i self.hspeed
pushi.e 15
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[69]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [75]

:[70]
push.v self.s
pushi.e -9
pushenv [72]

:[71]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[72]
popenv [71]
pushi.e 0
pop.v.i self.visible
push.v self.s
pushi.e -9
pushenv [74]

:[73]
pushi.e 3524
pop.v.i self.sprite_index

:[74]
popenv [73]
pushi.e 0
pop.v.i self.hspeed
push.d 16.1
pop.v.d self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[75]
push.v self.con
push.d 17.1
cmp.d.v EQ
bf [80]

:[76]
push.v self.s
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.d 0.25
add.d.v
pop.i.v [stacktop]self.image_index
push.v self.s
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
pushi.e 382
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[78]
push.v self.s
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 3
cmp.i.v GTE
bf [80]

:[79]
pushi.e 17
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[80]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [82]

:[81]
pushi.e 0
pop.v.i self.visible
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_scarelancerevent_slash_Step_0_gml_215_0"@39229
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
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
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side

:[82]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [84]

:[83]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [85]

:[84]
push.e 0

:[85]
bf [89]

:[86]
push.v self.s
pushi.e -9
dup.i 4
push.v [stacktop]self.image_index
push.d 0.25
add.d.v
pop.i.v [stacktop]self.image_index
push.v self.s
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 7
cmp.i.v GTE
bf [88]

:[87]
pushi.e 20
pop.v.i self.con

:[88]
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[89]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [91]

:[90]
push.i 231251
setowner.e
push.s "obj_scarelancerevent_slash_Step_0_gml_234_0"@39230
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_235_0"@39231
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
pushi.e 22
pop.v.i self.con

:[91]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [93]

:[92]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [98]

:[95]
push.v self.s
pushi.e -9
pushenv [97]

:[96]
pushi.e 3525
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.image_index

:[97]
popenv [96]
push.s "obj_scarelancerevent_slash_Step_0_gml_249_0"@39232
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
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.skip
pushi.e 23
pop.v.i self.con

:[98]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [100]

:[99]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [103]

:[102]
pushi.e 26
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[103]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [105]

:[104]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [106]

:[105]
push.e 0

:[106]
bf [110]

:[107]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
push.v self.s
pushi.e -9
pushenv [109]

:[108]
pushi.e 3526
pop.v.i self.sprite_index

:[109]
popenv [108]
pushi.e 3
pop.v.i global.fe
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_scarelancerevent_slash_Step_0_gml_270_0"@39233
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_271_0"@39234
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "A"@1192
conv.s.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_273_0"@39235
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
push.s "obj_scarelancerevent_slash_Step_0_gml_275_0"@39236
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_276_0"@39237
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_278_0"@39238
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_scarelancerevent_slash_Step_0_gml_280_0"@39239
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
pushi.e 28
pop.v.i self.con
pushi.e 8
pop.v.i global.encounterno
pushglb.v global.encounterno
call.i gml_Script_scr_encountersetup_ch1(argc=1)
popz.v

:[110]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [112]

:[111]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [113]

:[112]
push.e 0

:[113]
bf [117]

:[114]
pushi.e 1490
conv.i.v
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.s
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.v self.s
pushi.e -9
pushenv [116]

:[115]
pushi.e 3549
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[116]
popenv [115]
pushi.e 1
pop.v.i self.visible
push.v self.y
pushi.e 14
sub.i.v
pop.v.v self.y
pushi.e 382
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 8
pop.v.i self.hspeed
pushi.e 2
pop.v.i self.vspeed
pushi.e 29
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[117]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [119]

:[118]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
push.d 30.1
pop.v.d self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[119]
push.v self.con
push.d 31.1
cmp.d.v EQ
bf [126]

:[120]
pushi.e 0
pop.v.i self.i

:[121]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [125]

:[122]
push.i 168859
setowner.e
pushi.e 3974
conv.i.v
push.v self.y
pushi.e 20
sub.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 700
add.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.cc
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cc
pushi.e -9
pushenv [124]

:[123]
pushi.e 30
conv.i.v
push.v self.y
pushi.e -5
pushi.e 0
push.v [array]self.monstermakex
pushi.e 60
add.i.v
call.i gml_Script_scr_move_to_point_over_time_ch1(argc=3)
popz.v
push.i 50000
pop.v.i self.depth

:[124]
popenv [123]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [121]

:[125]
pushi.e 31
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[126]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [133]

:[127]
pushi.e 0
pop.v.i self.i

:[128]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [132]

:[129]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cc
pushi.e -9
pushenv [131]

:[130]
pushi.e 0
pop.v.i self.hspeed

:[131]
popenv [130]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [128]

:[132]
push.i 231251
setowner.e
push.s "obj_scarelancerevent_slash_Step_0_gml_328_0"@39240
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_scarelancerevent_slash_Step_0_gml_329_0"@39241
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
pushi.e 33
pop.v.i self.con

:[133]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [135]

:[134]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [136]

:[135]
push.e 0

:[136]
bf [138]

:[137]
pushi.e 16
pop.v.i self.hspeed
pushi.e 3
pop.v.i global.fe
push.s "obj_scarelancerevent_slash_Step_0_gml_340_0"@39242
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 34
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[138]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [140]

:[139]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [141]

:[140]
push.e 0

:[141]
bf [154]

:[142]
pushi.e 20
conv.i.v
pushi.e 1351
conv.i.v
call.i gml_Script_scr_pan_to_obj_ch1(argc=2)
popz.v
pushi.e 35
pop.v.i self.con
pushi.e 0
pop.v.i self.i

:[143]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [147]

:[144]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cc
pushi.e -9
pushenv [146]

:[145]
pushi.e -4
pop.v.i self.hspeed

:[146]
popenv [145]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [143]

:[147]
push.v self.k
pushi.e -9
pushenv [149]

:[148]
pushi.e 20
conv.i.v
push.v 1351.y
push.v 1351.x
call.i gml_Script_scr_move_to_point_over_time_ch1(argc=3)
popz.v

:[149]
popenv [148]
push.v self.s
pushi.e -9
pushenv [151]

:[150]
pushi.e 20
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
call.i gml_Script_scr_move_to_point_over_time_ch1(argc=3)
popz.v

:[151]
popenv [150]
push.v self.r
pushi.e -9
pushenv [153]

:[152]
pushi.e 20
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
call.i gml_Script_scr_move_to_point_over_time_ch1(argc=3)
popz.v

:[153]
popenv [152]
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[154]
push.v self.con
pushi.e 36
cmp.i.v EQ
bf [171]

:[155]
pushi.e 0
pop.v.i self.i

:[156]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [160]

:[157]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cc
pushi.e -9
pushenv [159]

:[158]
pushi.e 0
pop.v.i self.depth
pushi.e 0
pop.v.i self.hspeed

:[159]
popenv [158]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [156]

:[160]
pushi.e 1493
pushenv [162]

:[161]
pushi.e 1
pop.v.i self.visible

:[162]
popenv [161]
pushi.e 1351
pushenv [164]

:[163]
pushi.e 1
pop.v.i self.visible

:[164]
popenv [163]
push.v self.s
pushi.e -9
pushenv [166]

:[165]
call.i instance_destroy(argc=0)
popz.v

:[166]
popenv [165]
push.v self.r
pushi.e -9
pushenv [168]

:[167]
call.i instance_destroy(argc=0)
popz.v

:[168]
popenv [167]
push.v self.k
pushi.e -9
pushenv [170]

:[169]
call.i instance_destroy(argc=0)
popz.v

:[170]
popenv [169]
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_scarelancerevent_slash_Step_0_gml_374_0"@39243
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
pushi.e 37
pop.v.i self.con

:[171]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [173]

:[172]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [174]

:[173]
push.e 0

:[174]
bf [185]

:[175]
push.i 231459
setowner.e
push.s "field_of_hopes.ogg"@19773
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
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_pause_ch1(argc=1)
popz.v
pushi.e 1628
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 22
pop.v.i global.encounterno
pushglb.v global.encounterno
call.i gml_Script_scr_encountersetup_ch1(argc=1)
popz.v
pushi.e 0
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
pushi.e 0
pop.v.i self.i

:[176]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [182]

:[177]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cc
call.i instance_exists(argc=1)
conv.v.b
bf [181]

:[178]
push.i 231094
setowner.e
push.v self.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cc
pushi.e -9
pop.v.v [stacktop]self.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cc
pushi.e -9
pushenv [180]

:[179]
pushi.e 25
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstermakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstermakex
call.i gml_Script_scr_move_to_point_over_time_ch1(argc=3)
popz.v

:[180]
popenv [179]

:[181]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [176]

:[182]
pushi.e 38
pop.v.i self.con
pushglb.v global.plot
pushi.e 45
cmp.i.v LT
bf [184]

:[183]
pushi.e 45
pop.v.i global.plot

:[184]
push.i 68097
setowner.e
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[185]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [end]

:[186]
pushi.e -1
pushi.e 0
push.v [array]self.cc
pushi.e -9
pushenv [188]

:[187]
pushi.e 0
pop.v.i self.visible

:[188]
popenv [187]
pushi.e -1
pushi.e 1
push.v [array]self.cc
pushi.e -9
pushenv [190]

:[189]
pushi.e 0
pop.v.i self.visible

:[190]
popenv [189]
pushi.e -1
pushi.e 2
push.v [array]self.cc
pushi.e -9
pushenv [192]

:[191]
pushi.e 0
pop.v.i self.visible

:[192]
popenv [191]
pushi.e 40
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[end]