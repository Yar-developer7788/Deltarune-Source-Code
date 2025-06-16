.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.con
pushi.e 40
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [89]

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i global.interact

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [12]

:[7]
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
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[11]
popenv [10]
pushi.e 3
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[12]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [14]

:[13]
pushi.e 10
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_darkdoor_slash_Step_0_gml_21_0"@14930
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_darkdoor_slash_Step_0_gml_22_0"@14932
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
push.d 4.5
pop.v.d self.con

:[14]
push.v self.con
push.d 4.5
cmp.d.v EQ
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
bf [19]

:[18]
pushi.e 377
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i self.image_index
push.d 5.5
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[19]
push.v self.con
push.d 6.5
cmp.d.v EQ
bf [21]

:[20]
push.i 231459
setowner.e
push.s "creepydoor.ogg"@14934
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i self.open
pushi.e 6
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[21]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [27]

:[22]
push.v self.s
pushi.e -9
pushenv [24]

:[23]
push.d 0.5
pop.v.d self.vspeed
push.d 0.1
pop.v.d self.image_speed

:[24]
popenv [23]
push.v self.k
pushi.e -9
pushenv [26]

:[25]
push.d 0.5
pop.v.d self.vspeed
push.d 0.1
pop.v.d self.image_speed

:[26]
popenv [25]
pushi.e 8
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[27]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [33]

:[28]
push.v self.s
pushi.e -9
pushenv [30]

:[29]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[30]
popenv [29]
push.v self.k
pushi.e -9
pushenv [32]

:[31]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[32]
popenv [31]
pushi.e 10
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[33]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [37]

:[34]
pushi.e 5
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_darkdoor_slash_Step_0_gml_72_0"@14935
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_darkdoor_slash_Step_0_gml_73_0"@14936
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_darkdoor_slash_Step_0_gml_74_0"@14938
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
push.v self.s
pushi.e -9
pushenv [36]

:[35]
pushi.e 3535
pop.v.i self.sprite_index

:[36]
popenv [35]
pushi.e 12
pop.v.i self.con

:[37]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [39]

:[38]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [44]

:[41]
push.v self.s
pushi.e -9
pushenv [43]

:[42]
pushi.e 3542
pop.v.i self.sprite_index

:[43]
popenv [42]
pushi.e 13
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[44]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [48]

:[45]
push.v self.s
pushi.e -9
pushenv [47]

:[46]
pushi.e 3535
pop.v.i self.sprite_index

:[47]
popenv [46]
push.i 231251
setowner.e
push.s "obj_darkdoor_slash_Step_0_gml_90_0"@14940
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

:[48]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [55]

:[52]
push.v self.k
pushi.e -9
pushenv [54]

:[53]
push.d 0.5
pop.v.d self.vspeed
push.d 0.1
pop.v.d self.image_speed

:[54]
popenv [53]
push.d 14.5
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[55]
push.v self.con
push.d 15.5
cmp.d.v EQ
bf [59]

:[56]
push.v self.k
pushi.e -9
pushenv [58]

:[57]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[58]
popenv [57]
pushi.e 16
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[59]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [63]

:[60]
push.v self.s
pushi.e -9
pushenv [62]

:[61]
pushi.e 3535
pop.v.i self.sprite_index

:[62]
popenv [61]
push.i 231251
setowner.e
push.s "obj_darkdoor_slash_Step_0_gml_117_0"@14942
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

:[63]
push.v self.con
pushi.e 18
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
pushi.e 3542
pop.v.i self.sprite_index

:[69]
popenv [68]
pushi.e 19
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[70]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [74]

:[71]
push.v self.s
pushi.e -9
pushenv [73]

:[72]
pushi.e 3535
pop.v.i self.sprite_index

:[73]
popenv [72]
push.i 231251
setowner.e
push.s "obj_darkdoor_slash_Step_0_gml_132_0"@14944
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
pushi.e 21
pop.v.i self.con

:[74]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [76]

:[75]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [77]

:[76]
push.e 0

:[77]
bf [83]

:[78]
push.v self.s
pushi.e -9
pushenv [80]

:[79]
pushi.e 3542
pop.v.i self.sprite_index
push.d -0.5
pop.v.d self.vspeed
push.d 0.1
pop.v.d self.image_speed

:[80]
popenv [79]
push.v self.k
pushi.e -9
pushenv [82]

:[81]
push.d -0.5
pop.v.d self.vspeed
push.d 0.1
pop.v.d self.image_speed

:[82]
popenv [81]
pushi.e 22
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[83]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [87]

:[84]
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
pushenv [86]

:[85]
push.d 0.03
pop.v.d self.fadespeed

:[86]
popenv [85]
pushi.e 24
pop.v.i self.con
pushi.e 34
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[87]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [89]

:[88]
pushi.e 26
pop.v.i self.con
pushi.e 5
pop.v.i global.plot
pushi.e 1466
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 313
conv.i.v
call.i room_goto(argc=1)
popz.v

