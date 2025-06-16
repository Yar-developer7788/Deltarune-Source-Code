.localvar 2 arguments
.localvar 29341 FILECHECK 15404
.localvar 29342 FILESLOT 15405
.localvar 29343 DONAMING 15406
.localvar 29346 _disable_border 15408
.localvar 29347 namer 15409
.localvar 29348 temp_comment_is_interesting 15410
.localvar 9486 M 15412
.localvar 29388 MAXY 15413

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
bt [7]

:[3]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bt [7]

:[4]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bt [7]

:[5]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
bt [7]

:[6]
push.v self.MENU_NO
pushi.e 11
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [150]

:[9]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [12]

:[10]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
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

:[12]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [15]

:[13]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
conv.i.v
pushi.e -1
push.v self.MENU_NO
conv.v.i
pop.v.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.MOVENOISE

:[15]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [17]

:[16]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
b [18]

:[17]
push.e 0

:[18]
bf [134]

:[19]
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
bf [116]

:[20]
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
bt [22]

:[21]
push.v self.MENU_NO
pushi.e 11
cmp.i.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [75]

:[24]
pushi.e 0
pop.v.i local.FILECHECK
pushi.e 0
pop.v.i local.FILESLOT
pushi.e 0
pop.v.i local.DONAMING
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
pop.v.v local.FILESLOT

:[26]
push.v self.MENU_NO
pushi.e 11
cmp.i.v EQ
bf [28]

:[27]
pushi.e -1
pushi.e 10
push.v [array]self.MENUCOORD
pop.v.v local.FILESLOT

:[28]
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e -1
pushi.e -1
pushi.e 0
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 1
pop.v.i local.FILECHECK

:[33]
push.v self.MENU_NO
pushi.e 11
cmp.i.v EQ
bf [42]

:[34]
push.v self.INCOMPLETE_LOAD
conv.v.b
bf [39]

:[35]
pushi.e -1
pushloc.v local.FILESLOT
conv.v.i
push.v [array]self.INCOMPLETEFILE_PREV
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1
pop.v.i local.FILECHECK
b [38]

:[37]
pushi.e -1
pop.v.i local.FILECHECK

:[38]
b [42]

:[39]
pushi.e -1
pushloc.v local.FILESLOT
conv.v.i
push.v [array]self.COMPLETEFILE_PREV
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
pushi.e 1
pop.v.i local.FILECHECK
b [42]

:[41]
pushi.e -1
pop.v.i local.FILECHECK

:[42]
pushloc.v local.FILECHECK
conv.v.b
bf [71]

:[43]
pushloc.v local.FILESLOT
pop.v.v global.filechoice
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.f
pushi.e 1000
push.v self.f
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1000
push.v self.f
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.s "keyconfig_"@20443
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [62]

