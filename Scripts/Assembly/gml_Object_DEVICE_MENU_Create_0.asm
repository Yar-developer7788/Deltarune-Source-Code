.localvar 2 arguments
.localvar 12166 room_index 15386
.localvar 29318 cadd 15387
.localvar 29329 loadcompletion 15393
.localvar 29339 INITMENU 15399

:[0]
pushi.e 1
pop.v.i self.TYPE
pushi.e 0
pop.v.i self.SUBTYPE
pushglb.v global.chapter
call.i string(argc=1)
pop.v.v self.CH
push.s "filech"@9691
push.v self.CH
add.v.s
push.s "_3"@14322
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.SUBTYPE

:[2]
push.s "filech"@9691
push.v self.CH
add.v.s
push.s "_4"@21228
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e 1
pop.v.i self.SUBTYPE

:[4]
push.s "filech"@9691
push.v self.CH
add.v.s
push.s "_5"@21229
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e 1
pop.v.i self.SUBTYPE

:[6]
push.i 172682
setowner.e
push.s "filech"@9691
pushglb.v global.chapter
pushi.e 1
sub.i.v
call.i string(argc=1)
add.v.s
push.s "_3"@14322
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.COMPLETEFILE_PREV
push.s "filech"@9691
pushglb.v global.chapter
pushi.e 1
sub.i.v
call.i string(argc=1)
add.v.s
push.s "_4"@21228
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.COMPLETEFILE_PREV
push.s "filech"@9691
pushglb.v global.chapter
pushi.e 1
sub.i.v
call.i string(argc=1)
add.v.s
push.s "_5"@21229
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.COMPLETEFILE_PREV
push.i 172683
setowner.e
push.s "filech"@9691
pushglb.v global.chapter
pushi.e 1
sub.i.v
call.i string(argc=1)
add.v.s
push.s "_0"@12159
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.INCOMPLETEFILE_PREV
push.s "filech"@9691
pushglb.v global.chapter
pushi.e 1
sub.i.v
call.i string(argc=1)
add.v.s
push.s "_1"@12161
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.INCOMPLETEFILE_PREV
push.s "filech"@9691
pushglb.v global.chapter
pushi.e 1
sub.i.v
call.i string(argc=1)
add.v.s
push.s "_2"@12163
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.INCOMPLETEFILE_PREV
pushi.e 0
pop.v.i self.INCOMPLETE_LOAD
pushglb.v global.is_console
conv.v.b
bf [19]

:[7]
pushglb.v global.game_won
pushi.e 1
cmp.i.v EQ
bf [19]

:[8]
pushi.e -1
pushi.e 0
push.v [array]self.COMPLETEFILE_PREV
pushi.e 0
cmp.i.v EQ
bf [11]

:[9]
pushi.e -1
pushi.e 1
push.v [array]self.COMPLETEFILE_PREV
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e -1
pushi.e 2
push.v [array]self.COMPLETEFILE_PREV
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [19]

:[13]
pushi.e -1
pushi.e 0
push.v [array]self.INCOMPLETEFILE_PREV
pushi.e 1
cmp.i.v EQ
bt [16]

:[14]
pushi.e -1
pushi.e 1
push.v [array]self.INCOMPLETEFILE_PREV
pushi.e 1
cmp.i.v EQ
bt [16]

:[15]
pushi.e -1
pushi.e 2
push.v [array]self.INCOMPLETEFILE_PREV
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 1

:[17]
bf [19]

:[18]
pushi.e 1
pop.v.i self.INCOMPLETE_LOAD

:[19]
push.v self.TYPE
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.s "DEVICE_MENU_slash_Create_0_gml_8_0"@29285
conv.s.v
push.s "CONTACT"@29047
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i gml_Script_scr_windowcaption(argc=1)
popz.v
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

:[21]
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [29]

:[22]
pushi.e 191
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 10
pop.v.v [array]self.tempflag
push.s "DEVICE_MENU_slash_Create_0_gml_17_0"@29286
conv.s.v
push.s "DELTARUNE"@132
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
call.i gml_Script_scr_windowcaption(argc=1)
popz.v
push.v self.SUBTYPE
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.i 231459
setowner.e
push.s "menu.ogg"@29287
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong

:[24]
push.v self.SUBTYPE
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.s "AUDIO_STORY.ogg"@29288
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong

:[26]
push.v self.SUBTYPE
pushi.e 1
cmp.i.v GTE
bf [28]

