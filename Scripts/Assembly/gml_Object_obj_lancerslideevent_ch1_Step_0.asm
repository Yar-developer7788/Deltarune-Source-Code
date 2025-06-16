.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
pushi.e 1351
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.visible

:[3]
popenv [2]
pushi.e 4202
conv.i.v
push.v 1351.y
pushi.e 0
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
push.v self.k
pushi.e -9
pushenv [5]

:[4]
pushi.e 12
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[5]
popenv [4]
pushi.e 3555
conv.i.v
push.v 1351.y
pushi.e 10
sub.i.v
pushi.e 340
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 22
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[6]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [12]

:[7]
pushi.e 1
pop.v.i global.interact
push.v self.k
pushi.e -9
pushenv [9]

:[8]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[9]
popenv [8]
push.v self.s
pushi.e -9
pushenv [11]

:[10]
pushi.e 3548
pop.v.i self.sprite_index

:[11]
popenv [10]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 9
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_lancerslideevent_slash_Step_0_gml_34_0"@15543
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

:[12]
push.v self.con
pushi.e 4
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
bf [21]

:[16]
pushi.e 382
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.s
pushi.e -9
pushenv [18]

:[17]
pushi.e 3555
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed
pushi.e 20
pop.v.i self.vspeed

:[18]
popenv [17]
push.v self.k
pushi.e -9
pushenv [20]

:[19]
pushi.e 4200
pop.v.i self.sprite_index

:[20]
popenv [19]
pushi.e 5
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[21]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [25]

:[22]
push.v self.k
pushi.e -9
pushenv [24]

:[23]
pushi.e 4
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed

:[24]
popenv [23]
pushi.e 7
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[25]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [35]

:[26]
pushi.e 382
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.v self.k
pushi.e -9
push.v [stacktop]self.x
pop.v.v 1351.x
push.v self.k
pushi.e -9
push.v [stacktop]self.y
pop.v.v 1351.y
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 485
conv.i.v
call.i gml_Script_snd_loop_ch1(argc=1)
pop.v.v self.slidesfx
pushi.e 1351
pushenv [28]

:[27]
pushi.e 1
pop.v.i self.cutscene
pushi.e 1
pop.v.i self.visible
pushi.e 20
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.fun
pushi.e 4205
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.autorun

:[28]
popenv [27]
push.v self.seiz
pushi.e 1
cmp.i.v EQ
bf [32]

:[29]
pushi.e 1351
pushenv [31]

:[30]
pushi.e 10
pop.v.i self.vspeed

:[31]
popenv [30]

:[32]
push.v self.k
pushi.e -9
pushenv [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
popenv [33]
pushi.e 1
pop.v.i self.cameracon
pushi.e 9
pop.v.i self.con

:[35]
push.v self.cameracon
pushi.e 1
cmp.i.v EQ
bf [52]

:[36]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 880
cmp.i.v LT
bf [41]

:[37]
push.v self.seiz
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 20
add.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
b [40]

:[39]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 10
add.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[40]
b [52]

:[41]
pushi.e 1351
pushenv [43]

:[42]
pushi.e 0
pop.v.i self.vspeed

:[43]
popenv [42]
pushi.e 0
pop.v.i global.interact
pushi.e 1512
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 1660
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.block1
push.v self.block1
pushi.e -9
pushenv [45]

:[44]
pushi.e 40
pop.v.i self.image_xscale

:[45]
popenv [44]
pushi.e 1660
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 440
add.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.block2
push.v self.block2
pushi.e -9
pushenv [47]

:[46]
pushi.e 40
pop.v.i self.image_xscale

:[47]
popenv [46]
push.i 166226
setowner.e
pushi.e 1399
conv.i.v
pushi.e 2280
conv.i.v
pushi.e 70
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.w
pushi.e 1399
conv.i.v
pushi.e 1560
conv.i.v
pushi.e 550
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.w
pushi.e 1399
conv.i.v
pushi.e 1800
conv.i.v
pushi.e 70
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.w
pushi.e 1399
conv.i.v
pushi.e 2040
conv.i.v
pushi.e 550
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.w
push.v self.seiz
conv.v.b
bf [51]

:[48]
pushi.e 1399
pushenv [50]

:[49]
pushi.e -10
pop.v.i self.vspeed

:[50]
popenv [49]

:[51]
pushi.e 2
pop.v.i self.cameracon
pushi.e 0
pop.v.i self.shifted

:[52]
push.v self.cameracon
pushi.e 2
cmp.i.v EQ
bf [end]

:[53]
push.v self.slidetimer
pushi.e 1
add.i.v
pop.v.v self.slidetimer
push.v self.seiz
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
pushi.e -20
conv.i.v
pushi.e 0
conv.i.v
push.i 1000000
conv.i.v
call.i gml_Script_tile_layer_shift_ch1(argc=3)
popz.v
push.v self.shifted
pushi.e 20
sub.i.v
pop.v.v self.shifted
b [56]

:[55]
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.i 1000000
conv.i.v
call.i gml_Script_tile_layer_shift_ch1(argc=3)
popz.v
push.v self.shifted
pushi.e 10
sub.i.v
pop.v.v self.shifted

:[56]
push.v self.shifted
pushi.e -480
cmp.i.v LTE
bf [58]

:[57]
pushi.e 480
conv.i.v
pushi.e 0
conv.i.v
push.i 1000000
conv.i.v
call.i gml_Script_tile_layer_shift_ch1(argc=3)
popz.v
push.v self.shifted
pushi.e 480
add.i.v
pop.v.v self.shifted

:[58]
pushglb.v global.inv
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
push.v self.slidetimer
pushi.e 390
cmp.i.v LTE
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
push.v self.slidetimer
pushi.e 10
sub.i.v
pop.v.v self.slidetimer

:[63]
push.v self.slidetimer
pushi.e 390
cmp.i.v EQ
bf [71]

:[64]
pushi.e 120
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume_ch1(argc=3)
popz.v
pushi.e 120
conv.i.v
pushi.e 0
conv.i.v
push.v self.slidesfx
call.i gml_Script_snd_volume_ch1(argc=3)
popz.v
pushi.e 1512
pushenv [66]

:[65]
push.i 68097
setowner.e
pushi.e -40
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[66]
popenv [65]
pushi.e 1511
pushenv [68]

:[67]
push.d -0.4
pop.v.d self.gravity
pushi.e 0
pop.v.i self.active

:[68]
popenv [67]
pushi.e 1464
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.fo
push.v self.fo
pushi.e -9
pushenv [70]

:[69]
push.i 16777215
pop.v.i self.image_blend
push.d 0.01
pop.v.d self.fadespeed

:[70]
popenv [69]

:[71]
push.v self.slidetimer
pushi.e 540
cmp.i.v EQ
bf [end]

:[72]
push.v self.slidesfx
call.i gml_Script_snd_stop_ch1(argc=1)
popz.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_free_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i global.interact
call.i room_goto_next(argc=0)
popz.v

:[end]