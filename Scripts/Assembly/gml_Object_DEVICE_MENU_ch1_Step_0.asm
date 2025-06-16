.localvar 2 arguments
.localvar 29346 _disable_border 21860

:[0]
push.v self.input_enabled
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
bt [6]

:[3]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bt [6]

:[4]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bt [6]

:[5]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [110]

:[8]
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bf [11]

:[9]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.i 172697
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.MENU_NO
conv.v.i
pop.v.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.MOVENOISE

:[11]
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
bf [14]

:[12]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
conv.i.v
pushi.e -1
push.v self.MENU_NO
conv.v.i
pop.v.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.MOVENOISE

:[14]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [16]

:[15]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
b [17]

:[16]
push.e 0

:[17]
bf [98]

:[18]
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 1
pop.v.i self.SELNOISE
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 0
cmp.i.v EQ
bf [83]

:[19]
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
bf [42]

:[20]
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
bf [40]

:[21]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pop.v.v global.filechoice
push.s "DEVICE_MENU_slash_Step_0_gml_35_0"@41874
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_windowcaption_ch1(argc=1)
popz.v
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1
pop.v.b 1467.loaded
push.s "keyconfig_"@20443
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [40]

:[22]
push.s "keyconfig_"@20443
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_ini_open_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[23]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [27]

:[24]
pushi.e -1
conv.i.v
push.v self.i
call.i string(argc=1)
push.s "KEYBOARD_CONTROLS"@20445
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.readval
push.v self.readval
pushi.e -1
cmp.i.v NEQ
bf [26]

:[25]
push.i 232076
setowner.e
push.v self.readval
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.input_k

:[26]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [23]

:[27]
pushi.e 0
pop.v.i self.i

:[28]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [32]

:[29]
pushi.e -1
conv.i.v
push.v self.i
call.i string(argc=1)
push.s "GAMEPAD_CONTROLS"@20446
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.readval
push.v self.readval
pushi.e -1
cmp.i.v NEQ
bf [31]

:[30]
push.i 231095
setowner.e
push.v self.readval
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.input_g

:[31]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [28]

:[32]
push.v 1112.gamepad_shoulderlb_reassign
push.s "SHOULDERLB_REASSIGN"@20447
conv.s.v
push.s "SHOULDERLB_REASSIGN"@20447
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.readval
push.v self.readval
pushi.e -1
cmp.i.v NEQ
bf [34]

:[33]
push.v self.readval
pop.v.v 1112.gamepad_shoulderlb_reassign

:[34]
pushi.e -5
pushi.e 4
push.v [array]self.input_g
pop.v.v global.button0
pushi.e -5
pushi.e 5
push.v [array]self.input_g
pop.v.v global.button1
pushi.e -5
pushi.e 6
push.v [array]self.input_g
pop.v.v global.button2
pushglb.v global.is_console
conv.v.b
bf [39]

:[35]
push.s "Dynamic"@14040
conv.s.v
push.s "TYPE"@20449
conv.s.v
push.s "BORDER"@20450
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v global.screen_border_id
pushglb.v global.screen_border_id
push.s "None"@7824
cmp.s.v EQ
bt [37]

:[36]
pushglb.v global.screen_border_id
push.s "なし"@29345
cmp.s.v EQ
b [38]

:[37]
push.e 1

:[38]
pop.v.b local._disable_border
pushloc.v local._disable_border
conv.v.b
not.b
conv.b.v
call.i gml_Script_scr_enable_screen_border_ch1(argc=1)
popz.v

