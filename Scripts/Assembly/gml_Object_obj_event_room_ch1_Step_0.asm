.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 333
cmp.i.v EQ
bf [17]

:[1]
push.v 1351.x
push.v self.x
cmp.v.v GTE
bf [4]

:[2]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [12]

:[6]
pushi.e 5
pop.v.i global.fc
pushi.e 32
pop.v.i global.typer
pushi.e 1
pop.v.i global.interact
pushi.e -5
pushi.e 210
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.i 231251
setowner.e
push.s "obj_event_room_slash_Step_0_gml_11_0"@40373
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "B"@3500
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_13_0"@40374
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
push.s "obj_event_room_slash_Step_0_gml_15_0"@40375
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
b [9]

:[8]
pushi.e 6
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_event_room_slash_Step_0_gml_20_0"@40376
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "B"@3500
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_22_0"@40377
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_24_0"@40378
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 210
pop.v.v [array]self.flag

:[9]
pushglb.v global.plot
pushi.e 34
cmp.i.v LT
bf [11]

:[10]
pushi.e 34
pop.v.i global.plot

:[11]
pushi.e 1
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[12]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[17]
pushbltn.v builtin.room
pushi.e 334
cmp.i.v EQ
bt [19]

:[18]
pushbltn.v builtin.room
pushi.e 336
cmp.i.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [26]

:[21]
push.v self.candytree
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[22]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.d 0.7
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.3
mul.d.v
add.v.d
push.v self.candytree
pushi.e -9
pop.v.v [stacktop]self.image_alpha
pushi.e -5
push.v self.candyflag
conv.v.i
push.v [array]self.flag
push.v self.candytree
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e -5
push.v self.candyflag
conv.v.i
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
bf [26]

