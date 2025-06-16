.localvar 2 arguments
.localvar 173 is_valid 20044
.localvar 9635 error_message 20045

:[0]
push.v self.con
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.con
pushi.e 50
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [68]

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1330
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [11]

:[8]
push.v self.t
pushi.e -9
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed
pushi.e -2
pop.v.i self.vspeed
pushi.e 3464
pop.v.i self.sprite_index

:[10]
popenv [9]
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 2
pop.v.i self.con

:[11]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [15]

:[12]
push.v self.t
pushi.e -9
pushenv [14]

:[13]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.vspeed

:[14]
popenv [13]
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 4
pop.v.i self.con

:[15]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [21]

:[16]
push.v self.t
pushi.e -9
pushenv [18]

:[17]
push.d 0.25
pop.v.d self.image_speed
pushi.e 3465
pop.v.i self.sprite_index

:[18]
popenv [17]
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 6
pop.v.i self.con
push.v self.wallwindow
pushi.e -9
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.image_index

:[20]
popenv [19]
pushi.e 369
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[21]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [25]

:[22]
push.v self.t
pushi.e -9
pushenv [24]

:[23]
pushi.e 0
pop.v.i self.image_speed

:[24]
popenv [23]
pushi.e 8
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[25]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [29]

:[26]
push.v self.t
pushi.e -9
pushenv [28]

:[27]
pushi.e 3462
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 2
pop.v.i self.vspeed

:[28]
popenv [27]
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 10
pop.v.i self.con

:[29]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [33]

:[30]
push.v self.t
pushi.e -9
pushenv [32]

:[31]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.vspeed

:[32]
popenv [31]
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 12
pop.v.i self.con

:[33]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [37]

:[34]
push.v self.t
pushi.e -9
pushenv [36]

:[35]
pushi.e 3468
pop.v.i self.sprite_index

:[36]
popenv [35]
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 14
pop.v.i self.con

:[37]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [41]

:[38]
pushi.e 0
pop.v.i global.fe
push.v self.t
pushi.e -9
pushenv [40]

:[39]
push.d 0.25
pop.v.d self.image_speed

:[40]
popenv [39]
push.i 231251
setowner.e
push.s "obj_krisroom_slash_Step_0_gml_92_0"@38374
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
pushi.e 20
pop.v.i self.con

:[41]
push.v self.con
pushi.e 20
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
push.v self.t
pushi.e -9
pushenv [47]

:[46]
pushi.e 0
pop.v.i self.image_index
pushi.e 3462
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 3
pop.v.i self.vspeed

:[47]
popenv [46]
push.i 68097
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 21
pop.v.i self.con

:[48]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [50]

:[49]
pushi.e 369
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i self.image_index
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 23
pop.v.i self.con

:[50]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [58]

:[51]
pushi.e 1351
pushenv [53]

:[52]
pushi.e 1
pop.v.i self.fun
push.d 0.25
pop.v.d self.image_speed
pushi.e 4209
pop.v.i self.sprite_index
pushi.e -1
pop.v.i self.hspeed

:[53]
popenv [52]
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
call.i gml_Script_button2_h_ch1(argc=0)
conv.v.b
bf [57]

:[54]
pushi.e 1351
pushenv [56]

:[55]
pushi.e 1
pop.v.i self.fun
push.d 0.25
pop.v.d self.image_speed
pushi.e 4209
pop.v.i self.sprite_index
pushi.e -4
pop.v.i self.hspeed

:[56]
popenv [55]
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[57]
pushi.e 25
pop.v.i self.con

:[58]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [63]

:[59]
pushi.e 3
pop.v.i global.facing
pushi.e 1351
pushenv [61]

:[60]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.fun

:[61]
popenv [60]
pushi.e 27
pop.v.i self.con
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
call.i gml_Script_button2_h_ch1(argc=0)
conv.v.b
bf [63]

:[62]
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[63]
push.v self.con
pushi.e 28
cmp.i.v EQ
bf [68]

:[64]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.facing
pushi.e 1351
pushenv [66]

:[65]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 4210
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.fun

