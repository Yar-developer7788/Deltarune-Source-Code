.localvar 2 arguments
.localvar 12148 CH 3766
.localvar 12166 room_index 3773

:[0]
b [28]

> gml_Script_scr_84_load_ini (locals=2, argc=0)
:[1]
pushglb.v global.chapter
call.i string(argc=1)
pop.v.v local.CH
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [4]

:[3]
push.i 47484425
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
b [2]

:[4]
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [7]

:[6]
push.i 47484425
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.FILE
push.i 47484412
setowner.e
push.s "scr_84_load_ini_slash_scr_84_load_ini_gml_13_0"@12150
conv.s.v
push.s "[EMPTY]"@12151
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.NAME
push.i 47484426
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME
push.i 47484427
setowner.e
push.s "------------"@12153
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.PLACE
push.i 47484428
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.LEVEL
push.i 47484429
setowner.e
push.s "--:--"@12156
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_STRING
push.i 47484430
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
b [5]

:[7]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_0"@12159
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [9]

:[8]
push.i 47484425
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.FILE
push.i 47484412
setowner.e
push.s "FILE0"@12160
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.NAME

:[9]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_1"@12161
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [11]

:[10]
push.i 47484425
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.FILE
push.i 47484412
setowner.e
push.s "FILE1"@12162
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.NAME

:[11]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_2"@12163
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [13]

:[12]
push.i 47484425
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.FILE
push.i 47484412
setowner.e
push.s "FILE2"@12164
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.NAME

:[13]
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [27]

:[14]
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_ini_open(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [26]

:[16]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
bf [25]

:[17]
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
push.i 47484427
setowner.e
pushloc.v local.room_index
call.i gml_Script_scr_roomname(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.PLACE
push.i 47484426
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
push.i 47484412
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
push.i 47484428
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.LEVEL
push.i 47484430
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
push.i 47484432
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
push.i 47484433
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
push.i 47484434
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
push.i 47484435
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
bf [19]

:[18]
push.s "00"@12172
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_SECONDS_STRING

:[19]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS
pushi.e 10
cmp.i.v LT
bf [21]

:[20]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS
pushi.e 1
cmp.i.v GTE
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
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

:[24]
push.i 47484429
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

:[25]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[26]
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save(argc=0)
popz.v

:[27]
exit.i

:[28]
push.i [function]gml_Script_scr_84_load_ini
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_load_ini
popz.v

:[end]