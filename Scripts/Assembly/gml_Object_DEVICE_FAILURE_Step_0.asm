.localvar 2 arguments
.localvar 29243 voice 15327
.localvar 6482 xx 15328
.localvar 107 i 15329

:[0]
push.v self.EVENT
pushi.e 1
cmp.i.v EQ
bf [23]

:[1]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [7]

:[2]
push.i 231459
setowner.e
push.s "AUDIO_DRONE.ogg"@29045
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
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
push.s "\\M0 IT APPEARS YOU& HAVE REACHED^6& &    AN END./%"@29241
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
pop.v.i self.EVENT
pushi.e 64
conv.i.v
pushi.e 80
conv.i.v
pushi.e 70
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e -5
pushi.e 3
push.v [array]self.tempflag
pushi.e 1
cmp.i.v GTE
bf [6]

:[3]
pushi.e 64
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[6]
b [23]

:[7]
push.v self.text_timer
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
push.v self.text_timer
push.e 1
sub.i.v
pop.v.v self.text_timer
b [23]

:[9]
pushi.e 3
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.i 231459
setowner.e
push.s "AUDIO_DEFEAT.ogg"@29242
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v local.voice
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [11]

:[10]
pushi.e 1
pop.v.i local.voice
b [13]

:[11]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [13]

:[12]
pushi.e 0
pop.v.i local.voice

:[13]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bt [15]

:[14]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
b [16]

:[15]
push.e 1

:[16]
bf [23]

:[17]
pushloc.v local.voice
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "DEVICE_FAILURE_slash_Step_0_gml_39_0"@29244
conv.s.v
push.s "  Come on^1,&  that all you got!?/"@29245
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "DEVICE_FAILURE_slash_Step_0_gml_40_0"@29246
conv.s.v
push.s "  Kris^1,&  get up...!/%"@29247
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 61
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
b [20]

:[19]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "DEVICE_FAILURE_slash_Step_0_gml_47_0"@29248
conv.s.v
push.s "  This is not&  your fate...!/"@29249
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "DEVICE_FAILURE_slash_Step_0_gml_48_0"@29250
conv.s.v
push.s "  Please^1,&  don't give up!/%"@29251
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 60
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc

:[20]
pushi.e 50
pop.v.i local.xx
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [22]

:[21]
pushi.e 44
pop.v.i local.xx

:[22]
pushi.e 64
conv.i.v
pushi.e 150
conv.i.v
pushi.e 50
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W

:[23]
push.v self.EVENT
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
pop.v.i self.EVENT

:[25]
push.v self.EVENT
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [28]

:[27]
push.e 0

:[28]
bf [34]

:[29]
pushi.e 3
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.i 231251
setowner.e
push.s "DEVICE_FAILURE_slash_Step_0_gml_28_0"@29252
conv.s.v
push.s "\\M0 WILL YOU TRY AGAIN?"@29253
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 3
push.v [array]self.tempflag
pushi.e 1
cmp.i.v GTE
bf [31]

:[30]
push.s "DEVICE_FAILURE_slash_Step_0_gml_32_0"@29254
conv.s.v
push.s "\\M0 WILL YOU PERSIST?"@29255
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[31]
pushi.e -5
pushi.e 3
push.v [array]self.tempflag
pushi.e 1
cmp.i.v GTE
bf [33]

:[32]
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[33]
pushi.e 64
conv.i.v
pushi.e 80
conv.i.v
pushi.e 84
conv.i.v
pushi.e 40
conv.i.v
call.i gml_Script_langopt(argc=2)
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W

:[34]
push.v self.EVENT
pushi.e 4
cmp.i.v EQ
bf [36]

:[35]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [37]

:[36]
push.e 0

:[37]
bf [46]

:[38]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
pushi.e 881
conv.i.v
pushi.e 120
conv.i.v
pushi.e 100
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.choice
pushi.e 5
pop.v.i self.EVENT
b [46]

