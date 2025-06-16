.localvar 2 arguments
.localvar 107 i 21847

:[0]
push.v self.EVENT
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
push.i 231459
setowner.e
push.s "AUDIO_DRONE.ogg"@29045
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
pushi.e 667
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "DEVICE_FAILURE_slash_Step_0_gml_10_0"@29240
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
pop.v.i self.EVENT
pushi.e 1331
conv.i.v
pushi.e 80
conv.i.v
pushi.e 70
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.W
pushi.e -5
pushi.e 3
push.v [array]self.tempflag
pushi.e 1
cmp.i.v GTE
bf [5]

:[2]
pushi.e 1331
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[5]
push.v self.EVENT
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.EVENT

:[7]
push.v self.EVENT
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [10]

:[9]
push.e 0

:[10]
bf [18]

:[11]
pushi.e 0
pop.v.i self.JA_XOFF
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [13]

:[12]
pushi.e 44
pop.v.i self.JA_XOFF

:[13]
push.s "DEVICE_FAILURE_slash_Step_0_gml_28_0"@29252
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 3
push.v [array]self.tempflag
pushi.e 1
cmp.i.v GTE
bf [15]

:[14]
pushi.e 0
pop.v.i self.JA_XOFF
push.s "DEVICE_FAILURE_slash_Step_0_gml_32_0"@29254
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[15]
pushi.e 3
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 3
push.v [array]self.tempflag
pushi.e 1
cmp.i.v GTE
bf [17]

:[16]
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[17]
pushi.e 1331
conv.i.v
pushi.e 80
conv.i.v
pushi.e 40
push.v self.JA_XOFF
add.v.i
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.W

:[18]
push.v self.EVENT
pushi.e 4
cmp.i.v EQ
bf [20]

:[19]
pushi.e 1638
conv.i.v
pushi.e 120
conv.i.v
pushi.e 100
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.choice
pushi.e 5
pop.v.i self.EVENT

:[20]
push.v self.EVENT
pushi.e 5
cmp.i.v EQ
bf [29]

:[21]
pushglb.v global.choice
pushi.e 0
cmp.i.v EQ
bf [25]

:[22]
pushi.e 1331
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]
pushi.e 6
pop.v.i self.EVENT

:[25]
pushglb.v global.choice
pushi.e 1
cmp.i.v EQ
bf [29]

:[26]
pushi.e 1331
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
pushi.e 26
pop.v.i self.EVENT

:[29]
push.v self.EVENT
pushi.e 6
cmp.i.v EQ
bf [34]

:[30]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.flag
push.i 231251
setowner.e
push.s "DEVICE_FAILURE_slash_Step_0_gml_68_0"@29260
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1331
conv.i.v
pushi.e 80
conv.i.v
pushi.e 50
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.W
pushi.e 7
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 3
push.v [array]self.tempflag
pushi.e 1
cmp.i.v GTE
bf [34]

