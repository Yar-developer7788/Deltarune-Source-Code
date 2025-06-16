.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 2
pop.v.i global.facing
pushi.e 3556
conv.i.v
pushi.e 1000
conv.i.v
pushi.e 340
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
pushi.e 3572
conv.i.v
pushi.e 1008
conv.i.v
pushi.e 260
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.r
pushi.e 3582
conv.i.v
pushi.e 740
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.l
pushi.e 1407
pushenv [3]

:[2]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i global.interact

:[6]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i global.fc
pushi.e 9
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_castlefront_event_slash_Step_0_gml_24_0"@38735
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
pushi.e 4
pop.v.i self.con

:[8]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [11]

:[10]
push.e 0

:[11]
bf [21]

:[12]
push.v self.l
pushi.e -9
pushenv [14]

:[13]
pushi.e 3580
pop.v.i self.sprite_index
pushi.e -3
pop.v.i self.vspeed

:[14]
popenv [13]
pushi.e 1351
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.fun
pushi.e -8
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[16]
popenv [15]
push.v self.s
pushi.e -9
pushenv [18]

:[17]
pushi.e -8
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[18]
popenv [17]
push.v self.r
pushi.e -9
pushenv [20]

:[19]
pushi.e -8
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[20]
popenv [19]
pushi.e 5
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 48
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[21]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [31]

:[22]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
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
pushi.e 4071
conv.i.v
pushi.e 534
conv.i.v
pushi.e 226
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.door
push.i 1000000
push.v self.door
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.l
pushi.e -9
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]
push.v self.s
pushi.e -9
pushenv [26]

:[25]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[26]
popenv [25]
push.v self.r
pushi.e -9
pushenv [28]

:[27]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[28]
popenv [27]
pushi.e 1351
pushenv [30]

:[29]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[30]
popenv [29]
pushi.e 7
pop.v.i self.con
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[31]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [33]

:[32]
push.i 231251
setowner.e
push.s "obj_castlefront_event_slash_Step_0_gml_58_0"@38736
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
pushi.e 15
pop.v.i self.con

:[33]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [35]

:[34]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [36]

:[35]
push.e 0

:[36]
bf [58]

:[37]
push.v self.s
pushi.e -9
pushenv [39]

:[38]
pushi.e 3551
pop.v.i self.sprite_index

:[39]
popenv [38]
push.v self.r
pushi.e -9
pushenv [41]

:[40]
pushi.e 3573
pop.v.i self.sprite_index

:[41]
popenv [40]
pushi.e 0
pop.v.i global.facing
pushi.e 1351
pushenv [43]

:[42]
pushi.e 4200
pop.v.i self.sprite_index

:[43]
popenv [42]
pushi.e 1490
conv.i.v
push.v 1351.y
pushi.e 20
sub.i.v
push.v 1351.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.exc
pushi.e 16
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.i

:[44]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [48]

:[45]
push.i 175257
setowner.e
pushi.e 3990
conv.i.v
pushi.e 680
pushi.e 30
push.v self.i
mul.v.i
add.v.i
pushi.e 0
pushi.e 10
push.v self.i
mul.v.i
sub.v.i
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.spademanl
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spademanl
pushi.e -9
pushenv [47]

:[46]
pushi.e -2
pop.v.i self.image_xscale
pushi.e 12
pop.v.i self.hspeed
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[47]
popenv [46]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [44]

:[48]
pushi.e 0
pop.v.i self.i

:[49]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [53]

:[50]
push.i 175258
setowner.e
pushi.e 3990
conv.i.v
pushi.e 680
pushi.e 30
push.v self.i
mul.v.i
add.v.i
pushi.e 640
pushi.e 10
push.v self.i
mul.v.i
add.v.i
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.spademanr
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spademanr
pushi.e -9
pushenv [52]

:[51]
pushi.e 2
pop.v.i self.image_xscale
pushi.e -12
pop.v.i self.hspeed
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[52]
popenv [51]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [49]

:[53]
push.i 175259
setowner.e
pushi.e 3990
conv.i.v
pushi.e 1100
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.spademand
pushi.e -1
pushi.e 0
push.v [array]self.spademand
pushi.e -9
pushenv [55]

:[54]
pushi.e -2
pop.v.i self.image_xscale
pushi.e -12
pop.v.i self.vspeed
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[55]
popenv [54]
pushi.e 3990
conv.i.v
pushi.e 1100
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.spademand
pushi.e -1
pushi.e 1
push.v [array]self.spademand
pushi.e -9
pushenv [57]