:[40]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [46]

:[41]
pushi.e 881
conv.i.v
pushi.e 120
conv.i.v
pushi.e 100
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.choice
pushglb.v global.chapter
pushi.e 1
cmp.i.v GT
bf [45]

:[42]
push.v self.choice
pushi.e -9
pushenv [44]

:[43]
push.i 167420
setowner.e
push.s "DEVICE_FAILURE_slash_Step_0_gml_103_0_b"@29256
conv.s.v
push.s "CONTINUE"@29257
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAME
pushi.e 0
popaf.e
push.s "DEVICE_FAILURE_slash_Step_0_gml_104_0"@29258
conv.s.v
push.s "GIVE UP"@29259
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.NAME
pushi.e 0
popaf.e
push.i 167421
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEX
pushi.e 0
popaf.e
pushi.e 190
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.NAMEX
pushi.e 0
popaf.e
push.i 167422
setowner.e
pushi.e 180
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.NAMEY
pushi.e 0
popaf.e
pushi.e 180
conv.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.NAMEY
pushi.e 0
popaf.e
pushi.e 1
pop.v.i self.XMAX
pushi.e -1
pop.v.i self.CURX
pushi.e 190
pop.v.i self.IDEALX
pushi.e 180
pop.v.i self.IDEALY

:[44]
popenv [43]

:[45]
pushi.e 5
pop.v.i self.EVENT

:[46]
push.v self.EVENT
pushi.e 5
cmp.i.v EQ
bf [55]

:[47]
pushglb.v global.choice
pushi.e 0
cmp.i.v EQ
bf [51]

:[48]
pushi.e 64
pushenv [50]

:[49]
call.i instance_destroy(argc=0)
popz.v

:[50]
popenv [49]
pushi.e 6
pop.v.i self.EVENT

:[51]
pushglb.v global.choice
pushi.e 1
cmp.i.v EQ
bf [55]

:[52]
pushi.e 64
pushenv [54]

:[53]
call.i instance_destroy(argc=0)
popz.v

:[54]
popenv [53]
pushi.e 26
pop.v.i self.EVENT

:[55]
push.v self.EVENT
pushi.e 6
cmp.i.v EQ
bf [61]

:[56]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 7
pop.v.i self.EVENT
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [61]

:[57]
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
push.s " THEN, THE FUTURE& IS IN YOUR HANDS."@29261
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 64
conv.i.v
pushi.e 80
conv.i.v
pushi.e 50
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W
pushi.e -5
pushi.e 3
push.v [array]self.tempflag
pushi.e 1
cmp.i.v GTE
bf [61]

:[58]
pushi.e 64
pushenv [60]

:[59]
call.i instance_destroy(argc=0)
popz.v

:[60]
popenv [59]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[61]
push.v self.EVENT
pushi.e 8
cmp.i.v EQ
bf [66]

:[62]
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
bf [64]

:[63]
push.d 0.03
pop.v.d self.FADEUP
pushi.e 45
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
b [65]

:[64]
pushi.e 246
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[65]
push.i 231375
setowner.e
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.tempflag
pushi.e 1
add.i.v
pop.i.v [array]self.tempflag

:[66]
push.v self.EVENT
pushi.e 10
cmp.i.v EQ
bf [68]

:[67]
push.s "DEVICE_FAILURE_slash_Step_0_gml_172_0"@29262
conv.s.v
push.s "THE DARK"@15431
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i gml_Script_scr_windowcaption(argc=1)
popz.v
call.i gml_Script_scr_tempload(argc=0)
popz.v
pushi.e 11
pop.v.i self.EVENT

:[68]
push.v self.EVENT
pushi.e 26
cmp.i.v EQ
bf [73]

:[69]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushglb.v global.chapter
pushi.e 1
cmp.i.v GT
bf [72]

:[70]
pushi.e 1313
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [72]

