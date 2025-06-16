.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [20]

:[1]
pushi.e 25
conv.i.v
call.i gml_Script_scr_encountersetup_ch1(argc=1)
popz.v
pushi.e -5
pushi.e 0
push.v [array]self.monstermakex
pop.v.v self.x
pushi.e -5
pushi.e 0
push.v [array]self.monstermakey
pushi.e 100
add.i.v
pop.v.v self.y
pushi.e 1351
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.visible

:[3]
popenv [2]
pushi.e 1493
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.visible

:[5]
popenv [4]
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [14]

:[7]
push.i 166199
setowner.e
pushi.e 4202
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakey
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.heromakex
pushi.e 100
sub.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.c
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pushenv [9]

:[8]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e 2
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[9]
popenv [8]
push.v self.quick
pushi.e 1
cmp.i.v EQ
bf [13]

:[10]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pushenv [12]

:[11]
push.v self.x
pushi.e 1
add.i.v
pop.v.v self.x
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e 5
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[12]
popenv [11]

:[13]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[14]
pushi.e -1
pushi.e 0
push.v [array]self.c
pop.v.v self.k
pushi.e -1
pushi.e 1
push.v [array]self.c
pop.v.v self.s
push.v self.s
pushi.e -9
pushenv [16]

:[15]
pushi.e 3549
pop.v.i self.sprite_index

:[16]
popenv [15]
pushi.e -1
pushi.e 2
push.v [array]self.c
pop.v.v self.r
push.v self.r
pushi.e -9
pushenv [18]

:[17]
pushi.e 3575
pop.v.i self.sprite_index

:[18]
popenv [17]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 83
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.v self.quick
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 33
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[20]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i global.interact

:[22]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [30]

:[23]
pushi.e 0
pop.v.i self.i

:[24]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [28]

:[25]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pushenv [27]

:[26]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[27]
popenv [26]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [24]

:[28]
pushi.e 4
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.v self.quick
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 6
pop.v.i self.con
pushi.e -10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[30]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [32]

:[31]
pushi.e 464
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 35
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_jokerbattleevent_slash_Step_0_gml_59_0"@38416
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_60_0"@38417
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_ralface_ch1(argc=2)
popz.v
push.s "obj_jokerbattleevent_slash_Step_0_gml_62_0"@38418
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
call.i gml_Script_scr_noface_ch1(argc=1)
popz.v
push.s "obj_jokerbattleevent_slash_Step_0_gml_64_0"@38419
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
pushi.e 6
pop.v.i self.con

:[32]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [34]

:[33]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
push.d 0.5
pop.v.d self.image_speed
pushi.e 463
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 9
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[37]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [39]

:[38]
pushi.e 398
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i self.bulcon
pushi.e 2
pop.v.i self.smax
pushi.e 11
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[39]
push.v self.bulcon
pushi.e 1
cmp.i.v EQ
bf [48]

:[40]
pushi.e 0
pop.v.i self.i

:[41]
push.v self.i
push.v self.smax
cmp.v.v LT
bf [47]

:[42]
push.i 175184
setowner.e
pushi.e 3947
conv.i.v
push.v self.i
neg.v
pushi.e 100
mul.i.v
pushi.e 40
sub.i.v
push.v self.s
pushi.e -9
push.v [stacktop]self.x
pushi.e 70
add.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.sbul
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sbul
pushi.e -9
pushenv [44]

:[43]
pushi.e 24
pop.v.i self.vspeed

:[44]
popenv [43]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sbul
pushi.e -9
pushenv [46]

:[45]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.image_angle

:[46]
popenv [45]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [41]

:[47]
pushi.e 2
pop.v.i self.bulcon

:[48]
push.v self.bulcon
pushi.e 2
cmp.i.v EQ
bf [60]

:[49]
pushi.e 0
pop.v.i self.below
pushi.e 0
pop.v.i self.i

:[50]
push.v self.i
push.v self.smax
cmp.v.v LT
bf [58]