:[89]
push.v self.con
pushi.e 40
cmp.i.v GTE
bf [end]

:[90]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [96]

:[91]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
push.i 231459
setowner.e
push.s "mus_birdnoise.ogg"@14946
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.7
conv.d.v
push.d 0.6
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 1
pop.v.i global.interact
pushi.e 3536
conv.i.v
pushi.e 92
conv.i.v
pushi.e 479
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.s
push.v self.s
pushi.e -9
pushenv [93]

:[92]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[93]
popenv [92]
pushi.e 1351
pushenv [95]

:[94]
push.v 1434.x
pop.v.v self.x
push.v 1434.y
pop.v.v self.y

:[95]
popenv [94]
pushi.e 41
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[96]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [98]

:[97]
pushi.e 10
pop.v.i global.typer
pushi.e 1
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 29
pop.v.v [array]self.flag
push.i 231251
setowner.e
push.s "obj_darkdoor_slash_Step_0_gml_194_0"@14947
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_darkdoor_slash_Step_0_gml_195_0"@14949
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
pushi.e 43
pop.v.i self.con

:[98]
push.v self.con
pushi.e 43
cmp.i.v EQ
bf [100]

:[99]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [101]

:[100]
push.e 0

:[101]
bf [109]

:[102]
pushi.e 4209
conv.i.v
push.v 1351.y
push.v 1351.x
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.k
push.v self.k
pushi.e -9
pushenv [104]

:[103]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[104]
popenv [103]
pushi.e 1351
pushenv [106]

:[105]
pushi.e 0
pop.v.i self.visible

:[106]
popenv [105]
push.v self.s
pushi.e -9
pushenv [108]

:[107]
pushi.e 3539
pop.v.i self.sprite_index

:[108]
popenv [107]
pushi.e 44
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[109]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [111]

:[110]
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_darkdoor_slash_Step_0_gml_215_0"@14951
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 50
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[111]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [113]

:[112]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [114]

:[113]
push.e 0

:[114]
bf [122]

:[115]
push.v self.s
pushi.e -9
pushenv [117]

:[116]
pushi.e -2
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed
pushi.e 3535
pop.v.i self.sprite_index

:[117]
popenv [116]
push.v self.k
pushi.e -9
pushenv [119]

:[118]
pushi.e -2
pop.v.i self.hspeed
push.d 0.2
pop.v.d self.image_speed

:[119]
popenv [118]
pushi.e 1351
pushenv [121]

:[120]
pushi.e -2
pop.v.i self.hspeed

:[121]
popenv [120]
pushi.e 51
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[122]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [134]

:[123]
push.v self.s
pushi.e -9
pushenv [125]

:[124]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[125]
popenv [124]
push.v self.k
pushi.e -9
pushenv [127]

:[126]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[127]
popenv [126]
pushi.e 1351
pushenv [129]

:[128]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[129]
popenv [128]
push.v self.s
pushi.e -9
pushenv [131]

:[130]
pushi.e 3542
pop.v.i self.sprite_index

:[131]
popenv [130]
push.v self.k
pushi.e -9
pushenv [133]

:[132]
pushi.e 4212
pop.v.i self.sprite_index

:[133]
popenv [132]
push.d 51.1
pop.v.d self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[134]
push.v self.con
push.d 52.1
cmp.d.v EQ
bf [136]

:[135]
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_darkdoor_slash_Step_0_gml_252_0"@14953
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
push.d 52.2
pop.v.d self.con

:[136]
push.v self.con
push.d 52.2
cmp.d.v EQ
bf [138]

:[137]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [139]

:[138]
push.e 0

:[139]
bf [141]

:[140]
pushi.e 53
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[141]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [147]

:[142]
push.v self.s
pushi.e -9
pushenv [144]

:[143]
pushi.e 3540
pop.v.i self.sprite_index

:[144]
popenv [143]
push.v self.k
pushi.e -9
pushenv [146]

:[145]
pushi.e 4209
pop.v.i self.sprite_index

:[146]
popenv [145]
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_darkdoor_slash_Step_0_gml_268_0"@14955
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_darkdoor_slash_Step_0_gml_269_0"@14957
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_darkdoor_slash_Step_0_gml_270_0"@14958
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
pushi.e 55
pop.v.i self.con

:[147]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [149]

:[148]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [150]

:[149]
push.e 0

:[150]
bf [156]

:[151]
push.v self.k
pushi.e -9
pushenv [153]

:[152]
pushi.e 4210
pop.v.i self.sprite_index

:[153]
popenv [152]
push.v self.s
pushi.e -9
pushenv [155]

:[154]
pushi.e 3545
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed
push.d 0.5
pop.v.d self.vspeed

:[155]
popenv [154]
pushi.e 56
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[156]
push.v self.con
pushi.e 57
cmp.i.v EQ
bf [160]

:[157]
push.v self.s
pushi.e -9
pushenv [159]