:[39]
call.i gml_Script_ossafe_ini_close_ch1(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save_ch1(argc=0)
popz.v

:[40]
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pop.v.v global.filechoice
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 282
conv.i.v
call.i room_goto(argc=1)
popz.v

:[42]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bf [75]

:[43]
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [57]

:[44]
push.s "DEVICE_MENU_slash_Step_0_gml_74_0"@29349
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT
pushi.e -1
pushi.e 0
push.v [array]self.NAME
pushi.e -1
pushi.e 1
push.v [array]self.NAME
cmp.v.v EQ
bf [46]

:[45]
pushi.e -1
pushi.e 1
push.v [array]self.NAME
pushi.e -1
pushi.e 2
push.v [array]self.NAME
cmp.v.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [57]

:[48]
pushi.e -1
pushi.e 0
push.v [array]self.TIME
pushi.e -1
pushi.e 1
push.v [array]self.TIME
cmp.v.v EQ
bf [50]

:[49]
pushi.e -1
pushi.e 1
push.v [array]self.TIME
pushi.e -1
pushi.e 2
push.v [array]self.TIME
cmp.v.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [57]

:[52]
pushi.e -1
pushi.e 0
push.v [array]self.PLACE
pushi.e -1
pushi.e 1
push.v [array]self.PLACE
cmp.v.v EQ
bf [54]

:[53]
pushi.e -1
pushi.e 1
push.v [array]self.PLACE
pushi.e -1
pushi.e 2
push.v [array]self.PLACE
cmp.v.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
push.s "DEVICE_MENU_slash_Step_0_gml_77_0"@29352
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT

:[57]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [72]

:[58]
pushi.e -1
pushi.e 0
push.v [array]self.NAME
pushi.e -1
pushi.e 1
push.v [array]self.NAME
cmp.v.v EQ
bf [60]

:[59]
pushi.e -1
pushi.e 1
push.v [array]self.NAME
pushi.e -1
pushi.e 2
push.v [array]self.NAME
cmp.v.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [72]

:[62]
pushi.e -1
pushi.e 0
push.v [array]self.TIME
pushi.e -1
pushi.e 1
push.v [array]self.TIME
cmp.v.v EQ
bf [64]

:[63]
pushi.e -1
pushi.e 1
push.v [array]self.TIME
pushi.e -1
pushi.e 2
push.v [array]self.TIME
cmp.v.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [72]

:[66]
pushi.e -1
pushi.e 0
push.v [array]self.PLACE
pushi.e -1
pushi.e 1
push.v [array]self.PLACE
cmp.v.v EQ
bf [69]

:[67]
pushi.e -1
pushi.e 1
push.v [array]self.PLACE
pushi.e -1
pushi.e 2
push.v [array]self.PLACE
cmp.v.v EQ
bf [69]

:[68]
push.v self.TEMPCOMMENT
push.s "DEVICE_MENU_slash_Step_0_gml_86_0"@29354
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
cmp.v.v NEQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
push.s "DEVICE_MENU_slash_Step_0_gml_86_1"@41875
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT

:[72]
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.s "DEVICE_MENU_slash_Step_0_gml_91_0"@29356
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT

:[74]
pushi.e 90
pop.v.i self.MESSAGETIMER
pushi.e 0
pop.v.i self.SELNOISE
pushi.e 1
pop.v.i self.DEATHNOISE
pushi.e 0
pop.v.i self.MENU_NO

:[75]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
bf [81]

:[76]
push.i 167433
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.FILE
push.i 167420
setowner.e
push.s "DEVICE_MENU_slash_Step_0_gml_105_0"@29358
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.NAME
push.i 167434
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.TIME
push.i 167435
setowner.e
push.s "------------"@12153
conv.s.v
pushi.e -1
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.PLACE
push.i 167436
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.LEVEL
push.i 167437
setowner.e
push.s "--:--"@12156
conv.s.v
pushi.e -1
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.TIME_STRING
push.s "filech1_"@6276
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i gml_Script_ossafe_file_delete_ch1(argc=1)
popz.v
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_ini_open_ch1(argc=1)
pop.v.v self.iniwrite
push.s "[EMPTY]"@12151
conv.s.v
push.s "Name"@9672
conv.s.v
push.s "G"@9482
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_string(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Level"@9675
conv.s.v
push.s "G"@9482
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Love"@9677
conv.s.v
push.s "G"@9482
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Time"@9678
conv.s.v
push.s "G"@9482
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Room"@9681
conv.s.v
push.s "G"@9482
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
call.i gml_Script_ossafe_ini_close_ch1(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save_ch1(argc=0)
popz.v
push.s "keyconfig_"@20443
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [78]

:[77]
push.s "keyconfig_"@20443
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_file_delete_ch1(argc=1)
popz.v

:[78]
push.s "DEVICE_MENU_slash_Step_0_gml_126_0"@29359
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
push.s "DEVICE_MENU_slash_Step_0_gml_127_0"@29361
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT

:[80]
pushi.e 90
pop.v.i self.MESSAGETIMER
pushi.e 0
pop.v.i self.SELNOISE
pushi.e 1
pop.v.i self.DEATHNOISE
pushi.e 0
pop.v.i self.MENU_NO

:[81]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bf [83]

:[82]
push.v self.THREAT
pushi.e 1
add.i.v
pop.v.v self.THREAT
pushi.e 7
pop.v.i self.MENU_NO
push.i 172697
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.MENUCOORD

:[83]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 1
cmp.i.v EQ
bf [98]

:[84]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bf [86]

:[85]
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
push.s "DEVICE_MENU_slash_Step_0_gml_149_0"@29363
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT
pushi.e 90
pop.v.i self.MESSAGETIMER

:[89]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bt [91]

:[90]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
b [92]

:[91]
push.e 1

:[92]
bf [97]

:[93]
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [97]

:[94]
push.s "DEVICE_MENU_slash_Step_0_gml_156_0"@29365
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT
push.v self.THREAT
pushi.e 10
cmp.i.v GTE
bf [96]

:[95]
push.s "DEVICE_MENU_slash_Step_0_gml_159_0"@29367
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT
pushi.e 0
pop.v.i self.THREAT

:[96]
pushi.e 90
pop.v.i self.MESSAGETIMER

:[97]
pushi.e 0
pop.v.i self.MENU_NO

:[98]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [100]

:[99]
push.v self.TWOBUFFER
pushi.e 0
cmp.i.v LT
b [101]

:[100]
push.e 0

:[101]
bf [110]

:[102]
pushi.e 1
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.TWOBUFFER
pushi.e 1
pop.v.i self.BACKNOISE
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
bf [104]

:[103]
pushi.e 0
pop.v.i self.MENU_NO

:[104]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bf [106]

:[105]
pushi.e 2
pop.v.i self.MENU_NO

:[106]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bf [108]

:[107]
pushi.e 5
pop.v.i self.MENU_NO

:[108]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
bf [110]

:[109]
pushi.e 5
pop.v.i self.MENU_NO

:[110]
push.v self.MENU_NO
pushi.e 2
cmp.i.v EQ
bt [113]

:[111]
push.v self.MENU_NO
pushi.e 3
cmp.i.v EQ
bt [113]

:[112]
push.v self.MENU_NO
pushi.e 5
cmp.i.v EQ
b [114]

:[113]
push.e 1

:[114]
bf [174]

:[115]
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [118]

:[116]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v LT
bf [118]

:[117]
pushi.e -1
push.v self.MENU_NO
conv.v.i
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 1
add.i.v
pop.i.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.MOVENOISE

:[118]
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [121]

:[119]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 0
cmp.i.v GT
bf [121]

:[120]
pushi.e -1
push.v self.MENU_NO
conv.v.i
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 1
sub.i.v
pop.i.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.MOVENOISE

:[121]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [123]

:[122]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
b [124]

:[123]
push.e 0

:[124]
bf [163]

:[125]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v LT
bf [161]

:[126]
push.v self.MENU_NO
pushi.e 3
cmp.i.v EQ
bf [137]

:[127]
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
cmp.v.v NEQ
bf [134]

:[128]
pushi.e -1
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.SELNOISE
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.MENUCOORD
pushi.e 4
pop.v.i self.MENU_NO
b [133]

:[130]
push.s "DEVICE_MENU_slash_Step_0_gml_225_0"@29369
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT
pushi.e 90
pop.v.i self.MESSAGETIMER
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [132]

:[131]
push.s "DEVICE_MENU_slash_Step_0_gml_227_0"@29371
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT

:[132]
pushi.e 1
pop.v.i self.DEATHNOISE
pushi.e 0
pop.v.i self.MENU_NO
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[133]
b [137]

:[134]
push.s "DEVICE_MENU_slash_Step_0_gml_238_0"@29372
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [136]

:[135]
push.s "DEVICE_MENU_slash_Step_0_gml_239_0"@29374
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT

:[136]
pushi.e 90
pop.v.i self.MESSAGETIMER
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.BACKNOISE

:[137]
push.v self.MENU_NO
pushi.e 2
cmp.i.v EQ
bf [149]

:[138]
pushi.e -1
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
bf [140]

:[139]
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.SELNOISE
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.MENUCOORD
pushi.e 3
pop.v.i self.MENU_NO
b [149]

:[140]
push.s "DEVICE_MENU_slash_Step_0_gml_261_0"@29376
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT
pushi.e -1
pushi.e 0
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [143]

:[141]
pushi.e -1
pushi.e 1
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [143]

:[142]
pushi.e -1
pushi.e 2
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
b [144]

:[143]
push.e 0

:[144]
bf [146]

:[145]
push.s "DEVICE_MENU_slash_Step_0_gml_264_0"@29378
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT

:[146]
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [148]

:[147]
push.s "DEVICE_MENU_slash_Step_0_gml_266_0"@29380
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT

:[148]
pushi.e 90
pop.v.i self.MESSAGETIMER
pushi.e 1
pop.v.i self.BACKNOISE
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER

:[149]
push.v self.MENU_NO
pushi.e 5
cmp.i.v EQ
bf [161]

:[150]
pushi.e -1
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
bf [152]

:[151]
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.SELNOISE
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.MENUCOORD
pushi.e 6
pop.v.i self.MENU_NO
b [161]

:[152]
push.s "DEVICE_MENU_slash_Step_0_gml_289_0"@29382
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT
pushi.e -1
pushi.e 0
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [155]

:[153]
pushi.e -1
pushi.e 1
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [155]

:[154]
pushi.e -1
pushi.e 2
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
b [156]

:[155]
push.e 0

:[156]
bf [158]

:[157]
push.s "DEVICE_MENU_slash_Step_0_gml_292_0"@29384
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT

:[158]
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [160]

:[159]
push.s "DEVICE_MENU_slash_Step_0_gml_294_0"@29386
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.TEMPCOMMENT

:[160]
pushi.e 90
pop.v.i self.MESSAGETIMER
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.BACKNOISE

:[161]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v EQ
bf [163]

:[162]
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.SELNOISE
pushi.e 0
pop.v.i self.MENU_NO

:[163]
call.i gml_Script_button2_p_ch1(argc=0)
conv.v.b
bf [165]

:[164]
push.v self.TWOBUFFER
pushi.e 0
cmp.i.v LT
b [166]

:[165]
push.e 0

:[166]
bf [174]

:[167]
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.BACKNOISE
push.v self.MENU_NO
pushi.e 2
cmp.i.v EQ
bt [169]

:[168]
push.v self.MENU_NO
pushi.e 5
cmp.i.v EQ
b [170]

:[169]
push.e 1

:[170]
bf [172]

:[171]
pushi.e 0
pop.v.i self.MENU_NO

:[172]
push.v self.MENU_NO
pushi.e 3
cmp.i.v EQ
bf [174]

:[173]
pushi.e 2
pop.v.i self.MENU_NO

:[174]
push.v self.MENU_NO
pushi.e 0
cmp.i.v EQ
bf [221]

:[175]
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [180]

:[176]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v LT
bf [178]

:[177]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 1
add.i.v
pop.i.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.MOVENOISE
b [180]

:[178]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 6
cmp.i.v NEQ
bf [180]

:[179]
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.MOVENOISE

:[180]
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [193]

:[181]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 0
cmp.i.v GT
bf [193]

:[182]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v LT
bf [184]

:[183]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 1
sub.i.v
pop.i.v [array]self.MENUCOORD
b [192]

:[184]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v EQ
bt [187]

:[185]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 4
cmp.i.v EQ
bt [187]

:[186]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 5
cmp.i.v EQ
b [188]

:[187]
push.e 1

:[188]
bf [190]

:[189]
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.MENUCOORD
b [192]

:[190]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 6
cmp.i.v EQ
bf [192]

:[191]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 2
sub.i.v
pop.i.v [array]self.MENUCOORD

:[192]
pushi.e 1
pop.v.i self.MOVENOISE

:[193]
call.i gml_Script_right_p_ch1(argc=0)
conv.v.b
bf [200]

:[194]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v GTE
bf [196]

:[195]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 5
cmp.i.v LTE
b [197]

:[196]
push.e 0

:[197]
bf [200]

:[198]
pushi.e 1
pop.v.i self.MOVENOISE
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 1
add.i.v
pop.i.v [array]self.MENUCOORD
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 5
cmp.i.v GT
bf [200]

:[199]
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.MENUCOORD

:[200]
call.i gml_Script_left_p_ch1(argc=0)
conv.v.b
bf [207]

:[201]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v GTE
bf [203]

:[202]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 5
cmp.i.v LTE
b [204]

:[203]
push.e 0

:[204]
bf [207]

:[205]
pushi.e 1
pop.v.i self.MOVENOISE
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 1
sub.i.v
pop.i.v [array]self.MENUCOORD
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v LT
bf [207]

:[206]
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.MENUCOORD

:[207]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [209]

:[208]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
b [210]

:[209]
push.e 0

:[210]
bf [221]

:[211]
pushi.e -1
pop.v.i self.MESSAGETIMER
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 2
cmp.i.v LTE
bf [213]

:[212]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.TWOBUFFER
pushi.e 1
pop.v.i self.MENU_NO
pushi.e 1
pop.v.i self.SELNOISE

:[213]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v EQ
bf [215]

:[214]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.MENU_NO
pushi.e 1
pop.v.i self.SELNOISE

:[215]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 4
cmp.i.v EQ
bf [217]

:[216]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.TWOBUFFER
pushi.e 5
pop.v.i self.MENU_NO
pushi.e 1
pop.v.i self.SELNOISE

:[217]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 5
cmp.i.v EQ
bf [219]

:[218]
pushi.e 0
pop.v.b self.input_enabled
pushi.e 1
pop.v.i self.SELNOISE
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[219]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pushi.e 6
cmp.i.v EQ
bf [221]

:[220]
call.i gml_Script_scr_change_language_ch1(argc=0)
popz.v
call.i gml_Script_scr_84_load_ini_ch1(argc=0)
popz.v
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 1
pop.v.i self.SELNOISE

:[221]
push.v self.OBMADE
pushi.e 1
cmp.i.v EQ
bf [226]

:[222]
push.v self.OB_DEPTH
pushi.e 1
add.i.v
pop.v.v self.OB_DEPTH
push.v self.obacktimer
push.v self.OBM
add.v.v
pop.v.v self.obacktimer
push.v self.obacktimer
pushi.e 20
cmp.i.v GTE
bf [226]

:[223]
pushi.e 1643
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.DV
pushi.e 5
push.v self.OB_DEPTH
add.v.i
push.v self.DV
pushi.e -9
pop.v.v [stacktop]self.depth
push.d 0.01
push.v self.OBM
mul.v.d
push.v self.DV
pushi.e -9
pop.v.v [stacktop]self.OBSPEED
push.v self.OB_DEPTH
push.i 60000
cmp.i.v GTE
bf [225]

:[224]
pushi.e 0
pop.v.i self.OB_DEPTH

:[225]
pushi.e 0
pop.v.i self.obacktimer

:[226]
push.v self.MOVENOISE
pushi.e 1
cmp.i.v EQ
bf [228]

:[227]
pushi.e 493
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.MOVENOISE

:[228]
push.v self.SELNOISE
pushi.e 1
cmp.i.v EQ
bf [230]

:[229]
pushi.e 494
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.SELNOISE

:[230]
push.v self.BACKNOISE
pushi.e 1
cmp.i.v EQ
bf [232]

:[231]
pushi.e 423
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.BACKNOISE

:[232]
push.v self.DEATHNOISE
pushi.e 1
cmp.i.v EQ
bf [234]

:[233]
pushi.e 488
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.DEATHNOISE

:[234]
push.v self.ONEBUFFER
pushi.e 1
sub.i.v
pop.v.v self.ONEBUFFER
push.v self.TWOBUFFER
pushi.e 1
sub.i.v
pop.v.v self.TWOBUFFER

:[end]