:[27]
push.i 231375
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 39
pop.v.v [array]self.tempflag

:[28]
push.i 231459
setowner.e
push.d 0.95
conv.d.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[29]
pushi.e 0
pop.v.i self.BGMADE
pushi.e 0
pop.v.i self.BG_ALPHA
pushi.e 0
pop.v.i self.BG_SINER
pushi.e 0
pop.v.i self.OBMADE
pushi.e 0
pop.v.i self.OB_DEPTH
pushi.e 0
pop.v.i self.obacktimer
push.d 0.5
pop.v.d self.OBM
push.i 32768
pop.v.i self.COL_A
push.i 65280
pop.v.i self.COL_B
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 65280
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.COL_PLUS
pushi.e 0
pop.v.i self.jamod
push.v self.TYPE
pushi.e 1
cmp.i.v EQ
bf [32]

:[30]
pushi.e 0
pop.v.i self.BGSINER
pushi.e 6
pop.v.i self.BGMAGNITUDE
push.d 0.2
conv.d.v
push.i 8388608
conv.i.v
push.i 12632256
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.COL_A
push.i 16777215
pop.v.i self.COL_B
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
push.i 65535
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.COL_PLUS
pushi.e 1
pop.v.i self.BGMADE
pushi.e 0
pop.v.i self.BG_ALPHA
pushi.e 0
pop.v.i self.ANIM_SINER
pushi.e 0
pop.v.i self.ANIM_SINER_B
pushi.e 0
pop.v.i self.TRUE_ANIM_SINER
push.v self.SUBTYPE
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
push.d 0.2
conv.d.v
pushi.e 128
conv.i.v
push.i 12632256
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.COL_A
push.i 16777215
pop.v.i self.COL_B
push.d 0.4
conv.d.v
push.i 16777215
conv.i.v
push.i 65535
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.COL_PLUS
pushi.e 0
pop.v.i self.BGMADE

:[32]
pushi.e 0
pop.v.i self.MENU_NO
pushi.e 0
pop.v.i self.i

:[33]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [35]

:[34]
push.i 172697
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.MENUCOORD
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [33]

:[35]
pushi.e 210
pop.v.i self.XL
pushi.e 40
pop.v.i self.YL
pushi.e 5
pop.v.i self.YS
pushi.e 75
pop.v.i self.HEARTX
pushi.e 110
pop.v.i self.HEARTY
pushi.e 75
pop.v.i self.HEARTXCUR
pushi.e 75
pop.v.i self.HEARTYCUR
pushi.e 0
pop.v.i self.MOVENOISE
pushi.e 0
pop.v.i self.SELNOISE
pushi.e 0
pop.v.i self.BACKNOISE
pushi.e 0
pop.v.i self.DEATHNOISE
pushi.e 0
pop.v.i self.STARTGAME
pushi.e 0
pop.v.i self.REMMENU
pushi.e 1
pop.v.i self.CANQUIT
pushglb.v global.is_console
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
pushi.e 0
pop.v.i self.CANQUIT

:[37]
pushi.e 2
pop.v.i self.ONEBUFFER
pushi.e 0
pop.v.i self.TWOBUFFER
pushi.e 0
pop.v.i self.THREAT
push.s " "@353
pop.v.s self.TEMPMESSAGE
pushi.e 0
pop.v.i self.MESSAGETIMER
pushglb.v global.version
pop.v.v self.version_text
pushi.e 0
pop.v.i self.i

:[38]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [40]

:[39]
push.i 167433
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.FILE
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [38]

:[40]
pushi.e 0
pop.v.i self.i

:[41]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [43]

:[42]
push.i 167433
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.FILE
push.i 167420
setowner.e
push.s "DEVICE_MENU_slash_Create_0_gml_97_0"@13994
conv.s.v
push.s "[EMPTY]"@12151
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.NAME
push.i 167434
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME
push.i 167435
setowner.e
push.s "------------"@12153
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.PLACE
push.i 167436
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.LEVEL
push.i 167437
setowner.e
push.s "--:--"@12156
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_STRING
push.i 167438
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.INITLANG
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [41]

:[43]
push.s "filech"@9691
push.v self.CH
add.v.s
push.s "_0"@12159
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [45]

:[44]
push.i 167433
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.FILE
push.i 167420
setowner.e
push.s "FILE0"@12160
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.NAME

