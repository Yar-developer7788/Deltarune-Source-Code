.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [8]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 3549
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
push.v 1351.x
pushi.e 100
sub.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.sus
pushi.e 3575
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
push.v 1351.x
pushi.e 50
sub.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.ral
pushi.e 4202
conv.i.v
push.v 1351.y
push.v 1351.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
pushi.e 1493
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 1351
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.visible

:[5]
popenv [4]
pushi.e 1407
pushenv [7]

:[6]
pushi.e 4
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[7]
popenv [6]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[8]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i global.interact

:[10]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [16]

:[11]
pushi.e 4
pop.v.i self.con
pushi.e 1407
pushenv [13]

:[12]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[13]
popenv [12]
push.v self.k
pushi.e -9
push.v [stacktop]self.x
pop.v.v 1351.x
pushi.e 1
pop.v.i 1351.visible
push.v self.k
pushi.e -9
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1490
conv.i.v
push.v self.ral
pushi.e -9
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.ral
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[16]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [18]

:[17]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_boxpuzzle_event_slash_Step_0_gml_39_0"@39277
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
push.s "obj_boxpuzzle_event_slash_Step_0_gml_41_0"@39278
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_boxpuzzle_event_slash_Step_0_gml_43_0"@39279
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 6
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[18]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [20]

:[19]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [27]

:[22]
push.v self.sus
pushi.e -9
pushenv [24]

:[23]
pushi.e 3556
pop.v.i self.sprite_index

:[24]
popenv [23]
pushi.e 2
pop.v.i global.facing
push.v self.ral
pushi.e -9
pushenv [26]

:[25]
pushi.e 3572
pop.v.i self.sprite_index
pushi.e -6
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[26]
popenv [25]
pushi.e 12
pop.v.i self.con

:[27]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [34]

:[28]
pushi.e 2
pop.v.i global.facing
push.v self.ral
pushi.e -9
push.v [stacktop]self.y
pushi.e 100
cmp.i.v LTE
bf [34]

:[29]
push.v self.ral
pushi.e -9
pushenv [31]

:[30]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[31]
popenv [30]
push.v self.ral
pushi.e -9
pushenv [33]

:[32]
pushi.e 3570
pop.v.i self.sprite_index

:[33]
popenv [32]
pushi.e 13
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[34]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [36]

:[35]
pushi.e 2
pop.v.i global.fc
pushi.e 3
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_boxpuzzle_event_slash_Step_0_gml_82_0"@39280
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_boxpuzzle_event_slash_Step_0_gml_83_0"@39281
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_boxpuzzle_event_slash_Step_0_gml_84_0"@39282
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_boxpuzzle_event_slash_Step_0_gml_85_0"@39283
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_boxpuzzle_event_slash_Step_0_gml_87_0"@39284
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
push.d 5.5
pop.v.d self.con

:[36]
push.v self.con
push.d 5.5
cmp.d.v EQ
bf [38]

:[37]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [43]

:[40]
pushi.e 1
pop.v.i global.facing
push.v self.sus
pushi.e -9
pushenv [42]

:[41]
pushi.e 3549
pop.v.i self.sprite_index
pushi.e 12
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[42]
popenv [41]
push.d 6.5
pop.v.d self.con

:[43]
push.v self.con
push.d 6.5
cmp.d.v EQ
bf [46]

:[44]
push.v self.sus
pushi.e -9
push.v [stacktop]self.x
pushi.e 480
cmp.i.v GTE
bf [46]

:[45]
pushi.e -12
push.v self.sus
pushi.e -9
pop.v.i [stacktop]self.vspeed
pushi.e 0
push.v self.sus
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e 3556
push.v self.sus
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 7.5
pop.v.d self.con

:[46]
push.v self.con
push.d 7.5
cmp.d.v EQ
bf [51]

:[47]
push.v self.sus
pushi.e -9
push.v [stacktop]self.y
pushi.e 100
cmp.i.v LTE
bf [51]

:[48]
push.v self.sus
pushi.e -9
pushenv [50]