:[158]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[159]
popenv [158]
pushi.e 58
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[160]
push.v self.con
pushi.e 59
cmp.i.v EQ
bf [164]

:[161]
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_darkdoor_slash_Step_0_gml_298_0"@14960
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_darkdoor_slash_Step_0_gml_299_0"@14961
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_darkdoor_slash_Step_0_gml_300_0"@14962
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 60
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
pushenv [163]

:[162]
pushi.e 0
pop.v.i self.side

:[163]
popenv [162]

:[164]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [166]

:[165]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [167]

:[166]
push.e 0

:[167]
bf [171]

:[168]
push.v self.s
pushi.e -9
pushenv [170]

:[169]
pushi.e 3540
pop.v.i self.sprite_index

:[170]
popenv [169]
pushi.e 61
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
pushi.e 62
cmp.i.v EQ
bf [177]

:[172]
push.v self.s
pushi.e -9
pushenv [174]

:[173]
pushi.e -2
pop.v.i self.vspeed
push.d 0.75
pop.v.d self.hspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 3542
pop.v.i self.sprite_index

:[174]
popenv [173]
push.v self.k
pushi.e -9
pushenv [176]

:[175]
pushi.e 4209
pop.v.i self.sprite_index

:[176]
popenv [175]
pushi.e 63
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[177]
push.v self.con
pushi.e 64
cmp.i.v EQ
bf [181]

:[178]
push.v self.s
pushi.e -9
pushenv [180]

:[179]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v
pushi.e 3540
pop.v.i self.sprite_index

:[180]
popenv [179]
pushi.e 65
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[181]
push.v self.con
pushi.e 66
cmp.i.v EQ
bf [187]

:[182]
push.v self.k
pushi.e -9
pushenv [184]

:[183]
pushi.e 0
pop.v.i self.visible

:[184]
popenv [183]
push.v self.s
pushi.e -9
pushenv [186]

:[185]
pushi.e 3528
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[186]
popenv [185]
pushi.e 67
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[187]
push.v self.con
pushi.e 68
cmp.i.v EQ
bf [191]

:[188]
push.v self.s
pushi.e -9
pushenv [190]

:[189]
pushi.e 0
pop.v.i self.image_speed

:[190]
popenv [189]
pushi.e 69
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[191]
push.v self.con
pushi.e 70
cmp.i.v EQ
bf [199]

:[192]
pushi.e 8
pop.v.i global.fe
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.flag
push.i 231251
setowner.e
push.s "obj_darkdoor_slash_Step_0_gml_363_0"@14964
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
pushi.e 1331
pushenv [194]

:[193]
pushi.e 0
pop.v.i self.skippable

:[194]
popenv [193]
push.v self.d
pushi.e -9
pushenv [196]

:[195]
pushi.e 0
pop.v.i self.skippable

:[196]
popenv [195]
push.v self.d
pushi.e -9
pushenv [198]

:[197]
pushi.e 0
pop.v.i self.side

:[198]
popenv [197]
push.d 70.1
pop.v.d self.con

:[199]
push.v self.con
push.d 70.1
cmp.d.v EQ
bf [201]

:[200]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [202]

:[201]
push.e 0

:[202]
bf [204]

:[203]
push.d 69.2
pop.v.d self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[204]
push.v self.con
push.d 70.2
cmp.d.v EQ
bf [206]

:[205]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [207]

:[206]
push.e 0

:[207]
bf [211]

:[208]
push.v self.s
pushi.e -9
pushenv [210]

:[209]
push.d -0.24
pop.v.d self.image_speed

:[210]
popenv [209]
push.d 69.3
pop.v.d self.con
pushi.e 16
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[211]
push.v self.con
push.d 70.3
cmp.d.v EQ
bf [215]

:[212]
push.v self.s
pushi.e -9
pushenv [214]

:[213]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[214]
popenv [213]
pushi.e 72
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[215]
push.v self.con
pushi.e 73
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
bf [224]

:[219]
push.v self.k
pushi.e -9
pushenv [221]

:[220]
pushi.e 1
pop.v.i self.visible
pushi.e 4210
pop.v.i self.sprite_index

:[221]
popenv [220]
push.v self.s
pushi.e -9
pushenv [223]

:[222]
pushi.e 3543
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.vspeed

:[223]
popenv [222]
pushi.e 74
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[224]
push.v self.con
pushi.e 75
cmp.i.v EQ
bf [end]

:[225]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.flag
pushglb.v global.plot
pushi.e 251
cmp.i.v LT
bf [227]

:[226]
pushi.e 251
pop.v.i global.plot

:[227]
pushi.e 76
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 1351
pushenv [229]

:[228]
pushi.e 1
pop.v.i self.visible

:[229]
popenv [228]
push.v self.k
pushi.e -9
pushenv [231]

:[230]
call.i instance_destroy(argc=0)
popz.v

:[231]
popenv [230]

:[end]