:[31]
pushi.e 1331
pushenv [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
popenv [32]
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[34]
push.v self.EVENT
pushi.e 8
cmp.i.v EQ
bf [38]

:[35]
pushi.e 1
pop.v.i self.WHITEFADE
push.d 0.01
pop.v.d self.FADEUP
pushi.e 9
pop.v.i self.EVENT
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 3
push.v [array]self.tempflag
pushi.e 1
cmp.i.v GTE
bf [37]

:[36]
push.d 0.03
pop.v.d self.FADEUP
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[37]
push.i 231375
setowner.e
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.tempflag
pushi.e 1
add.i.v
pop.i.v [array]self.tempflag

:[38]
push.v self.EVENT
pushi.e 10
cmp.i.v EQ
bf [40]

:[39]
push.s "DEVICE_FAILURE_slash_Step_0_gml_95_0"@41871
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_windowcaption_ch1(argc=1)
popz.v
call.i gml_Script_scr_tempload_ch1(argc=0)
popz.v
pushi.e 11
pop.v.i self.EVENT

:[40]
push.v self.EVENT
pushi.e 26
cmp.i.v EQ
bf [42]

:[41]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
push.i 231251
setowner.e
push.s "DEVICE_FAILURE_slash_Step_0_gml_103_0"@29263
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 27
pop.v.i self.EVENT
pushi.e 1331
conv.i.v
pushi.e 80
conv.i.v
pushi.e 60
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.W

:[42]
push.v self.EVENT
pushi.e 27
cmp.i.v EQ
bf [44]

:[43]
pushi.e 1331
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
push.i 231459
setowner.e
push.s "AUDIO_DARKNESS.ogg"@29265
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_play_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 28
pop.v.i self.EVENT
pushi.e 0
pop.v.i self.DARK_WAIT

:[47]
push.v self.EVENT
pushi.e 28
cmp.i.v EQ
bf [74]

:[48]
push.v self.DARK_WAIT
pushi.e 1
add.i.v
pop.v.v self.DARK_WAIT
push.v self.DARK_WAIT
pushi.e 2040
cmp.i.v GTE
bf [50]

:[49]
call.i gml_Script_ossafe_game_end_ch1(argc=0)
popz.v

:[50]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing_ch1(argc=1)
conv.v.b
not.b
bf [52]

:[51]
call.i gml_Script_ossafe_game_end_ch1(argc=0)
popz.v

:[52]
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
bt [54]

:[53]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
b [55]

:[54]
push.e 1

:[55]
bf [74]

:[56]
push.v self.DARK_WAIT
pushi.e 90
cmp.i.v GTE
bf [58]

:[57]
push.v self.restart
conv.v.b
not.b
b [59]

:[58]
push.e 0

:[59]
bf [71]

:[60]
pushi.e 0
pop.v.i local.i

:[61]
pushloc.v local.i
push.v self.gamepad_controls
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [71]

:[62]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.gamepad_controls
push.v 1112.gamepad_id
call.i gamepad_button_check_pressed(argc=2)
conv.v.b
bf [70]

:[63]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.gamepad_controls
pushglb.v global.button0
cmp.v.v EQ
bt [67]

:[64]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.gamepad_controls
pushglb.v global.button1
cmp.v.v EQ
bt [67]

:[65]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.gamepad_controls
pushglb.v global.button2
cmp.v.v EQ
bt [67]

:[66]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.gamepad_controls
push.i 32775
cmp.i.v EQ
b [68]

:[67]
push.e 1

:[68]
bf [70]

:[69]
pushi.e 80
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume_ch1(argc=3)
popz.v
pushi.e 1
pop.v.b self.restart
b [71]

:[70]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [61]

:[71]
push.v self.restart
conv.v.b
bf [74]

:[72]
push.v self.restart_timer
push.e 1
add.i.v
pop.v.v self.restart_timer
push.v self.restart_timer
pushi.e 100
cmp.i.v GTE
bf [74]

:[73]
call.i gml_Script_ossafe_game_end_ch1(argc=0)
popz.v

:[74]
push.v self.EVENT
pushi.e 0
cmp.i.v GTE
bf [76]

:[75]
push.v self.EVENT
pushi.e 4
cmp.i.v LTE
b [77]

:[76]
push.e 0

:[77]
bf [end]

:[78]
call.i gml_Script_button2_h_ch1(argc=0)
conv.v.b
bf [end]

:[79]
pushi.e 1331
pushenv [86]

:[80]
push.v self.pos
push.v self.length
pushi.e 3
sub.i.v
cmp.v.v LT
bf [82]

:[81]
push.v self.pos
pushi.e 2
add.i.v
pop.v.v self.pos

:[82]
push.v self.specfade
push.d 0.9
cmp.d.v LTE
bf [84]

:[83]
push.v self.specfade
push.d 0.1
sub.d.v
pop.v.v self.specfade

:[84]
push.v self.rate
pushi.e 1
cmp.i.v LTE
bf [86]

:[85]
pushi.e 1
pop.v.i self.rate

:[86]
popenv [80]

:[end]