:[49]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[50]
popenv [49]
push.d 8.5
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[51]
push.v self.con
push.d 9.5
cmp.d.v EQ
bf [55]

:[52]
push.v self.sus
pushi.e -9
pushenv [54]

:[53]
pushi.e 3553
pop.v.i self.sprite_index

:[54]
popenv [53]
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_boxpuzzle_event_slash_Step_0_gml_134_0"@39285
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
push.s "obj_boxpuzzle_event_slash_Step_0_gml_136_0"@39286
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
push.s "obj_boxpuzzle_event_slash_Step_0_gml_138_0"@39287
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_boxpuzzle_event_slash_Step_0_gml_140_0"@39288
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
pushi.e 15
pop.v.i self.con

:[55]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [57]

:[56]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [66]

:[59]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 212
pop.v.v [array]self.flag
pushi.e 1548
pushenv [61]

:[60]
pushi.e 0
pop.v.i self.event

:[61]
popenv [60]
pushi.e 1411
conv.i.v
push.v self.sus
pushi.e -9
push.v [stacktop]self.y
push.v self.sus
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.sus2
pushi.e 1411
conv.i.v
push.v self.ral
pushi.e -9
push.v [stacktop]self.y
push.v self.ral
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.ral2
push.v self.sus
pushi.e -9
pushenv [63]

:[62]
call.i instance_destroy(argc=0)
popz.v

:[63]
popenv [62]
push.v self.ral
pushi.e -9
pushenv [65]

:[64]
call.i instance_destroy(argc=0)
popz.v

:[65]
popenv [64]
pushi.e 0
pop.v.i global.interact
pushi.e 20
pop.v.i self.con
pushi.e 1
pop.v.i self.boxcon
pushi.e 1
pop.v.i self.leavecon
pushi.e 1421
conv.i.v
call.i instance_activate_object(argc=1)
popz.v

:[66]
push.v self.leavecon
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [72]

:[70]
push.v 1351.x
pushi.e 70
cmp.i.v LT
bf [72]

:[71]
pushi.e 70
pop.v.i 1351.x
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.leavecon
pushi.e 30
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 7
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_boxpuzzle_event_slash_Step_0_gml_170_0"@39291
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

:[72]
push.v self.leavecon
pushi.e 2
cmp.i.v EQ
bf [75]

:[73]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
bf [75]

:[74]
pushi.e 1
pop.v.i self.leavecon
pushi.e 0
pop.v.i global.interact

:[75]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [112]

:[76]
pushi.e 0
pop.v.i self.boxcount
pushi.e 0
pop.v.i self.tilecount
pushi.e 1548
pushenv [81]

:[77]
push.v self.sprite_index
pushi.e 3737
cmp.i.v EQ
bf [81]

:[78]
pushi.e 1379
pushenv [80]

:[79]
push.v self.boxcount
pushi.e 1
add.i.v
pop.v.v self.boxcount

:[80]
popenv [79]

:[81]
popenv [77]
pushi.e 1550
pushenv [86]

:[82]
push.v self.sprite_index
pushi.e 3610
cmp.i.v EQ
bf [86]

:[83]
pushi.e 1379
pushenv [85]

:[84]
push.v self.tilecount
pushi.e 1
add.i.v
pop.v.v self.tilecount

:[85]
popenv [84]

:[86]
popenv [82]
push.v self.boxcount
pushi.e 0
cmp.i.v EQ
bf [89]

:[87]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [89]

:[88]
push.v self.boxon
pushi.e 2
cmp.i.v EQ
b [90]

:[89]
push.e 0

:[90]
bf [92]

:[91]
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.boxon
push.s "obj_boxpuzzle_event_slash_Step_0_gml_207_0"@39294
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
push.s "obj_boxpuzzle_event_slash_Step_0_gml_209_0"@39295
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

:[92]
push.v self.boxcount
pushi.e 1
cmp.i.v EQ
bf [95]

:[93]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [95]

