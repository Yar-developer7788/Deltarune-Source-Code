.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 280
cmp.i.v GTE
bf [3]

:[2]
push.v 1351.y
pushi.e 535
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
pushi.e 4189
conv.i.v
pushi.e 602
conv.i.v
pushi.e 873
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.darksus
push.d 0.2
push.v self.darksus
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.darksus
pushi.e -9
pushenv [7]

:[6]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 720
conv.i.v
pushi.e 1116
conv.i.v
pushi.e 602
conv.i.v
pushi.e 873
conv.i.v
call.i point_distance(argc=4)
pushi.e 15
conv.i.d
div.d.v
pop.v.v self.suspeed
push.v self.suspeed
push.v self.darksus
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e 720
conv.i.v
pushi.e 1116
conv.i.v
push.v self.darksus
pushi.e -9
push.v [stacktop]self.y
push.v self.darksus
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
push.v self.darksus
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[8]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [12]

:[9]
push.v self.darksus
pushi.e -9
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]
pushi.e 4
pop.v.i self.con

:[12]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [15]

:[13]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 540
cmp.i.v GTE
bf [15]

:[14]
push.v 1351.y
pushi.e 535
cmp.i.v GT
b [16]

:[15]
push.e 0

:[16]
bf [20]

:[17]
pushi.e 4189
conv.i.v
pushi.e 720
conv.i.v
pushi.e 1116
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.darksus2
push.d 0.2
push.v self.darksus2
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.darksus2
pushi.e -9
pushenv [19]

:[18]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[19]
popenv [18]
pushi.e 643
conv.i.v
pushi.e 1348
conv.i.v
pushi.e 720
conv.i.v
pushi.e 1116
conv.i.v
call.i point_distance(argc=4)
pushi.e 15
conv.i.d
div.d.v
pop.v.v self.suspeed
push.v self.suspeed
push.v self.darksus2
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e 643
conv.i.v
pushi.e 1348
conv.i.v
push.v self.darksus2
pushi.e -9
push.v [stacktop]self.y
push.v self.darksus2
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
push.v self.darksus2
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 5
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[20]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [24]

:[21]
push.v self.darksus
pushi.e -9
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]
pushi.e 6
pop.v.i self.con

:[24]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [28]

:[25]
push.v self.s
pushi.e -9
pushenv [27]

:[26]
pushi.e 0
pop.v.i self.hspeed

:[27]
popenv [26]
pushi.e 12
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[28]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i global.fc
pushi.e 7
pop.v.i global.fe
pushi.e 30
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_dustpile_susie_slash_Step_0_gml_57_0"@40454
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
pushi.e 14
pop.v.i self.con

:[30]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 15
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[35]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [37]

:[36]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[37]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [41]

:[38]
push.v self.s
pushi.e -9
pushenv [40]

:[39]
pushi.e 3546
pop.v.i self.sprite_index

:[40]
popenv [39]
pushi.e 6
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_dustpile_susie_slash_Step_0_gml_78_0"@40455
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dustpile_susie_slash_Step_0_gml_79_0"@40456
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dustpile_susie_slash_Step_0_gml_80_0"@40457
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dustpile_susie_slash_Step_0_gml_81_0"@40458
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dustpile_susie_slash_Step_0_gml_82_0"@40459
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
pushi.e 17
pop.v.i self.con

:[41]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [43]

:[42]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [48]

:[45]
push.v self.s
pushi.e -9
pushenv [47]

:[46]
pushi.e 3549
pop.v.i self.sprite_index

:[47]
popenv [46]
pushi.e 18
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[48]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [52]

:[49]
push.v self.s
pushi.e -9
pushenv [51]

:[50]
pushi.e 3556
pop.v.i self.sprite_index

:[51]
popenv [50]
pushi.e 20
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[52]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [54]

:[53]
pushi.e 6
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_dustpile_susie_slash_Step_0_gml_104_0"@40460
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

:[54]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
pushi.e 23
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[59]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [63]

:[60]
push.v self.s
pushi.e -9
pushenv [62]

:[61]
pushi.e 3546
pop.v.i self.sprite_index

:[62]
popenv [61]
pushi.e 7
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_dustpile_susie_slash_Step_0_gml_119_0"@40461
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
pushi.e 25
pop.v.i self.con

:[63]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [65]

:[64]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [70]

:[67]
push.v self.s
pushi.e -9
pushenv [69]

:[68]
pushi.e -4
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[69]
popenv [68]
pushi.e 26
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[70]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [72]