:[51]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sbul
pushi.e -9
pushenv [55]

:[52]
push.v self.image_angle
pushi.e 24
add.i.v
pop.v.v self.image_angle
call.i gml_Script_scr_afterimage_ch1(argc=0)
pop.v.v self.aft
push.v self.aft
pushi.e -9
pushenv [54]

:[53]
push.d 0.5
pop.v.d self.image_alpha

:[54]
popenv [53]

:[55]
popenv [52]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.sbul
pushi.e -9
push.v [stacktop]self.y
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 580
add.i.v
cmp.v.v GTE
bf [57]

:[56]
push.v self.below
pushi.e 1
add.i.v
pop.v.v self.below

:[57]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [50]

:[58]
push.v self.below
push.v self.smax
cmp.v.v GTE
bf [60]

:[59]
pushi.e 3
pop.v.i self.bulcon

:[60]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [72]

:[61]
push.v self.s
pushi.e -9
pushenv [63]

:[62]
pushi.e 3560
pop.v.i self.sprite_index

:[63]
popenv [62]
push.v self.r
pushi.e -9
pushenv [65]

:[64]
pushi.e 3866
pop.v.i self.sprite_index

:[65]
popenv [64]
pushi.e 0
pop.v.i self.i

:[66]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [70]

:[67]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pushenv [69]

:[68]
pushi.e -10
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.friction

:[69]
popenv [68]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [66]

:[70]
pushi.e 13
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.v self.quick
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
pushi.e 22
pop.v.i self.con
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v

:[72]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [78]

:[73]
pushi.e 0
pop.v.i self.image_speed
push.v self.s
pushi.e -9
pushenv [75]

:[74]
pushi.e 3551
pop.v.i self.sprite_index

:[75]
popenv [74]
push.v self.r
pushi.e -9
pushenv [77]

:[76]
pushi.e 3575
pop.v.i self.sprite_index

:[77]
popenv [76]
pushi.e 30
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
pushi.e 35
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_jokerbattleevent_slash_Step_0_gml_140_0"@38422
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
push.s "obj_jokerbattleevent_slash_Step_0_gml_142_0"@38423
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_143_0"@38424
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
push.d 15.1
pop.v.d self.con

:[78]
push.v self.con
push.d 15.1
cmp.d.v EQ
bf [80]

:[79]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [81]

:[80]
push.e 0

:[81]
bf [92]

:[82]
push.v self.s
pushi.e -9
pushenv [84]

:[83]
pushi.e 3844
pop.v.i self.sprite_index

:[84]
popenv [83]
push.v self.r
pushi.e -9
pushenv [86]

:[85]
pushi.e 3861
pop.v.i self.sprite_index

:[86]
popenv [85]
push.v self.k
pushi.e -9
pushenv [88]

:[87]
pushi.e 3824
pop.v.i self.sprite_index

:[88]
popenv [87]
pushi.e 0
pop.v.i self.i

:[89]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [91]

:[90]
push.i 133643
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.i [stacktop]self.image_index
push.i 133655
setowner.e
push.d 0.25
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.c
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [89]

:[91]
pushi.e 16
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 443
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[92]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [99]

:[93]
push.v self.s
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 5
cmp.i.v GTE
bf [95]

:[94]
pushi.e 0
push.v self.s
pushi.e -9
pop.v.i [stacktop]self.image_speed

:[95]
push.v self.k
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 6
cmp.i.v GTE
bf [97]

:[96]
pushi.e 0
push.v self.k
pushi.e -9
pop.v.i [stacktop]self.image_speed

:[97]
push.v self.r
pushi.e -9
push.v [stacktop]self.image_index
pushi.e 5
cmp.i.v GTE
bf [99]

:[98]
pushi.e 0
push.v self.r
pushi.e -9
pop.v.i [stacktop]self.image_speed

:[99]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [101]