:[94]
push.v self.boxon
pushi.e 0
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.boxon
push.s "obj_boxpuzzle_event_slash_Step_0_gml_220_0"@39296
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
push.s "obj_boxpuzzle_event_slash_Step_0_gml_222_0"@39297
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_boxpuzzle_event_slash_Step_0_gml_223_0"@39298
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

:[98]
push.v self.boxcount
pushi.e 2
cmp.i.v GTE
bf [100]

:[99]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [101]

:[100]
push.e 0

:[101]
bf [105]

:[102]
pushi.e 1
pop.v.i self.image_index
push.v self.groundblock
pushi.e -9
pushenv [104]

:[103]
call.i instance_destroy(argc=0)
popz.v

:[104]
popenv [103]
pushi.e 1
pop.v.i global.interact
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 379
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 25
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
b [112]

:[105]
push.v self.tilecount
pushi.e 2
cmp.i.v EQ
bf [109]

:[106]
push.v self.boxcount
pushi.e 1
cmp.i.v EQ
bf [109]

:[107]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [109]

:[108]
push.v self.boxcon
pushi.e 1
cmp.i.v EQ
b [110]

:[109]
push.e 0

:[110]
bf [112]

:[111]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.boxcon
pushi.e 2
pop.v.i global.fc
pushi.e 6
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.s "obj_boxpuzzle_event_slash_Step_0_gml_248_0"@39299
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_boxpuzzle_event_slash_Step_0_gml_249_0"@39300
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
push.s "obj_boxpuzzle_event_slash_Step_0_gml_251_0"@39301
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_boxpuzzle_event_slash_Step_0_gml_252_0"@39302
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
push.s "obj_boxpuzzle_event_slash_Step_0_gml_254_0"@39303
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_susface_ch1(argc=2)
popz.v
push.s "obj_boxpuzzle_event_slash_Step_0_gml_256_0"@39304
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

:[112]
push.v self.boxcon
pushi.e 2
cmp.i.v EQ
bf [115]

:[113]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
bf [115]

:[114]
pushi.e 3
pop.v.i self.boxcon
pushi.e 0
pop.v.i global.interact

:[115]
push.v self.boxon
pushi.e 1
cmp.i.v EQ
bf [118]

:[116]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
bf [118]

:[117]
pushi.e 2
pop.v.i self.boxon
pushi.e 0
pop.v.i global.interact

:[118]
push.v self.boxon
pushi.e 3
cmp.i.v EQ
bf [121]

:[119]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
bf [121]

:[120]
pushi.e 4
pop.v.i self.boxon
pushi.e 0
pop.v.i global.interact

:[121]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [123]

:[122]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_boxpuzzle_event_slash_Step_0_gml_295_0"@39305
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
push.s "obj_boxpuzzle_event_slash_Step_0_gml_297_0"@39306
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_boxpuzzle_event_slash_Step_0_gml_298_0"@39307
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
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

:[123]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [132]

:[124]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
bf [132]

:[125]
pushi.e 2
pop.v.i global.facing
pushi.e 3575
conv.i.v
push.v self.ral2
pushi.e -9
push.v [stacktop]self.y
push.v self.ral2
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.ral3
pushi.e 3546
conv.i.v
push.v self.sus2
pushi.e -9
push.v [stacktop]self.y
push.v self.sus2
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.sus3
push.v self.ral2
pushi.e -9
pushenv [127]

:[126]
call.i instance_destroy(argc=0)
popz.v

:[127]
popenv [126]
push.v self.sus2
pushi.e -9
pushenv [129]

:[128]
call.i instance_destroy(argc=0)
popz.v

:[129]
popenv [128]
push.v self.sus3
pushi.e -9
pushenv [131]

:[130]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e -8
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[131]
popenv [130]
pushi.e 28
pop.v.i self.con

:[132]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [140]

:[133]
pushi.e 1
pop.v.i global.interact
push.v self.sus3
pushi.e -9
push.v [stacktop]self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 20
sub.i.v
cmp.v.v LTE
bf [135]

:[134]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
b [136]

:[135]
push.e 0

:[136]
bf [140]

:[137]
push.v self.sus3
pushi.e -9
pushenv [139]

