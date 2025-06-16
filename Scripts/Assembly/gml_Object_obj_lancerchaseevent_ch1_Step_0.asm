.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v 1351.x
pushi.e 1060
cmp.i.v GTE
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
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag
pushi.e 1351
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.cutscene

:[7]
popenv [6]
pushi.e 1
pop.v.i global.interact
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[8]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [14]

:[9]
pushi.e 1
pop.v.i global.facing
push.v self.susie
pushi.e -9
pushenv [11]

:[10]
pushi.e 3546
pop.v.i self.sprite_index

:[11]
popenv [10]
push.i 231251
setowner.e
push.s "obj_lancerchaseevent_slash_Step_0_gml_16_0"@15553
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_lancerchaseevent_slash_Step_0_gml_17_0"@15555
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 30
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.fc
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
push.v self.d
pushi.e -9
pushenv [13]

:[12]
pushi.e 0
pop.v.i self.side

:[13]
popenv [12]

:[14]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [21]

:[18]
pushi.e 4083
conv.i.v
pushi.e 370
conv.i.v
pushi.e 1150
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.lancer
pushi.e 2
pop.v.i global.facing
push.v self.susie
pushi.e -9
pushenv [20]

:[19]
pushi.e 3556
pop.v.i self.sprite_index

:[20]
popenv [19]
pushi.e 40
conv.i.v
pushi.e -8
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
pushi.e 5
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[21]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [23]

:[22]
pushi.e 7
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[23]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [30]

:[24]
push.v self.lancer
pushi.e -9
pushenv [26]

:[25]
pushi.e 1
pop.v.i self.image_index

:[26]
popenv [25]
pushi.e 433
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
push.i 166767
setowner.e
pushi.e 4051
conv.i.v
push.v self.lancer
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.lancer
pushi.e -9
push.v [stacktop]self.x
pushi.e 120
add.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.b
pushi.e 4051
conv.i.v
push.v self.lancer
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.lancer
pushi.e -9
push.v [stacktop]self.x
pushi.e 160
sub.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.b
pushi.e 0
pop.v.i self.i

:[27]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [29]

:[28]
push.i 133653
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.b
pushi.e -9
pop.v.i [stacktop]self.image_alpha
push.i 168337
setowner.e
push.v self.susie
pushi.e -9
push.v [stacktop]self.y
pushi.e 30
add.i.v
push.v self.susie
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.b
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.b
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.bdir
push.i 133625
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bdir
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.b
pushi.e -9
pop.v.v [stacktop]self.direction
push.i 133652
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.bdir
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.b
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.i 133626
setowner.e
pushi.e -4
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.b
pushi.e -9
pop.v.i [stacktop]self.speed
push.i 133627
setowner.e
push.d 0.12
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.b
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [27]

:[29]
pushi.e 9
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[30]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [36]

:[31]
pushi.e -1
pushi.e 0
push.v [array]self.b
pushi.e -9
pushenv [33]

:[32]
push.v self.image_alpha
push.d 0.04
add.d.v
pop.v.v self.image_alpha

:[33]
popenv [32]
pushi.e -1
pushi.e 1
push.v [array]self.b
pushi.e -9
pushenv [35]

:[34]
push.v self.image_alpha
push.d 0.04
add.d.v
pop.v.v self.image_alpha

:[35]
popenv [34]

:[36]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [48]

:[37]
push.v self.lancer
pushi.e -9
pushenv [39]

:[38]
pushi.e 0
pop.v.i self.image_index

:[39]
popenv [38]
pushi.e 429
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i self.aftercon
pushi.e -1
pushi.e 0
push.v [array]self.b
pushi.e -9
pushenv [41]

:[40]
pushi.e 22
pop.v.i self.speed

:[41]
popenv [40]
pushi.e -1
pushi.e 1
push.v [array]self.b
pushi.e -9
pushenv [43]

:[42]
pushi.e 22
pop.v.i self.speed

