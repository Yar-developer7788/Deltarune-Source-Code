.localvar 2 arguments
.localvar 12166 room_index 4645
.localvar 13533 room_offset 4646

:[0]
b [30]

> gml_Script_scr_84_load_ini_ch1 (locals=2, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [4]

:[3]
push.i 66227721
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
push.i 66227721
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.FILE
push.i 66227708
setowner.e
push.s "DEVICE_MENU_slash_Create_0_gml_97_0"@13994
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.NAME
push.i 66227722
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME
push.i 66227723
setowner.e
push.s "------------"@12153
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.PLACE
push.i 66227724
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.LEVEL
push.i 66227725
setowner.e
push.s "--:--"@12156
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_STRING
push.i 66227726
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
push.s "filech1_0"@13995
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [9]

:[8]
push.i 66227721
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.FILE
push.i 66227708
setowner.e
push.s "DEVICE_MENU_slash_Create_0_gml_107_0"@13996
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.NAME

:[9]
push.s "filech1_1"@13997
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [11]

:[10]
push.i 66227721
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.FILE
push.i 66227708
setowner.e
push.s "DEVICE_MENU_slash_Create_0_gml_112_0"@13998
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 1
pop.v.v [array]self.NAME

:[11]
push.s "filech1_2"@13999
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [13]

:[12]
push.i 66227721
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.FILE
push.i 66227708
setowner.e
push.s "DEVICE_MENU_slash_Create_0_gml_117_0"@14000
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.NAME

:[13]
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [29]

:[14]
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_ini_open_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [28]

:[16]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.FILE
pushi.e 1
cmp.i.v EQ
bf [27]

:[17]
pushi.e 0
conv.i.v
push.s "Room"@9681
conv.s.v
push.s "G"@9482
push.v self.i
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v local.room_index
pushloc.v local.room_index
pop.v.v local.room_offset
pushloc.v local.room_index
pushi.e 281
cmp.i.v LT
bf [19]

:[18]
pushi.e 281
pushloc.v local.room_index
add.v.i
pop.v.v local.room_offset

:[19]
pushloc.v local.room_offset
pushi.e 1
conv.i.v
call.i gml_Script_scr_get_valid_room(argc=2)
pop.v.v local.room_offset
push.i 66227723
setowner.e
pushloc.v local.room_offset
call.i gml_Script_scr_roomname_ch1(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.PLACE
push.i 66227722
setowner.e
pushi.e 0
conv.i.v
push.s "Time"@9678
conv.s.v
push.s "G"@9482
push.v self.i
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME
push.i 66227708
setowner.e
push.s "------"@12167
conv.s.v
push.s "Name"@9672
conv.s.v
push.s "G"@9482
push.v self.i
call.i string(argc=1)
add.v.s
call.i ini_read_string(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.NAME
push.i 66227724
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.LEVEL
push.i 66227726
setowner.e
pushi.e 0
conv.i.v
push.s "InitLang"@9682
conv.s.v
push.s "G"@9482
push.v self.i
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.INITLANG
push.i 66227728
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
push.i 66227729
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
push.i 66227730
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
push.i 66227731
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
bf [21]

:[20]
push.s "00"@12172
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.TIME_SECONDS_STRING

:[21]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS
pushi.e 10
cmp.i.v LT
bf [23]

:[22]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.TIME_SECONDS
pushi.e 1
cmp.i.v GTE
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
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

:[26]
push.i 66227725
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

:[27]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[28]
call.i gml_Script_ossafe_ini_close_ch1(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save_ch1(argc=0)
popz.v

:[29]
exit.i

:[30]
push.i [function]gml_Script_scr_84_load_ini_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_load_ini_ch1
popz.v

:[end]