:[100]
pushi.e 3
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_jokerbattleevent_slash_Step_0_gml_175_0"@38425
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
pushi.e 18
pop.v.i self.con

:[101]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [103]

:[102]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
pushi.e 463
conv.i.v
call.i gml_Script_snd_loop_ch1(argc=1)
pop.v.v self.jlaugh
push.d 0.25
pop.v.d self.image_speed
pushi.e 19
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[106]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [108]

:[107]
pushi.e 35
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_jokerbattleevent_slash_Step_0_gml_192_0"@38427
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_193_0"@38428
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 21
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
pushi.e 21
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
bf [113]

:[112]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
push.v self.jlaugh
call.i gml_Script_snd_stop_ch1(argc=1)
popz.v
pushi.e 22
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[113]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [131]

:[114]
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
pushenv [116]

:[115]
call.i gml_Script_scr_caterpillar_interpolate_ch1(argc=0)
popz.v

:[116]
popenv [115]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pushenv [118]

:[117]
call.i gml_Script_scr_caterpillar_interpolate_ch1(argc=0)
popz.v

:[118]
popenv [117]
pushi.e 1
conv.i.v
call.i gml_Script_scr_caterpillar_facing_ch1(argc=1)
popz.v
pushi.e 1351
pushenv [120]

:[119]
pushi.e 1
pop.v.i self.visible

:[120]
popenv [119]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [122]

:[121]
pushi.e 1
pop.v.i self.visible

:[122]
popenv [121]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
pushenv [124]

:[123]
pushi.e 1
pop.v.i self.visible

:[124]
popenv [123]
push.v self.k
pushi.e -9
pushenv [126]

:[125]
pushi.e 0
pop.v.i self.visible

:[126]
popenv [125]
push.v self.r
pushi.e -9
pushenv [128]

:[127]
pushi.e 0
pop.v.i self.visible

:[128]
popenv [127]
push.v self.s
pushi.e -9
pushenv [130]

:[129]
pushi.e 0
pop.v.i self.visible

:[130]
popenv [129]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.flag
push.i 232336
setowner.e
push.s "joker.ogg"@38429
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.batmusic
pushi.e 25
pop.v.i global.encounterno
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
pushi.e 25
pop.v.i self.con
pushi.e 0
pop.v.i self.bultimer
pushi.e 10
pop.v.i self.bulcon

:[131]
push.v self.bulcon
pushi.e 10
cmp.i.v EQ
bf [136]

:[132]
push.d 0.5
pop.v.d self.image_speed
push.v self.bultimer
pushi.e 1
add.i.v
pop.v.v self.bultimer
call.i gml_Script_scr_afterimage_ch1(argc=0)
pop.v.v self.aft
push.v self.aft
pushi.e -9
pushenv [134]

:[133]
push.d 0.5
pop.v.d self.image_alpha

:[134]
popenv [133]
push.v self.y
pushi.e 16
sub.i.v
pop.v.v self.y
push.v self.x
pushi.e 5
add.i.v
pop.v.v self.x
push.v self.bultimer
pushi.e 1
add.i.v
pop.v.v self.bultimer
push.v self.bultimer
pushi.e 10
cmp.i.v GTE
bf [136]

:[135]
pushi.e 11
pop.v.i self.bulcon

:[136]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [145]

:[137]
pushi.e 1517
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [145]

:[138]
pushi.e 0
pop.v.i self.visible
pushi.e 1458
pushenv [140]

:[139]
pushi.e 1
pop.v.i self.on

:[140]
popenv [139]
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [144]

:[141]
pushi.e 1458
pushenv [143]

:[142]
pushi.e 0
pop.v.i self.on

:[143]
popenv [142]

:[144]
pushi.e 28
pop.v.i self.con

:[145]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [150]

:[146]
pushi.e 1517
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [150]

:[147]
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v NEQ
bf [149]

:[148]
push.i 231204
setowner.e
pushi.e 7
conv.i.v
pushi.e -5
pushi.e 241
pop.v.v [array]self.flag