:[66]
popenv [65]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e 30
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
call.i gml_Script_scr_tempsave_ch1(argc=0)
popz.v
pushglb.v global.plot
pushi.e 1
cmp.i.v LT
bf [68]

:[67]
pushi.e 1
pop.v.i global.plot

:[68]
push.v self.con
pushi.e 50
cmp.i.v GTE
bf [70]

:[69]
push.v self.con
pushi.e 100
cmp.i.v LT
b [71]

:[70]
push.e 0

:[71]
bf [91]

:[72]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [74]

:[73]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [75]

:[74]
push.e 0

:[75]
bf [83]

:[76]
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v NEQ
bf [80]

:[77]
pushglb.v global.filechoice
pop.v.v self._remfilechoice
push.v global.filechoice
pushi.e 3
add.i.v
pop.v.v global.filechoice
call.i gml_Script_scr_save_ch1(argc=0)
pop.v.v local.is_valid
pushloc.v local.is_valid
conv.v.b
not.b
bf [79]

:[78]
pushi.e 27
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.error_message
push.s "auto"@9638
pushloc.v local.error_message
pushi.e -9
pop.v.s [stacktop]self.type
push.s "save_failed"@14502
pushloc.v local.error_message
pushi.e -9
pop.v.s [stacktop]self.error_type

:[79]
push.v self._remfilechoice
pop.v.v global.filechoice

:[80]
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume_ch1(argc=3)
popz.v
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
pushenv [82]

:[81]
push.d 0.01
pop.v.d self.fadespeed

:[82]
popenv [81]
pushi.e 51
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[83]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [89]

:[84]
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
bf [88]

:[85]
pushglb.v global.filechoice
pop.v.v self._remfilechoice
push.v global.filechoice
pushi.e 3
add.i.v
pop.v.v global.filechoice
call.i gml_Script_scr_save_ch1(argc=0)
pop.v.v local.is_valid
pushloc.v local.is_valid
conv.v.b
not.b
bf [87]

:[86]
pushi.e 27
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.error_message
push.s "auto"@9638
pushloc.v local.error_message
pushi.e -9
pop.v.s [stacktop]self.type
push.s "save_failed"@14502
pushloc.v local.error_message
pushi.e -9
pop.v.s [stacktop]self.error_type

:[87]
push.v self._remfilechoice
pop.v.v global.filechoice

:[88]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 53
pop.v.i self.con
pushi.e 150
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[89]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [91]

:[90]
push.s " "@353
conv.s.v
call.i gml_Script_scr_windowcaption_ch1(argc=1)
popz.v
pushi.e 417
conv.i.v
call.i room_goto(argc=1)
popz.v

:[91]
push.v self.con
pushi.e 100
cmp.i.v GTE
bf [93]

:[92]
push.v self.con
pushi.e 150
cmp.i.v LT
b [94]

:[93]
push.e 0

:[94]
bf [end]

:[95]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [97]

:[96]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [98]

:[97]
push.e 0

:[98]
bf [102]

:[99]
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume_ch1(argc=3)
popz.v
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
pushenv [101]

:[100]
push.d 0.02
pop.v.d self.fadespeed
pushi.e 10000
pop.v.i self.depth

:[101]
popenv [100]
pushi.e 101
pop.v.i self.con
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[102]
push.v self.con
pushi.e 102
cmp.i.v EQ
bf [104]

:[103]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 103
pop.v.i self.con
pushi.e 50
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[104]
push.v self.con
pushi.e 104
cmp.i.v EQ
bf [106]

:[105]
push.s " "@353
conv.s.v
call.i gml_Script_scr_windowcaption_ch1(argc=1)
popz.v
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_krisroom_slash_Step_0_gml_281_0"@38375
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
pushi.e 105
pop.v.i self.con

:[106]
push.v self.con
pushi.e 105
cmp.i.v EQ
bf [108]

:[107]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [109]

:[108]
push.e 0

:[109]
bf [end]

:[110]
pushi.e 1466
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.s "obj_krisroom_slash_Step_0_gml_289_0"@38376
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_windowcaption_ch1(argc=1)
popz.v
pushi.e 10
pop.v.i global.plot
call.i gml_Script_scr_become_dark_ch1(argc=0)
popz.v
pushi.e 315
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]