:[43]
popenv [42]
pushi.e -1
pushi.e 0
push.v [array]self.b
pushi.e -9
pushenv [45]

:[44]
pushi.e -1
pop.v.i self.friction

:[45]
popenv [44]
pushi.e -1
pushi.e 1
push.v [array]self.b
pushi.e -9
pushenv [47]

:[46]
pushi.e -1
pop.v.i self.friction

:[47]
popenv [46]
pushi.e 10
conv.i.v
pushi.e 31
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_pan_ch1(argc=3)
popz.v
pushi.e 11
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[48]
push.v self.aftercon
pushi.e 1
cmp.i.v EQ
bf [54]

:[49]
pushi.e -1
pushi.e 0
push.v [array]self.b
pushi.e -9
pushenv [51]

:[50]
call.i gml_Script_scr_afterimage_ch1(argc=0)
pop.v.v self.a
push.d 0.6
push.v self.a
pushi.e -9
pop.v.d [stacktop]self.image_alpha

:[51]
popenv [50]
pushi.e -1
pushi.e 1
push.v [array]self.b
pushi.e -9
pushenv [53]

:[52]
call.i gml_Script_scr_afterimage_ch1(argc=0)
pop.v.v self.a
push.d 0.6
push.v self.a
pushi.e -9
pop.v.d [stacktop]self.image_alpha

:[53]
popenv [52]

:[54]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [57]

:[55]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushbltn.v builtin.room_height
pushi.e 480
sub.i.v
cmp.v.v GTE
bf [57]

:[56]
pushbltn.v builtin.room_height
pushi.e 480
sub.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[57]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [61]

:[58]
push.v self.susie
pushi.e -9
pushenv [60]

:[59]
pushi.e 16
pop.v.i self.hspeed
pushi.e 3559
pop.v.i self.sprite_index

:[60]
popenv [59]
pushi.e 13
pop.v.i self.con
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[61]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [65]

:[62]
push.v self.susie
pushi.e -9
pushenv [64]

:[63]
pushi.e 0
pop.v.i self.hspeed

:[64]
popenv [63]
push.d 14.1
pop.v.d self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[65]
push.v self.con
push.d 15.1
cmp.d.v EQ
bf [69]

:[66]
push.v self.susie
pushi.e -9
pushenv [68]

:[67]
pushi.e 3548
pop.v.i self.sprite_index

:[68]
popenv [67]
pushi.e 5
conv.i.v
pushi.e 1351
conv.i.v
call.i gml_Script_scr_pan_to_obj_ch1(argc=2)
popz.v
push.d 14.2
pop.v.d self.con
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[69]
push.v self.con
push.d 15.2
cmp.d.v EQ
bf [75]

:[70]
pushi.e 1463
pushenv [72]

:[71]
call.i instance_destroy(argc=0)
popz.v

:[72]
popenv [71]
pushi.e 1351
pushenv [74]

:[73]
pushi.e 0
pop.v.i self.cutscene

:[74]
popenv [73]
pushi.e 15
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[75]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [77]

:[76]
pushi.e 0
pop.v.i self.aftercon
pushi.e 9
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_lancerchaseevent_slash_Step_0_gml_137_0"@15559
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
pushi.e 17
pop.v.i self.con

:[77]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [79]

:[78]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [86]

:[81]
push.v self.susie
pushi.e -9
pushenv [83]

:[82]
pushi.e 3551
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed
pushi.e 14
pop.v.i self.hspeed

:[83]
popenv [82]
pushi.e 0
pop.v.i global.interact
pushi.e 18
pop.v.i self.con
pushi.e 1351
pushenv [85]

:[84]
pushi.e 0
pop.v.i self.cutscene
pushi.e 1
pop.v.i self.autorun

:[85]
popenv [84]
push.i 231459
setowner.e
push.s "creepychase.ogg"@15561
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
pushi.e 1512
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
bf [end]

:[87]
pushi.e 20
pop.v.i self.con

:[end]