:[149]
pushi.e 29
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[150]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [160]

:[151]
pushi.e 1493
pushenv [154]

:[152]
push.v self.lsprite
pushi.e 3549
cmp.i.v EQ
bf [154]

:[153]
pushi.e 3551
pop.v.i self.lsprite
pushi.e 3551
pop.v.i self.sprite_index

:[154]
popenv [152]
push.i 231459
setowner.e
push.s "prejoker.ogg"@38431
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.75
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
pushi.e 1592
pushenv [156]

:[155]
pushi.e 1
pop.v.i self.fade
pushi.e 0
pop.v.i self.dancelv
pushi.e 1
pop.v.i self.floatsinerspeed
pushi.e 0
pop.v.i self.condition

:[156]
popenv [155]
pushi.e 1517
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [160]

:[157]
pushi.e 35
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_jokerbattleevent_slash_Step_0_gml_294_0"@38434
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_295_0"@38435
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_296_0"@38436
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_297_0"@38437
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_298_0"@38438
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_299_0"@38439
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_300_0"@38440
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_301_0"@38441
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_302_0"@38442
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_303_0"@38443
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 7
cmp.i.v EQ
bf [159]

:[158]
push.s "obj_jokerbattleevent_slash_Step_0_gml_307_0"@38444
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_308_0"@38445
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_309_0"@38446
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_310_0"@38447
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_311_0"@38448
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_312_0"@38449
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_313_0"@38450
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_314_0"@38451
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_315_0"@38452
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_jokerbattleevent_slash_Step_0_gml_316_0"@38453
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg

:[159]
pushi.e 31
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[160]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [162]

:[161]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [163]

:[162]
push.e 0

:[163]
bf [167]

:[164]
pushi.e 1592
pushenv [166]

:[165]
pushi.e 5
pop.v.i self.condition
pushi.e 0
pop.v.i self.timer

:[166]
popenv [165]
pushi.e 32
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[167]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [169]

:[168]
pushi.e 34
pop.v.i self.con
pushi.e 463
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 35
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 13
conv.i.v
call.i gml_Script_scr_keyitemget_ch1(argc=1)
popz.v
push.i 231251
setowner.e
push.s "obj_jokerbattleevent_slash_Step_0_gml_362_0"@38454
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

:[169]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [171]

:[170]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [172]

:[171]
push.e 0

:[172]
bf [182]

:[173]
pushi.e -5
pushi.e 241
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [178]

:[174]
pushi.e 7
conv.i.v
call.i gml_Script_scr_weaponget_ch1(argc=1)
popz.v
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [176]

:[175]
push.s "obj_jokerbattleevent_slash_Step_0_gml_344_0"@38455
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [177]

:[176]
push.s "obj_jokerbattleevent_slash_Step_0_gml_348_0"@38456
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 242
pop.v.v [array]self.flag

:[177]
b [181]

:[178]
pushi.e 7
conv.i.v
call.i gml_Script_scr_armorget_ch1(argc=1)
popz.v
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [180]

:[179]
push.s "obj_jokerbattleevent_slash_Step_0_gml_357_0"@38457
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [181]

:[180]
push.s "obj_jokerbattleevent_slash_Step_0_gml_361_0"@38458
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 242
pop.v.v [array]self.flag

:[181]
pushi.e 35
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[182]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [184]

:[183]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [185]

:[184]
push.e 0

:[185]
bf [187]

:[186]
pushi.e 1464
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.fade
push.d 0.02
push.v self.fade
pushi.e -9
pop.v.d [stacktop]self.fadespeed
pushi.e 36
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[187]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [end]

:[188]
pushi.e 2
pop.v.i global.entrance
pushi.e 3
pop.v.i global.interact
pushi.e 3
pop.v.i global.facing
pushi.e 1466
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 392
conv.i.v
call.i room_goto(argc=1)
popz.v
pushi.e 38
pop.v.i self.con

:[end]