:[45]
push.s "filech"@9691
push.v self.CH
add.v.s
push.s "_1"@12161
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [47]

:[46]
push.i 167433
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.FILE
push.i 167420
setowner.e
push.s "FILE1"@12162
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.NAME

:[47]
push.s "filech"@9691
push.v self.CH
add.v.s
push.s "_2"@12163
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [49]

:[48]
push.i 167433
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.FILE
push.i 167420
setowner.e
push.s "FILE2"@12164
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.NAME

:[49]
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [89]

:[50]
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_ini_open(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[51]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [62]

:[52]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
bf [61]

:[53]
pushi.e 0
conv.i.v
push.s "Room"@9681
conv.s.v
push.v self.i
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pushglb.v global.chapter
call.i gml_Script_scr_get_valid_room(argc=2)
pop.v.v local.room_index
push.i 167435
setowner.e
pushloc.v local.room_index
call.i gml_Script_scr_roomname(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.PLACE
push.i 167434
setowner.e
pushi.e 0
conv.i.v
push.s "Time"@9678
conv.s.v
push.v self.i
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME
push.i 167420
setowner.e
push.s "------"@12167
conv.s.v
push.s "Name"@9672
conv.s.v
push.v self.i
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_string(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.NAME
push.i 167436
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.LEVEL
push.i 167438
setowner.e
pushi.e 0
conv.i.v
push.s "InitLang"@9682
conv.s.v
push.v self.i
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.INITLANG
push.i 167440
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME
pushi.e 30
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_SECONDS_TOTAL
push.i 167441
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS_TOTAL
pushi.e 60
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_MINUTES
push.i 167442
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS_TOTAL
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_MINUTES
pushi.e 60
mul.i.v
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_SECONDS
push.i 167443
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS
call.i string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_SECONDS_STRING
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
push.s "00"@12172
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_SECONDS_STRING

:[55]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS
pushi.e 10
cmp.i.v LT
bf [57]

:[56]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS
pushi.e 1
cmp.i.v GTE
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
push.s "0"@3491
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS
call.i string(argc=1)
add.v.s
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_SECONDS_STRING

:[60]
push.i 167437
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_MINUTES
call.i string(argc=1)
push.s ":"@6158
add.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS_STRING
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_STRING

:[61]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [51]

:[62]
pushi.e 3
pop.v.i local.cadd
push.v self.INCOMPLETE_LOAD
conv.v.b
bf [64]

:[63]
pushi.e 0
pop.v.i local.cadd

:[64]
pushi.e 0
pop.v.i self.i

:[65]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [88]

:[66]
push.i 172715
setowner.e
push.s "DEVICE_MENU_slash_Create_0_gml_182_0"@29319
conv.s.v
push.s "NO DATA"@29320
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.COMPLETEFILE_PREV_NAME
push.i 172716
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.COMPLETEFILE_PREV_TIME
push.i 172717
setowner.e
push.s "DEVICE_MENU_slash_Create_0_gml_221_0"@29323
conv.s.v
push.s "CHAPTER 1"@29324
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.COMPLETEFILE_PREV_PLACE
push.i 172718
setowner.e
push.s "DEVICE_MENU_slash_Create_0_gml_185_0"@29326
conv.s.v
push.s "NO DATA"@29320
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.INCOMPLETEFILE_PREV_NAME
push.i 172719
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.INCOMPLETEFILE_PREV_TIME
pushi.e 0
pop.v.i local.loadcompletion
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.COMPLETEFILE_PREV
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
push.v self.INCOMPLETE_LOAD
pushi.e 0
cmp.i.v EQ
b [69]

:[68]
push.e 0

:[69]
bf [71]

:[70]
pushi.e 1
pop.v.i local.loadcompletion

:[71]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.INCOMPLETEFILE_PREV
pushi.e 1
cmp.i.v EQ
bf [73]

:[72]
push.v self.INCOMPLETE_LOAD
pushi.e 1
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [76]

:[75]
pushi.e 1
pop.v.i local.loadcompletion

:[76]
pushloc.v local.loadcompletion
conv.v.b
bf [85]

:[77]
push.i 172715
setowner.e
push.s "DEVICE_MENU_slash_Create_0_gml_190_0"@29330
conv.s.v
push.s "UNKNOWN FILE"@29331
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.COMPLETEFILE_PREV_NAME
push.s "------"@12167
conv.s.v
push.s "Name"@9672
conv.s.v
push.v self.i
pushloc.v local.cadd
add.v.v
pushglb.v global.chapter
pushi.e 1
sub.i.v
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_string(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.COMPLETEFILE_PREV_NAME
push.i 172716
setowner.e
pushi.e 0
conv.i.v
push.s "Time"@9678
conv.s.v
push.v self.i
pushloc.v local.cadd
add.v.v
pushglb.v global.chapter
pushi.e 1
sub.i.v
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.COMPLETEFILE_PREV_TIME
push.i 172717
setowner.e
push.s "DEVICE_MENU_slash_Create_0_gml_237_0"@29332
conv.s.v
push.s "CHAPTER 1"@29324
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.COMPLETEFILE_PREV_PLACE
push.i 172721
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.COMPLETEFILE_PREV_TIME
pushi.e 30
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.COMPLETETIME_SECONDS_TOTAL
push.i 172722
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.COMPLETETIME_SECONDS_TOTAL
pushi.e 60
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.COMPLETETIME_MINUTES
push.i 172723
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.COMPLETETIME_SECONDS_TOTAL
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.COMPLETETIME_MINUTES
pushi.e 60
mul.i.v
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.COMPLETETIME_SECONDS
push.i 172724
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.COMPLETETIME_SECONDS
call.i string(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.COMPLETETIME_SECONDS_STRING
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.COMPLETETIME_SECONDS
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
push.s "00"@12172
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.COMPLETETIME_SECONDS_STRING

:[79]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.COMPLETETIME_SECONDS
pushi.e 10
cmp.i.v LT
bf [81]

:[80]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.COMPLETETIME_SECONDS
pushi.e 1
cmp.i.v GTE
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
push.s "0"@3491
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.COMPLETETIME_SECONDS
call.i string(argc=1)
add.v.s
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.COMPLETETIME_SECONDS_STRING

:[84]
push.i 172725
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.COMPLETETIME_MINUTES
call.i string(argc=1)
push.s ":"@6158
add.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.COMPLETETIME_SECONDS_STRING
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.COMPLETETIME_STRING

:[85]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.INCOMPLETEFILE_PREV
conv.v.b
bf [87]

:[86]
push.i 172718
setowner.e
push.s "DEVICE_MENU_slash_Create_0_gml_205_0"@29338
conv.s.v
push.s "UNKNOWN FILE"@29331
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.INCOMPLETEFILE_PREV_NAME
push.s "------"@12167
conv.s.v
push.s "Name"@9672
conv.s.v
push.v self.i
pushglb.v global.chapter
pushi.e 1
sub.i.v
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_string(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.INCOMPLETEFILE_PREV_NAME
push.i 172719
setowner.e
pushi.e 0
conv.i.v
push.s "Time"@9678
conv.s.v
push.v self.i
pushglb.v global.chapter
pushi.e 1
sub.i.v
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.INCOMPLETEFILE_PREV_TIME

:[87]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [65]

:[88]
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save(argc=0)
popz.v

:[89]
pushi.e 0
pop.v.i local.INITMENU
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [103]

:[90]
pushi.e -1
pushi.e 0
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [93]

:[91]
pushi.e -1
pushi.e 1
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
bf [93]

:[92]
pushi.e -1
pushi.e 2
push.v [array]self.FILE
pushi.e 0
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [103]

:[95]
pushi.e -1
pushi.e 0
push.v [array]self.COMPLETEFILE_PREV
pushi.e 1
cmp.i.v EQ
bt [98]

:[96]
pushi.e -1
pushi.e 1
push.v [array]self.COMPLETEFILE_PREV
pushi.e 1
cmp.i.v EQ
bt [98]

:[97]
pushi.e -1
pushi.e 2
push.v [array]self.COMPLETEFILE_PREV
pushi.e 1
cmp.i.v EQ
b [99]

:[98]
push.e 1

:[99]
bf [101]

:[100]
pushi.e 10
pop.v.i local.INITMENU

:[101]
push.v self.INCOMPLETE_LOAD
pushi.e 1
cmp.i.v EQ
bf [103]

:[102]
pushi.e 10
pop.v.i local.INITMENU

:[103]
pushloc.v local.INITMENU
pop.v.v self.MENU_NO
pushi.e 5
pop.v.i self.depth
pushi.e 0
pop.v.i self.jamod
pushi.e 1
pop.v.b self.input_enabled

:[end]