:[56]
pushi.e 2
pop.v.i self.image_xscale
pushi.e -12
pop.v.i self.vspeed
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[57]
popenv [56]

:[58]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [64]

:[59]
push.v self.exc
pushi.e -9
pushenv [61]

:[60]
call.i instance_destroy(argc=0)
popz.v

:[61]
popenv [60]
pushi.e 1407
pushenv [63]

:[62]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[63]
popenv [62]
pushi.e 18
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[64]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [66]

:[65]
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_castlefront_event_slash_Step_0_gml_106_0"@38740
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
pushi.e 20
pop.v.i self.con
pushi.e 0
pop.v.i self.ftimer
pushi.e 0
pop.v.i self.dcount
pushi.e 0
pop.v.i self.so
pushi.e 36
pop.v.i self.maxd

:[66]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [68]

:[67]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [69]

:[68]
push.e 0

:[69]
bf [85]

:[70]
push.v self.dcount
push.v self.maxd
cmp.v.v LT
bf [77]

:[71]
push.v self.so
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
pushi.e 382
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i self.so
b [74]

:[73]
pushi.e 0
pop.v.i self.so

:[74]
pushi.e 140
pop.v.i self.radius
push.v self.dcount
push.v self.maxd
div.v.v
pushi.e 360
mul.i.v
pop.v.v self.angle
push.v 1351.x
pushi.e 20
add.i.v
pop.v.v self.xpoint
push.v 1351.y
pop.v.v self.ypoint
push.v self.angle
push.v self.radius
call.i lengthdir_x(argc=2)
pop.v.v self.xd
push.v self.angle
push.v self.radius
call.i lengthdir_y(argc=2)
pop.v.v self.yd
push.i 175265
setowner.e
pushi.e 3786
conv.i.v
push.v self.ypoint
push.v self.yd
add.v.v
push.v self.xpoint
push.v self.xd
add.v.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
push.v self.dcount
conv.v.i
pop.v.v [array]self.db
push.i 133652
setowner.e
push.v self.angle
pushi.e -1
push.v self.dcount
conv.v.i
push.v [array]self.db
pushi.e -9
pop.v.v [stacktop]self.image_angle
pushi.e -1
push.v self.dcount
conv.v.i
push.v [array]self.db
pushi.e -9
pushenv [76]

:[75]
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_alpha
push.v self.image_angle
pop.v.v self.direction
pushi.e 2
pop.v.i self.speed
pushi.e 10000
pop.v.i self.depth
push.d 0.1
pop.v.d self.friction

:[76]
popenv [75]
push.v self.dcount
pushi.e 1
add.i.v
pop.v.v self.dcount

:[77]
pushi.e 0
pop.v.i self.i

:[78]
push.v self.i
push.v self.dcount
cmp.v.v LT
bf [82]

:[79]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.db
pushi.e -9
pushenv [81]

:[80]
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha

:[81]
popenv [80]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [78]

:[82]
push.v self.dcount
push.v self.maxd
cmp.v.v GTE
bf [85]

:[83]
push.v self.ftimer
pushi.e 1
add.i.v
pop.v.v self.ftimer
push.v self.ftimer
pushi.e 20
cmp.i.v GTE
bf [85]

:[84]
pushi.e 21
pop.v.i self.con

:[85]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [87]

:[86]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_castlefront_event_slash_Step_0_gml_163_0"@38747
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
pushi.e 22
pop.v.i self.con

:[87]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [89]

:[88]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [90]

:[89]
push.e 0

:[90]
bf [97]

:[91]
pushi.e 0
pop.v.i self.i

:[92]
push.v self.i
push.v self.dcount
cmp.v.v LT
bf [96]

:[93]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.db
pushi.e -9
pushenv [95]

:[94]
pushi.e 1
pop.v.i self.gravity
push.v self.image_angle
pushi.e 180
add.i.v
pop.v.v self.gravity_direction

:[95]
popenv [94]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [92]

:[96]
pushi.e 26
pop.v.i self.con

:[97]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [100]

:[98]
pushi.e -1
pushi.e 0
push.v [array]self.db
pushi.e -9
push.v [stacktop]self.x
push.v 1351.x
pushi.e 90
add.i.v
cmp.v.v LTE
bf [100]

:[99]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 439
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 27
pop.v.i self.con
pushi.e 1
pop.v.i self.black
push.i 68097
setowner.e
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[100]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [end]

:[101]
pushi.e 0
pop.v.i global.entrance
pushi.e 3
pop.v.i global.interact
pushi.e 386
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]