:[23]
push.v self.candytree
pushi.e -9
pushenv [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [24]
call.i instance_destroy(argc=0)
popz.v

:[26]
pushbltn.v builtin.room
pushi.e 284
cmp.i.v EQ
bf [28]

:[27]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[28]
pushbltn.v builtin.room
pushi.e 288
cmp.i.v EQ
bf [30]

:[29]
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v

:[30]
pushbltn.v builtin.room
pushi.e 286
cmp.i.v EQ
bf [53]

:[31]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
pushi.e 3
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.timer
pushi.e 5
cmp.i.v GTE
bf [35]

:[32]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [35]

:[33]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
push.v self.rem_facing
pushi.e 3
cmp.i.v EQ
b [36]

:[35]
push.e 0

:[36]
bf [48]

:[37]
pushi.e -5
pushi.e 277
push.v [array]self.flag
pushi.e 7
cmp.i.v EQ
bf [39]

:[38]
pushi.e 7
pop.v.i global.typer
pushi.e 4
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 231204
setowner.e
pushi.e -5
pushi.e 277
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
push.i 231251
setowner.e
push.s "obj_event_room_slash_Step_0_gml_71_0"@40379
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_72_0"@40380
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

:[39]
pushi.e -5
pushi.e 277
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
bf [41]

:[40]
pushi.e -5
pushi.e 277
push.v [array]self.flag
pushi.e 6
cmp.i.v LTE
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
push.i 231204
setowner.e
pushi.e -5
pushi.e 277
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag
pushi.e 2
pop.v.i self.con

:[44]
pushi.e -5
pushi.e 277
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
pushi.e 7
pop.v.i global.typer
pushi.e 4
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e -5
pushi.e 277
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
push.i 231251
setowner.e
push.s "obj_event_room_slash_Step_0_gml_91_0"@40381
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_92_0"@40382
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_93_0"@40383
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

:[46]
pushi.e -5
pushi.e 277
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
pushi.e 7
pop.v.i global.typer
pushi.e 4
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 231204
setowner.e
pushi.e -5
pushi.e 277
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
push.i 231251
setowner.e
push.s "obj_event_room_slash_Step_0_gml_106_0"@40384
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_107_0"@40385
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_108_0"@40386
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_109_0"@40387
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_110_0"@40388
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

:[48]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i global.interact

:[53]
pushbltn.v builtin.room
pushi.e 392
cmp.i.v EQ
bf [94]

:[54]
push.v 1351.x
pushi.e 200
sub.i.v
pushi.e 1400
conv.i.d
div.d.v
pop.v.v self.m
push.v self.m
push.d 0.2
cmp.d.v LT
bf [56]

:[55]
push.d 0.2
pop.v.d self.m

:[56]
push.v self.m
push.v self.maxm
cmp.v.v LT
bf [58]

:[57]
push.v self.maxm
pop.v.v self.m

:[58]
push.v self.m
push.d 0.8
cmp.d.v GTE
bf [60]

:[59]
push.d 0.8
pop.v.d self.m

:[60]
push.v self.m
pop.v.v self.maxm
pushi.e 0
conv.i.v
push.v self.m
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume_ch1(argc=3)
popz.v
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [62]

:[61]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [63]

:[62]
push.e 0

:[63]
bf [67]

:[64]
pushi.e 3707
conv.i.v
push.v self.doorimg
pushi.e -9
push.v [stacktop]self.y
push.v self.doorimg
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.doorimg2
push.v self.doorimg2
pushi.e -9
pushenv [66]

:[65]
push.i 400000
pop.v.i self.depth
pushi.e 0
pop.v.i self.image_alpha
pushi.e 1
pop.v.i self.image_index

:[66]
popenv [65]
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 414
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[67]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [72]

:[68]
pushi.e 1
pop.v.i global.interact
push.v self.doorimg2
pushi.e -9
pushenv [70]

:[69]
push.v self.image_alpha
push.d 0.03
add.d.v
pop.v.v self.image_alpha

:[70]
popenv [69]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 80
cmp.i.v GTE
bf [72]

:[71]
pushi.e 7
pop.v.i self.con

:[72]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [74]

:[73]
pushi.e 0
pop.v.i self.timer
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "obj_event_room_slash_Step_0_gml_163_0"@40390
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
pushi.e 8
pop.v.i self.con

:[74]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [76]

:[75]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [77]

:[76]
push.e 0

:[77]
bf [83]

:[78]
push.v self.doorimg
pushi.e -9
pushenv [80]

:[79]
pushi.e 2
pop.v.i self.image_index

:[80]
popenv [79]
push.v self.doorimg2
pushi.e -9
pushenv [82]

:[81]
call.i instance_destroy(argc=0)
popz.v

:[82]
popenv [81]
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 381
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 377
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 9
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[83]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [89]

:[84]
push.v self.doorsolid
pushi.e -9
pushenv [86]

:[85]
call.i instance_destroy(argc=0)
popz.v

:[86]
popenv [85]
push.v self.doorevent
pushi.e -9
pushenv [88]

:[87]
call.i instance_destroy(argc=0)
popz.v

:[88]
popenv [87]
pushi.e 1418
conv.i.v
push.v self.y
push.v self.x
pushi.e 15
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.door_door
pushi.e 0
pop.v.i global.interact
pushi.e 11
pop.v.i self.con

:[89]
push.v self.con
pushi.e 20
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
bf [94]

:[93]
pushi.e 473
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 21
pop.v.i self.con

:[94]
pushbltn.v builtin.room
pushi.e 410
cmp.i.v EQ
bf [148]

:[95]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
pushi.e -5
pushi.e 248
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [112]

:[96]
push.v 1351.x
pushi.e 30
cmp.i.v LTE
bf [99]

:[97]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [99]

:[98]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [100]

:[99]
push.e 0

:[100]
bf [107]

:[101]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 30
pop.v.i global.typer
pushi.e 32
pop.v.i 1351.x
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_event_room_slash_Step_0_gml_212_0"@40391
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_213_0"@40392
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [103]

:[102]
push.v self.timer
pushi.e 900
cmp.i.v GTE
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
pushi.e 3
pop.v.i global.fe
push.s "obj_event_room_slash_Step_0_gml_217_0"@40393
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[106]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[107]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[112]
pushi.e -5
pushi.e 248
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [148]

:[113]
pushglb.v global.plot
pushi.e 244
cmp.i.v LT
bf [136]

:[114]
push.v 1351.x
pushi.e 30
cmp.i.v LTE
bf [118]

:[115]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [118]

:[116]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [118]

:[117]
pushglb.v global.plot
pushi.e 240
cmp.i.v LTE
b [119]

:[118]
push.e 0

:[119]
bf [121]

:[120]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_event_room_slash_Step_0_gml_248_0"@40394
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_249_0"@40395
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_250_0"@40396
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_251_0"@40397
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_252_0"@40398
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_253_0"@40399
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_254_0"@40400
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
pushi.e 241
pop.v.i global.plot

:[121]
push.v 1351.y
pushi.e 280
cmp.i.v LTE
bf [124]

:[122]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [124]

:[123]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [125]

:[124]
push.e 0

:[125]
bf [131]

:[126]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 30
pop.v.i global.typer
pushi.e 282
pop.v.i 1351.y
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushglb.v global.plot
pushi.e 241
cmp.i.v GTE
bf [128]

:[127]
pushi.e 2
pop.v.i global.fe
push.s "obj_event_room_slash_Step_0_gml_272_0"@40401
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [129]

:[128]
pushi.e 445
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text_ch1(argc=1)
popz.v

:[129]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushglb.v global.plot
pushi.e 240
cmp.i.v LTE
bf [131]

:[130]
pushi.e 241
pop.v.i global.plot

:[131]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [133]

:[132]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [134]

:[133]
push.e 0

:[134]
bf [136]

:[135]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[136]
pushglb.v global.plot
pushi.e 244
cmp.i.v GTE
bf [148]

:[137]
push.v 1351.x
pushi.e 30
cmp.i.v LTE
bf [140]

:[138]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [140]

:[139]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [141]

:[140]
push.e 0

:[141]
bf [143]

:[142]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 30
pop.v.i global.typer
pushi.e 32
pop.v.i 1351.x
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_event_room_slash_Step_0_gml_307_0"@40402
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_308_0"@40403
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

:[143]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [145]

:[144]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [146]

:[145]
push.e 0

:[146]
bf [148]

:[147]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[148]
pushbltn.v builtin.room
pushi.e 377
cmp.i.v EQ
bf [157]

:[149]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [151]

:[150]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
push.d 10.5
pop.v.d self.con
pushi.e 439
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[151]
push.v self.con
push.d 11.5
cmp.d.v EQ
bf [153]

:[152]
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
pushi.e 12
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[153]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [157]

:[154]
pushi.e 1465
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.v self.blackmarker
pushi.e -9
pushenv [156]

:[155]
call.i instance_destroy(argc=0)
popz.v

:[156]
popenv [155]
pushi.e 0
pop.v.i global.interact
pushi.e 13
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[157]
pushbltn.v builtin.room
pushi.e 345
cmp.i.v EQ
bf [178]

:[158]
push.v self.pcon
pushi.e 0
cmp.i.v EQ
bf [160]

:[159]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [161]

:[160]
push.e 0

:[161]
bf [173]

:[162]
push.v self.puzzle
pushi.e -9
push.v [stacktop]self.won
pushi.e 1
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
bf [173]

:[166]
push.v self.spike_solid
pushi.e -9
pushenv [168]

:[167]
call.i instance_destroy(argc=0)
popz.v

:[168]
popenv [167]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.pcon
pushi.e -1
pushi.e 0
push.v [array]self.spikee
pushi.e -9
pushenv [170]

:[169]
pushi.e 1
pop.v.i self.image_index

:[170]
popenv [169]
pushi.e -1
pushi.e 1
push.v [array]self.spikee
pushi.e -9
pushenv [172]

:[171]
pushi.e 1
pop.v.i self.image_index

:[172]
popenv [171]

:[173]
push.v self.pcon
pushi.e 1
cmp.i.v EQ
bf [175]

:[174]
pushi.e 0
pop.v.i self.ptimer
pushi.e 447
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
pushi.e 2
pop.v.i self.pcon

:[175]
push.v self.pcon
pushi.e 2
cmp.i.v EQ
bf [178]

:[176]
push.v self.ptimer
pushi.e 1
add.i.v
pop.v.v self.ptimer
push.v self.ptimer
pushi.e 20
cmp.i.v GTE
bf [178]

:[177]
pushi.e 0
pop.v.i self.ptimer
pushi.e 3
pop.v.i self.pcon
pushi.e 0
pop.v.i global.interact

:[178]
pushbltn.v builtin.room
pushi.e 360
cmp.i.v EQ
bf [200]

:[179]
push.v self.pcon
pushi.e 0
cmp.i.v EQ
bf [181]

:[180]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [182]

:[181]
push.e 0

:[182]
bf [195]

:[183]
push.v self.puzzle
pushi.e -9
push.v [stacktop]self.won
pushi.e 1
cmp.i.v EQ
bf [186]

:[184]
push.v self.pcon
pushi.e 0
cmp.i.v EQ
bf [186]

:[185]
pushi.e -5
pushi.e 290
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [187]

:[186]
push.e 0

:[187]
bf [195]

:[188]
push.v self.spike_solid
pushi.e -9
pushenv [190]

:[189]
call.i instance_destroy(argc=0)
popz.v

:[190]
popenv [189]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.pcon
pushi.e -1
pushi.e 0
push.v [array]self.spikee
pushi.e -9
pushenv [192]

:[191]
pushi.e 1
pop.v.i self.image_index

:[192]
popenv [191]
pushi.e -1
pushi.e 1
push.v [array]self.spikee
pushi.e -9
pushenv [194]

:[193]
pushi.e 1
pop.v.i self.image_index

:[194]
popenv [193]

:[195]
push.v self.pcon
pushi.e 1
cmp.i.v EQ
bf [197]

:[196]
pushi.e 0
pop.v.i self.ptimer
pushi.e 447
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
pushi.e 2
pop.v.i self.pcon

:[197]
push.v self.pcon
pushi.e 2
cmp.i.v EQ
bf [200]

:[198]
push.v self.ptimer
pushi.e 1
add.i.v
pop.v.v self.ptimer
push.v self.ptimer
pushi.e 20
cmp.i.v GTE
bf [200]

:[199]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 290
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.ptimer
pushi.e 3
pop.v.i self.pcon
pushi.e 0
pop.v.i global.interact

:[200]
pushbltn.v builtin.room
pushi.e 371
cmp.i.v EQ
bf [213]

:[201]
push.v 1351.y
pushi.e 40
cmp.i.v LTE
bf [205]

:[202]
pushglb.v global.plot
pushi.e 85
cmp.i.v LT
bf [205]

:[203]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [205]

:[204]
push.v self.con
pushi.e 1
cmp.i.v EQ
b [206]

:[205]
push.e 0

:[206]
bf [208]

:[207]
pushi.e 1
pop.v.i global.interact
pushi.e 32
pop.v.i global.typer
pushi.e 2
pop.v.i global.fe
pushi.e 5
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_event_room_slash_Step_0_gml_437_0"@40404
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_439_0"@40405
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_440_0"@40406
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
push.s "obj_event_room_slash_Step_0_gml_442_0"@40407
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 2
pop.v.i self.con
call.i gml_Script_d_make_ch1(argc=0)
popz.v

:[208]
push.v self.con
pushi.e 2
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
bf [213]

:[212]
pushi.e 85
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 3
pop.v.i self.con

:[213]
pushbltn.v builtin.room
pushi.e 374
cmp.i.v EQ
bf [end]

:[214]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [217]

:[215]
push.v 1351.y
push.v self.y
pushi.e 120
add.i.v
cmp.v.v LTE
bf [217]

:[216]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [218]

:[217]
push.e 0

:[218]
bf [222]

:[219]
pushi.e 1
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.s "obj_event_room_slash_Step_0_gml_461_0"@40408
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_462_0"@40409
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
push.s "obj_event_room_slash_Step_0_gml_464_0"@40410
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 9
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_466_0"@40411
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_467_0"@40412
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_468_0"@40413
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_lanface_ch1(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_470_0"@40414
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_472_0"@40415
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 12
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_event_room_slash_Step_0_gml_474_0"@40416
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_475_0"@40417
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]self.msg
push.s "obj_event_room_slash_Step_0_gml_476_0"@40418
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 15
pop.v.v [array]self.msg
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [221]

:[220]
pushi.e 100
pop.v.i global.plot

:[221]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
call.i gml_Script_d_make_ch1(argc=0)
popz.v

:[222]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [224]

:[223]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [225]

:[224]
push.e 0

:[225]
bf [227]

:[226]
pushi.e 3556
pop.v.i self.sprite_index
pushi.e -10
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[227]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [229]

:[228]
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_event_room_slash_Step_0_gml_497_0"@40419
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_d_make_ch1(argc=0)
popz.v
pushi.e 5
pop.v.i self.con

:[229]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [231]

:[230]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [232]

:[231]
push.e 0

:[232]
bf [end]

:[233]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 6
pop.v.i self.con

:[end]