:[138]
push.d 0.334
pop.v.d self.image_speed
pushi.e -8
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 3556
pop.v.i self.sprite_index

:[139]
popenv [138]
pushi.e 29
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[140]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [144]

:[141]
push.v self.ral3
pushi.e -9
pushenv [143]

:[142]
pushi.e 3570
pop.v.i self.sprite_index

:[143]
popenv [142]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 8
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_boxpuzzle_event_slash_Step_0_gml_347_0"@39310
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
pop.v.v self.dl
pushi.e 1
push.v self.dl
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 31
pop.v.i self.con

:[144]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [149]

:[145]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
bf [149]

:[146]
push.v self.ral3
pushi.e -9
pushenv [148]

:[147]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e 3575
pop.v.i self.sprite_index
pushi.e 6
pop.v.i self.hspeed
push.d 0.25
pop.v.d self.image_speed

:[148]
popenv [147]
pushi.e 32
pop.v.i self.con

:[149]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [154]

:[150]
push.v self.ral3
pushi.e -9
push.v [stacktop]self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 20
sub.i.v
cmp.v.v GTE
bf [154]

:[151]
push.v self.ral3
pushi.e -9
pushenv [153]

:[152]
pushi.e -6
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 3572
pop.v.i self.sprite_index

:[153]
popenv [152]
pushi.e 33
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[154]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [160]

:[155]
pushi.e 1548
pushenv [157]

:[156]
pushi.e 1
pop.v.i self.event

:[157]
popenv [156]
pushi.e 35
pop.v.i self.con
pushglb.v global.plot
pushi.e 50
cmp.i.v LT
bf [159]

:[158]
pushi.e 50
pop.v.i global.plot

:[159]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.leavecon
call.i gml_Script_scr_tempsave_ch1(argc=0)
popz.v

:[160]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [163]

:[161]
call.i gml_Script_d_ex_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
bf [163]

:[162]
pushi.e 51
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1464
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.fade
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[163]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [173]

:[164]
pushi.e 1412
conv.i.v
pushi.e 200
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 1412
conv.i.v
pushi.e 370
conv.i.v
pushi.e 460
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 3575
conv.i.v
push.v self.ral2
pushi.e -9
push.v [stacktop]self.y
push.v self.ral2
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.ral3
push.v self.ral3
pushi.e -9
pushenv [166]

:[165]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[166]
popenv [165]
push.v self.ral2
pushi.e -9
pushenv [168]

:[167]
call.i instance_destroy(argc=0)
popz.v

:[168]
popenv [167]
pushi.e 3553
conv.i.v
push.v self.sus2
pushi.e -9
push.v [stacktop]self.y
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 22
sub.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.sus3
push.v self.sus3
pushi.e -9
pushenv [170]

:[169]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[170]
popenv [169]
push.v self.sus2
pushi.e -9
pushenv [172]

:[171]
call.i instance_destroy(argc=0)
popz.v

:[172]
popenv [171]
pushi.e 379
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 53
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[173]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [181]

:[174]
pushi.e 2
pop.v.i self.image_index
push.v self.groundblock
pushi.e -9
pushenv [176]

:[175]
call.i instance_destroy(argc=0)
popz.v

:[176]
popenv [175]
pushi.e 1548
pushenv [178]

:[177]
call.i instance_destroy(argc=0)
popz.v

:[178]
popenv [177]
push.v self.fade
pushi.e -9
pushenv [180]

:[179]
call.i instance_destroy(argc=0)
popz.v

:[180]
popenv [179]
pushi.e 2
pop.v.i global.facing
pushi.e 1465
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 55
pop.v.i self.con
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[181]
push.v self.con
pushi.e 56
cmp.i.v EQ
bf [end]

:[182]
push.i 231251
setowner.e
push.s "obj_boxpuzzle_event_slash_Step_0_gml_437_0"@39311
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
pop.v.v self.dl
pushi.e 1
push.v self.dl
pushi.e -9
pop.v.i [stacktop]self.side
pushi.e 1
pop.v.i global.interact
pushi.e 28
pop.v.i self.con

:[end]