:[44]
push.s "keyconfig_"@20443
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_ini_open(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[45]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [49]

:[46]
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
bf [48]

:[47]
push.i 232076
setowner.e
push.v self.readval
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.input_k

:[48]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [45]

:[49]
pushi.e 0
pop.v.i self.i

:[50]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [54]

:[51]
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
bf [53]

:[52]
push.i 231095
setowner.e
push.v self.readval
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.input_g

:[53]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [50]

:[54]
pushglb.v global.is_console
conv.v.b
not.b
bf [56]

:[55]
call.i ini_close(argc=0)
popz.v
b [62]

:[56]
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
bf [58]

:[57]
push.v self.readval
pop.v.v 1112.gamepad_shoulderlb_reassign

:[58]
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
bt [60]

:[59]
pushglb.v global.screen_border_id
push.s "なし"@29345
cmp.s.v EQ
b [61]

:[60]
push.e 1

:[61]
pop.v.b local._disable_border
pushloc.v local._disable_border
conv.v.b
not.b
conv.b.v
call.i gml_Script_scr_enable_screen_border(argc=1)
popz.v
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save(argc=0)
popz.v

:[62]
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
call.i gml_Script_scr_load(argc=0)
popz.v
exit.i

:[64]
push.v self.MENU_NO
pushi.e 11
cmp.i.v EQ
bf [71]

:[65]
push.v self.INCOMPLETE_LOAD
pushi.e 0
cmp.i.v EQ
bf [67]

:[66]
push.v global.filechoice
pushi.e 3
add.i.v
pop.v.v global.filechoice
call.i gml_Script_scr_load_chapter1(argc=0)
popz.v
push.v global.filechoice
pushi.e 3
sub.i.v
pop.v.v global.filechoice
b [68]

:[67]
call.i gml_Script_scr_load_chapter1(argc=0)
popz.v

:[68]
pushi.e -5
pushi.e 914
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [70]

:[69]
push.i 231204
setowner.e
pushglb.v global.chapter
pushi.e 1
sub.i.v
pushi.e -5
pushi.e 914
pop.v.v [array]self.flag

:[70]
pushi.e -2
pop.v.i local.FILECHECK
pushi.e 1
pop.v.i self.STARTGAME

:[71]
pushloc.v local.FILECHECK
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
pushloc.v local.FILESLOT
pop.v.v global.filechoice
pushi.e 882
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.namer
push.v self.MENU_NO
pushloc.v local.namer
pushi.e -9
pop.v.v [stacktop]self.REMMENU
push.v self.MENU_NO
pop.v.v self.REMMENU
pushi.e -1
pop.v.i self.MENU_NO

:[73]
pushloc.v local.FILECHECK
pushi.e -1
cmp.i.v EQ
bf [75]

:[74]
pushi.e 144
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[75]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bf [108]

:[76]
pushi.e 0
pop.v.b local.temp_comment_is_interesting
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [90]

:[77]
push.s "DEVICE_MENU_slash_Step_0_gml_74_0"@29349
conv.s.v
push.s "IT CONFORMED TO THE REFLECTION."@29350
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT
pushi.e -1
pushi.e 0
push.v [array]self.NAME
pushi.e -1
pushi.e 1
push.v [array]self.NAME
cmp.v.v EQ
bf [79]

:[78]
pushi.e -1
pushi.e 1
push.v [array]self.NAME
pushi.e -1
pushi.e 2
push.v [array]self.NAME
cmp.v.v EQ
b [80]

:[79]
push.e 0

:[80]
bf [90]

:[81]
pushi.e -1
pushi.e 0
push.v [array]self.TIME
pushi.e -1
pushi.e 1
push.v [array]self.TIME
cmp.v.v EQ
bf [83]

:[82]
pushi.e -1
pushi.e 1
push.v [array]self.TIME
pushi.e -1
pushi.e 2
push.v [array]self.TIME
cmp.v.v EQ
b [84]

:[83]
push.e 0

:[84]
bf [90]

:[85]
pushi.e -1
pushi.e 0
push.v [array]self.PLACE
pushi.e -1
pushi.e 1
push.v [array]self.PLACE
cmp.v.v EQ
bf [87]

:[86]
pushi.e -1
pushi.e 1
push.v [array]self.PLACE
pushi.e -1
pushi.e 2
push.v [array]self.PLACE
cmp.v.v EQ
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
pushi.e 1
pop.v.b local.temp_comment_is_interesting
push.s "DEVICE_MENU_slash_Step_0_gml_77_0"@29352
conv.s.v
push.s "WHAT AN INTERESTING BEHAVIOR."@29353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT

:[90]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [105]

:[91]
pushi.e -1
pushi.e 0
push.v [array]self.NAME
pushi.e -1
pushi.e 1
push.v [array]self.NAME
cmp.v.v EQ
bf [93]

:[92]
pushi.e -1
pushi.e 1
push.v [array]self.NAME
pushi.e -1
pushi.e 2
push.v [array]self.NAME
cmp.v.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [105]

:[95]
pushi.e -1
pushi.e 0
push.v [array]self.TIME
pushi.e -1
pushi.e 1
push.v [array]self.TIME
cmp.v.v EQ
bf [97]

:[96]
pushi.e -1
pushi.e 1
push.v [array]self.TIME
pushi.e -1
pushi.e 2
push.v [array]self.TIME
cmp.v.v EQ
b [98]

:[97]
push.e 0

:[98]
bf [105]

:[99]
pushi.e -1
pushi.e 0
push.v [array]self.PLACE
pushi.e -1
pushi.e 1
push.v [array]self.PLACE
cmp.v.v EQ
bf [102]

:[100]
pushi.e -1
pushi.e 1
push.v [array]self.PLACE
pushi.e -1
pushi.e 2
push.v [array]self.PLACE
cmp.v.v EQ
bf [102]

:[101]
pushloc.v local.temp_comment_is_interesting
conv.v.b
not.b
b [103]

:[102]
push.e 0

:[103]
bf [105]

:[104]
push.s "DEVICE_MENU_slash_Step_0_gml_86_0"@29354
conv.s.v
push.s "PREPARATIONS ARE COMPLETE."@29355
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT

:[105]
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [107]

:[106]
push.s "DEVICE_MENU_slash_Step_0_gml_91_0"@29356
conv.s.v
push.s "Copy complete."@29357
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT

:[107]
pushi.e 90
pop.v.i self.MESSAGETIMER
pushi.e 0
pop.v.i self.SELNOISE
pushi.e 1
pop.v.i self.DEATHNOISE
pushi.e 0
pop.v.i self.MENU_NO

:[108]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
bf [114]

:[109]
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
push.s "[EMPTY]"@12151
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
push.s "filech"@9691
pushglb.v global.chapter
call.i string(argc=1)
add.v.s
push.s "_"@9692
add.s.v
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.v
call.i gml_Script_ossafe_file_delete(argc=1)
popz.v
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_ini_open(argc=1)
pop.v.v self.iniwrite
push.s "[EMPTY]"@12151
conv.s.v
push.s "Name"@9672
conv.s.v
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_string(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Level"@9675
conv.s.v
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Love"@9677
conv.s.v
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Time"@9678
conv.s.v
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Room"@9681
conv.s.v
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Date"@9680
conv.s.v
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "UraBoss"@9684
conv.s.v
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
push.s "0"@3491
conv.s.v
push.s "Version"@9686
conv.s.v
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_string(argc=3)
popz.v
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save(argc=0)
popz.v
push.s "keyconfig_"@20443
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [111]

:[110]
push.s "keyconfig_"@20443
pushi.e -1
pushi.e 5
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_file_delete(argc=1)
popz.v

:[111]
push.s "DEVICE_MENU_slash_Step_0_gml_126_0"@29359
conv.s.v
push.s "IT WAS AS IF IT WAS NEVER THERE AT ALL."@29360
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [113]

:[112]
push.s "DEVICE_MENU_slash_Step_0_gml_127_0"@29361
conv.s.v
push.s "Erase complete."@29362
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT

:[113]
pushi.e 90
pop.v.i self.MESSAGETIMER
pushi.e 0
pop.v.i self.SELNOISE
pushi.e 1
pop.v.i self.DEATHNOISE
pushi.e 0
pop.v.i self.MENU_NO

:[114]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bf [116]

:[115]
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

:[116]
push.v self.MENU_NO
pushi.e 0
cmp.i.v GTE
bf [134]

:[117]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 1
cmp.i.v EQ
bf [134]

:[118]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bf [120]

:[119]
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
b [121]

:[120]
push.e 0

:[121]
bf [123]

:[122]
push.s "DEVICE_MENU_slash_Step_0_gml_149_0"@29363
conv.s.v
push.s "IT RETAINED ITS ORIGINAL SHAPE."@29364
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT
pushi.e 90
pop.v.i self.MESSAGETIMER

:[123]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bt [125]

:[124]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
b [126]

:[125]
push.e 1

:[126]
bf [131]

:[127]
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [131]

:[128]
push.s "DEVICE_MENU_slash_Step_0_gml_156_0"@29365
conv.s.v
push.s "THEN IT WAS SPARED."@29366
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT
push.v self.THREAT
pushi.e 10
cmp.i.v GTE
bf [130]

:[129]
push.s "DEVICE_MENU_slash_Step_0_gml_159_0"@29367
conv.s.v
push.s "VERY INTERESTING."@29368
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT
pushi.e 0
pop.v.i self.THREAT

:[130]
pushi.e 90
pop.v.i self.MESSAGETIMER

:[131]
push.v self.MENU_NO
pushi.e 11
cmp.i.v EQ
bf [133]

:[132]
pushi.e 10
pop.v.i self.MENU_NO
b [134]

:[133]
pushi.e 0
pop.v.i self.MENU_NO

:[134]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [136]

:[135]
push.v self.TWOBUFFER
pushi.e 0
cmp.i.v LT
b [137]

:[136]
push.e 0

:[137]
bf [150]

:[138]
pushi.e 1
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.TWOBUFFER
push.v self.MENU_NO
pushi.e 0
cmp.i.v NEQ
bf [140]

:[139]
pushi.e 1
pop.v.i self.BACKNOISE

:[140]
push.v self.MENU_NO
pushi.e 1
cmp.i.v EQ
bf [142]

:[141]
pushi.e 0
pop.v.i self.MENU_NO
b [150]

:[142]
push.v self.MENU_NO
pushi.e 4
cmp.i.v EQ
bf [144]

:[143]
pushi.e 2
pop.v.i self.MENU_NO
b [150]

:[144]
push.v self.MENU_NO
pushi.e 6
cmp.i.v EQ
bf [146]

:[145]
pushi.e 5
pop.v.i self.MENU_NO
b [150]

:[146]
push.v self.MENU_NO
pushi.e 7
cmp.i.v EQ
bf [148]

:[147]
pushi.e 5
pop.v.i self.MENU_NO
b [150]

:[148]
push.v self.MENU_NO
pushi.e 11
cmp.i.v EQ
bf [150]

:[149]
pushi.e 10
pop.v.i self.MENU_NO

:[150]
push.v self.MENU_NO
pushi.e 2
cmp.i.v EQ
bt [153]

:[151]
push.v self.MENU_NO
pushi.e 3
cmp.i.v EQ
bt [153]

:[152]
push.v self.MENU_NO
pushi.e 5
cmp.i.v EQ
b [154]

:[153]
push.e 1

:[154]
bf [214]

:[155]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [158]

:[156]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v LT
bf [158]

:[157]
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

:[158]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [161]

:[159]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 0
cmp.i.v GT
bf [161]

:[160]
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

:[161]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [163]

:[162]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
b [164]

:[163]
push.e 0

:[164]
bf [203]

:[165]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v LT
bf [201]

:[166]
push.v self.MENU_NO
pushi.e 3
cmp.i.v EQ
bf [177]

:[167]
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
cmp.v.v NEQ
bf [174]

:[168]
pushi.e -1
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
bf [170]

:[169]
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
b [173]

:[170]
push.s "DEVICE_MENU_slash_Step_0_gml_225_0"@29369
conv.s.v
push.s "THE DIVISION IS COMPLETE."@29370
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT
pushi.e 90
pop.v.i self.MESSAGETIMER
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [172]

:[171]
push.s "DEVICE_MENU_slash_Step_0_gml_227_0"@29371
conv.s.v
push.s "Copy complete."@29357
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT

:[172]
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

:[173]
b [177]

:[174]
push.s "DEVICE_MENU_slash_Step_0_gml_238_0"@29372
conv.s.v
push.s "IT IS IMMUNE TO ITS OWN IMAGE."@29373
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [176]

:[175]
push.s "DEVICE_MENU_slash_Step_0_gml_239_0"@29374
conv.s.v
push.s "You can't copy there."@29375
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT

:[176]
pushi.e 90
pop.v.i self.MESSAGETIMER
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.BACKNOISE

:[177]
push.v self.MENU_NO
pushi.e 2
cmp.i.v EQ
bf [189]

:[178]
pushi.e -1
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
bf [180]

:[179]
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
b [189]

:[180]
push.s "DEVICE_MENU_slash_Step_0_gml_261_0"@29376
conv.s.v
push.s "IT IS BARREN AND CANNOT BE COPIED."@29377
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT
pushi.e -1
pushi.e 0
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [183]

:[181]
pushi.e -1
pushi.e 1
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [183]

:[182]
pushi.e -1
pushi.e 2
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
b [184]

:[183]
push.e 0

:[184]
bf [186]

:[185]
push.s "DEVICE_MENU_slash_Step_0_gml_264_0"@29378
conv.s.v
push.s "BUT THERE WAS NOTHING LEFT TO COPY."@29379
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT

:[186]
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [188]

:[187]
push.s "DEVICE_MENU_slash_Step_0_gml_266_0"@29380
conv.s.v
push.s "It can't be copied."@29381
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT

:[188]
pushi.e 90
pop.v.i self.MESSAGETIMER
pushi.e 1
pop.v.i self.BACKNOISE
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER

:[189]
push.v self.MENU_NO
pushi.e 5
cmp.i.v EQ
bf [201]

:[190]
pushi.e -1
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
bf [192]

:[191]
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
b [201]

:[192]
push.s "DEVICE_MENU_slash_Step_0_gml_289_0"@29382
conv.s.v
push.s "BUT IT WAS ALREADY GONE."@29383
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT
pushi.e -1
pushi.e 0
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [195]

:[193]
pushi.e -1
pushi.e 1
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [195]

:[194]
pushi.e -1
pushi.e 2
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
b [196]

:[195]
push.e 0

:[196]
bf [198]

:[197]
push.s "DEVICE_MENU_slash_Step_0_gml_292_0"@29384
conv.s.v
push.s "BUT THERE WAS NOTHING LEFT TO ERASE."@29385
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT

:[198]
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [200]

:[199]
push.s "DEVICE_MENU_slash_Step_0_gml_294_0"@29386
conv.s.v
push.s "There's nothing to erase."@29387
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.TEMPCOMMENT

:[200]
pushi.e 90
pop.v.i self.MESSAGETIMER
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.BACKNOISE

:[201]
pushi.e -1
push.v self.MENU_NO
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v EQ
bf [203]

:[202]
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.SELNOISE
pushi.e 0
pop.v.i self.MENU_NO

:[203]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [205]

:[204]
push.v self.TWOBUFFER
pushi.e 0
cmp.i.v LT
b [206]

:[205]
push.e 0

:[206]
bf [214]

:[207]
pushi.e 2
pop.v.i self.TWOBUFFER
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.BACKNOISE
push.v self.MENU_NO
pushi.e 2
cmp.i.v EQ
bt [209]

:[208]
push.v self.MENU_NO
pushi.e 5
cmp.i.v EQ
b [210]

:[209]
push.e 1

:[210]
bf [212]

:[211]
pushi.e 0
pop.v.i self.MENU_NO

:[212]
push.v self.MENU_NO
pushi.e 3
cmp.i.v EQ
bf [214]

:[213]
pushi.e 2
pop.v.i self.MENU_NO

:[214]
push.v self.MENU_NO
pushi.e 0
cmp.i.v EQ
bt [216]

:[215]
push.v self.MENU_NO
pushi.e 10
cmp.i.v EQ
b [217]

:[216]
push.e 1

:[217]
bf [320]

:[218]
push.v self.MENU_NO
pop.v.v local.M
pushi.e 8
pop.v.i local.MAXY
pushloc.v local.M
pushi.e 10
cmp.i.v EQ
bf [220]

:[219]
pushi.e 3
pop.v.i local.MAXY

:[220]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [234]

:[221]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushloc.v local.MAXY
cmp.v.v LT
bf [234]

:[222]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v LT
bf [224]

:[223]
pushi.e -1
pushloc.v local.M
conv.v.i
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 1
add.i.v
pop.i.v [array]self.MENUCOORD
b [233]

:[224]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v EQ
bf [226]

:[225]
pushi.e 5
conv.i.v
pushi.e -1
pushloc.v local.M
conv.v.i
pop.v.v [array]self.MENUCOORD
b [233]

:[226]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 4
cmp.i.v EQ
bf [228]

:[227]
pushi.e 6
conv.i.v
pushi.e -1
pushloc.v local.M
conv.v.i
pop.v.v [array]self.MENUCOORD
b [233]

:[228]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 7
cmp.i.v EQ
bf [230]

:[229]
push.v self.CANQUIT
pushi.e 1
cmp.i.v EQ
b [231]

:[230]
push.e 0

:[231]
bf [233]

:[232]
pushi.e 8
conv.i.v
pushi.e -1
pushloc.v local.M
conv.v.i
pop.v.v [array]self.MENUCOORD

:[233]
pushi.e 1
pop.v.i self.MOVENOISE

:[234]
call.i gml_Script_up_p(argc=0)
conv.v.b
bf [252]

:[235]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 0
cmp.i.v GT
bf [252]

:[236]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v LT
bf [238]

:[237]
pushi.e -1
pushloc.v local.M
conv.v.i
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 1
sub.i.v
pop.i.v [array]self.MENUCOORD
b [251]

:[238]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v EQ
bt [241]

:[239]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 4
cmp.i.v EQ
bt [241]

:[240]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 7
cmp.i.v EQ
b [242]

:[241]
push.e 1

:[242]
bf [244]

:[243]
pushi.e 2
conv.i.v
pushi.e -1
pushloc.v local.M
conv.v.i
pop.v.v [array]self.MENUCOORD
b [251]

:[244]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 5
cmp.i.v EQ
bt [246]

:[245]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 6
cmp.i.v EQ
b [247]

:[246]
push.e 1

:[247]
bf [249]

:[248]
pushi.e -1
pushloc.v local.M
conv.v.i
dup.i 1
push.v [array]self.MENUCOORD
pushi.e 2
sub.i.v
pop.i.v [array]self.MENUCOORD
b [251]

:[249]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 8
cmp.i.v EQ
bf [251]

:[250]
pushi.e 7
conv.i.v
pushi.e -1
pushloc.v local.M
conv.v.i
pop.v.v [array]self.MENUCOORD

:[251]
pushi.e 1
pop.v.i self.MOVENOISE

:[252]
call.i gml_Script_right_p(argc=0)
conv.v.b
bf [265]

:[253]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v GTE
bf [255]

:[254]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 7
cmp.i.v LT
b [256]

:[255]
push.e 0

:[256]
bf [265]

:[257]
pushi.e 1
pop.v.i self.MOVENOISE
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 4
cmp.i.v EQ
bf [259]

:[258]
pushi.e 7
conv.i.v
pushi.e -1
pushloc.v local.M
conv.v.i
pop.v.v [array]self.MENUCOORD
b [265]

:[259]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 6
cmp.i.v EQ
bf [261]

:[260]
push.v self.CANQUIT
pushi.e 1
cmp.i.v EQ
b [262]

:[261]
push.e 0

:[262]
bf [264]

:[263]
pushi.e 8
conv.i.v
pushi.e -1
pushloc.v local.M
conv.v.i
pop.v.v [array]self.MENUCOORD
b [265]

:[264]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
popz.v
pushi.e -1
pushloc.v local.M
conv.v.i
dup.i 1
push.v [array]self.MENUCOORD
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]self.MENUCOORD
popz.v

:[265]
call.i gml_Script_left_p(argc=0)
conv.v.b
bf [276]

:[266]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 4
cmp.i.v GTE
bf [268]

:[267]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 5
cmp.i.v NEQ
b [269]

:[268]
push.e 0

:[269]
bf [276]

:[270]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 7
cmp.i.v EQ
bf [272]

:[271]
pushi.e 4
conv.i.v
pushi.e -1
pushloc.v local.M
conv.v.i
pop.v.v [array]self.MENUCOORD
b [275]

:[272]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 8
cmp.i.v EQ
bf [274]

:[273]
pushi.e 6
conv.i.v
pushi.e -1
pushloc.v local.M
conv.v.i
pop.v.v [array]self.MENUCOORD
b [275]

:[274]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
popz.v
pushi.e -1
pushloc.v local.M
conv.v.i
dup.i 1
push.v [array]self.MENUCOORD
dup.v 0
dup.i 4 48
push.e 1
sub.i.v
pop.i.v [array]self.MENUCOORD
popz.v

:[275]
pushi.e 1
pop.v.i self.MOVENOISE

:[276]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [278]

:[277]
push.v self.ONEBUFFER
pushi.e 0
cmp.i.v LT
b [279]

:[278]
push.e 0

:[279]
bf [314]

:[280]
pushi.e -1
pop.v.i self.MESSAGETIMER
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 2
cmp.i.v LTE
bf [295]

:[281]
pushi.e 1
pop.v.i local.FILECHECK
push.v self.MENU_NO
pushi.e 10
cmp.i.v EQ
bf [292]

:[282]
push.v self.INCOMPLETE_LOAD
pushi.e 0
cmp.i.v EQ
bf [284]

:[283]
pushi.e -1
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.COMPLETEFILE_PREV
pushi.e 1
cmp.i.v NEQ
b [285]

:[284]
push.e 0

:[285]
bf [287]

:[286]
pushi.e 0
pop.v.i local.FILECHECK

:[287]
push.v self.INCOMPLETE_LOAD
pushi.e 1
cmp.i.v EQ
bf [289]

:[288]
pushi.e -1
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.INCOMPLETEFILE_PREV
pushi.e 1
cmp.i.v NEQ
b [290]

:[289]
push.e 0

:[290]
bf [292]

:[291]
pushi.e 0
pop.v.i local.FILECHECK

:[292]
pushloc.v local.FILECHECK
conv.v.b
bf [294]

:[293]
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.M
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.TWOBUFFER
pushloc.v local.M
pushi.e 1
add.i.v
pop.v.v self.MENU_NO
pushi.e 1
pop.v.i self.SELNOISE
b [295]

:[294]
pushi.e 4
pop.v.i self.ONEBUFFER
pushi.e 144
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[295]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 3
cmp.i.v EQ
bf [299]

:[296]
pushloc.v local.M
pushi.e 0
cmp.i.v EQ
bf [298]

:[297]
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
b [299]

:[298]
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.TWOBUFFER
pushi.e 0
pop.v.i self.MENU_NO
pushi.e 1
pop.v.i self.SELNOISE

:[299]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 4
cmp.i.v EQ
bf [301]

:[300]
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

:[301]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 5
cmp.i.v EQ
bf [303]

:[302]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.MENUCOORD
pushi.e 1
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.TWOBUFFER
pushi.e 10
pop.v.i self.MENU_NO
pushi.e 1
pop.v.i self.SELNOISE

:[303]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 6
cmp.i.v EQ
bf [305]

:[304]
pushi.e 1
pop.v.i self.SELNOISE
call.i gml_Script_scr_change_language(argc=0)
popz.v
call.i gml_Script_scr_84_load_ini(argc=0)
popz.v

:[305]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 7
cmp.i.v EQ
bf [307]

:[306]
pushi.e 0
pop.v.b self.input_enabled
pushi.e 1
pop.v.i self.SELNOISE
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[307]
pushi.e -1
pushloc.v local.M
conv.v.i
push.v [array]self.MENUCOORD
pushi.e 8
cmp.i.v EQ
bf [309]

:[308]
push.v self.CANQUIT
conv.v.b
b [310]

:[309]
push.e 0

:[310]
bf [314]

:[311]
pushi.e 1
pop.v.i self.SELNOISE
pushglb.v global.is_console
conv.v.b
bf [313]

:[312]
call.i gml_Script_ossafe_game_end(argc=0)
popz.v
b [314]

:[313]
call.i game_end(argc=0)
popz.v

:[314]
call.i gml_Script_button2_p(argc=0)
conv.v.b
bf [316]

:[315]
push.v self.TWOBUFFER
pushi.e 0
cmp.i.v LT
b [317]

:[316]
push.e 0

:[317]
bf [320]

:[318]
pushi.e 1
pop.v.i self.ONEBUFFER
pushi.e 1
pop.v.i self.TWOBUFFER
pushi.e 1
pop.v.i self.BACKNOISE
push.v self.MENU_NO
pushi.e 10
cmp.i.v EQ
bf [320]

:[319]
pushi.e 0
pop.v.i self.MENU_NO

:[320]
push.v self.OBMADE
pushi.e 1
cmp.i.v EQ
bf [325]

:[321]
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
bf [325]

:[322]
pushi.e 887
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
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
bf [324]

:[323]
pushi.e 0
pop.v.i self.OB_DEPTH

:[324]
pushi.e 0
pop.v.i self.obacktimer

:[325]
push.v self.MOVENOISE
pushi.e 1
cmp.i.v EQ
bf [327]

:[326]
pushi.e 260
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.MOVENOISE

:[327]
push.v self.SELNOISE
pushi.e 1
cmp.i.v EQ
bf [329]

:[328]
pushi.e 261
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.SELNOISE

:[329]
push.v self.BACKNOISE
pushi.e 1
cmp.i.v EQ
bf [331]

:[330]
pushi.e 155
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.BACKNOISE

:[331]
push.v self.DEATHNOISE
pushi.e 1
cmp.i.v EQ
bf [333]

:[332]
pushi.e 255
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.DEATHNOISE

:[333]
push.v self.ONEBUFFER
pushi.e 1
sub.i.v
pop.v.v self.ONEBUFFER
push.v self.TWOBUFFER
pushi.e 1
sub.i.v
pop.v.v self.TWOBUFFER
push.v self.STARTGAME
pushi.e 1
cmp.i.v EQ
bf [end]

:[334]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [336]

:[335]
pushi.e 27
conv.i.v
call.i room_goto(argc=1)
popz.v

:[336]
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [end]

:[337]
pushi.e 28
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]