:[71]
push.v self.s
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.thisremx
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.thisremy
push.v self.partysus
pushi.e -9
push.v [stacktop]self.y
push.v self.partysus
pushi.e -9
push.v [stacktop]self.x
push.v self.s
pushi.e -9
push.v [stacktop]self.y
push.v self.s
pushi.e -9
push.v [stacktop]self.x
call.i point_distance(argc=4)
pushi.e 10
conv.i.d
div.d.v
push.v self.s
pushi.e -9
pop.v.v [stacktop]self.speed
push.v self.partysus
pushi.e -9
push.v [stacktop]self.y
push.v self.partysus
pushi.e -9
push.v [stacktop]self.x
push.v self.s
pushi.e -9
push.v [stacktop]self.y
push.v self.s
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
push.v self.s
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 28
pop.v.i self.con
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[72]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [78]

:[73]
push.v self.s
pushi.e -9
pushenv [75]

:[74]
call.i instance_destroy(argc=0)
popz.v

:[75]
popenv [74]
push.v self.partysus
pushi.e -9
pushenv [77]

:[76]
pushi.e 1
pop.v.i self.visible

:[77]
popenv [76]
pushi.e 30
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[78]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [80]

:[79]
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_dustpile_susie_slash_Step_0_gml_156_0"@40464
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar_ch1(argc=1)
popz.v
pushi.e 32
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[80]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [82]

:[81]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [83]

:[82]
push.e 0

:[83]
bf [85]

:[84]
push.v self.y
pushi.e 200
sub.i.v
pop.v.v self.y
pushi.e 33
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.speedtimer

:[85]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [87]

:[86]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [88]

:[87]
push.e 0

:[88]
bf [96]

:[89]
push.v self.speedtimer
pushi.e 1
add.i.v
pop.v.v self.speedtimer
push.v 1351.x
pushi.e 560
cmp.i.v LT
bf [91]

:[90]
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 202
pop.v.v [array]self.flag
pushi.e 1
pop.v.i global.interact
pushi.e 34
pop.v.i self.con
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_dustpile_susie_slash_Step_0_gml_182_0"@40465
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

:[91]
push.v 1351.x
pushi.e 1760
cmp.i.v GT
bf [96]

:[92]
pushi.e 1
pop.v.i global.interact
pushi.e 35
pop.v.i self.con
pushi.e 1
pop.v.i global.fc
pushi.e 30
pop.v.i global.typer
pushi.e 0
pop.v.i global.fe
push.v self.speedtimer
pushi.e 80
cmp.i.v LT
bf [94]

:[93]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 202
pop.v.v [array]self.flag
push.i 231251
setowner.e
push.s "obj_dustpile_susie_slash_Step_0_gml_197_0"@40466
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [95]

:[94]
push.s "obj_dustpile_susie_slash_Step_0_gml_201_0"@40467
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[95]
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[96]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [98]

:[97]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [105]

:[100]
push.v self.partysus
pushi.e -9
pushenv [102]

:[101]
pushi.e 0
pop.v.i self.visible

:[102]
popenv [101]
pushi.e 3549
conv.i.v
push.v self.partysus
pushi.e -9
push.v [stacktop]self.y
push.v self.partysus
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.news
push.v self.news
pushi.e -9
pushenv [104]

:[103]
pushi.e 14
conv.i.v
pushi.e 660
conv.i.v
pushi.e 940
conv.i.v
call.i move_towards_point(argc=3)
popz.v
push.d 0.334
pop.v.d self.image_speed

:[104]
popenv [103]
pushi.e 39
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[105]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [107]

:[106]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [108]

:[107]
push.e 0

:[108]
bf [114]

:[109]
push.v self.partysus
pushi.e -9
pushenv [111]

:[110]
pushi.e 0
pop.v.i self.visible

:[111]
popenv [110]
pushi.e 3549
conv.i.v
push.v self.partysus
pushi.e -9
push.v [stacktop]self.y
push.v self.partysus
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.news
push.v self.news
pushi.e -9
pushenv [113]

:[112]
pushi.e 14
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[113]
popenv [112]
pushi.e 39
pop.v.i self.con
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[114]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [end]

:[115]
call.i gml_Script_scr_losechar_ch1(argc=0)
popz.v
pushi.e 0
pop.v.i global.facing
pushglb.v global.plot
pushi.e 14
cmp.i.v LT
bf [117]

:[116]
pushi.e 14
pop.v.i global.plot

:[117]
pushi.e 0
pop.v.i global.interact
push.v self.news
pushi.e -9
pushenv [119]

:[118]
call.i instance_destroy(argc=0)
popz.v

:[119]
popenv [118]
pushi.e 41
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v

:[end]