:[71]
pushi.e 1313
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[72]
pushi.e 667
pop.v.i global.typer
push.i 231251
setowner.e
push.s "DEVICE_FAILURE_slash_Step_0_gml_103_0"@29263
conv.s.v
push.s "\\M0 THEN THE WORLD^5 & WAS COVERED^5 & IN DARKNESS./%"@29264
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 27
pop.v.i self.EVENT
pushi.e 64
conv.i.v
pushi.e 80
conv.i.v
pushi.e 60
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.W

:[73]
push.v self.EVENT
pushi.e 27
cmp.i.v EQ
bf [75]

:[74]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
push.i 231459
setowner.e
push.s "AUDIO_DARKNESS.ogg"@29265
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_play(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 28
pop.v.i self.EVENT
pushi.e 0
pop.v.i self.DARK_WAIT

:[78]
push.v self.EVENT
pushi.e 28
cmp.i.v EQ
bf [102]

:[79]
push.v self.DARK_WAIT
pushi.e 1
add.i.v
pop.v.v self.DARK_WAIT
push.v self.DARK_WAIT
pushi.e 2040
cmp.i.v GTE
bf [81]

:[80]
call.i gml_Script_ossafe_game_end(argc=0)
popz.v

:[81]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [83]

:[82]
call.i gml_Script_ossafe_game_end(argc=0)
popz.v

:[83]
pushglb.v global.is_console
conv.v.b
bf [102]

:[84]
push.v self.DARK_WAIT
pushi.e 90
cmp.i.v GTE
bf [86]

:[85]
push.v self.restart
conv.v.b
not.b
b [87]

:[86]
push.e 0

:[87]
bf [99]

:[88]
pushi.e 0
pop.v.i local.i

:[89]
pushloc.v local.i
push.v self.gamepad_controls
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [99]

:[90]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.gamepad_controls
push.v 1112.gamepad_id
call.i gamepad_button_check_pressed(argc=2)
conv.v.b
bf [98]

:[91]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.gamepad_controls
pushglb.v global.button0
cmp.v.v EQ
bt [95]

:[92]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.gamepad_controls
pushglb.v global.button1
cmp.v.v EQ
bt [95]

:[93]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.gamepad_controls
pushglb.v global.button2
cmp.v.v EQ
bt [95]

:[94]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.gamepad_controls
push.i 32775
cmp.i.v EQ
b [96]

:[95]
push.e 1

:[96]
bf [98]

:[97]
pushi.e 80
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 1
pop.v.b self.restart
b [99]

:[98]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [89]

:[99]
push.v self.restart
conv.v.b
bf [102]

:[100]
push.v self.restart_timer
push.e 1
add.i.v
pop.v.v self.restart_timer
push.v self.restart_timer
pushi.e 100
cmp.i.v GTE
bf [102]

:[101]
call.i gml_Script_ossafe_game_end(argc=0)
popz.v

:[102]
push.v self.EVENT
pushi.e 0
cmp.i.v GTE
bf [104]

:[103]
push.v self.EVENT
pushi.e 4
cmp.i.v LTE
b [105]

:[104]
push.e 0

:[105]
bf [end]

:[106]
call.i gml_Script_button2_h(argc=0)
conv.v.b
bf [end]

:[107]
pushi.e 64
pushenv [114]

:[108]
push.v self.pos
push.v self.length
pushi.e 3
sub.i.v
cmp.v.v LT
bf [110]

:[109]
push.v self.pos
pushi.e 2
add.i.v
pop.v.v self.pos

:[110]
push.v self.specfade
push.d 0.9
cmp.d.v LTE
bf [112]

:[111]
push.v self.specfade
push.d 0.1
sub.d.v
pop.v.v self.specfade

:[112]
push.v self.rate
pushi.e 1
cmp.i.v LTE
bf [114]

:[113]
pushi.e 1
pop.v.i self.rate

:[114]
popenv [108]

:[end]