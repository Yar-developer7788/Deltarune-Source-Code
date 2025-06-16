.localvar 2 arguments
.localvar 12166 room_index 21953
.localvar 13533 room_offset 21954

:[0]
pushi.e 0
pop.v.i self.cur_jewel
pushi.e 0
pop.v.i self.saved
pushi.e 0
pop.v.i self.coord
pushi.e 0
pop.v.i self.ini_ex
pushi.e 3
pop.v.i self.buffer
push.s "obj_savemenu_slash_Create_0_gml_7_0"@41938
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.name
pushi.e 1
pop.v.i self.level
pushi.e 1
pop.v.i self.love
pushi.e 0
pop.v.i self.time
pushi.e 0
pop.v.i self.roome
pushi.e 0
pop.v.i self.endme
pushi.e 0
pop.v.b self.save_data_error
pushi.e 1
pop.v.i global.interact
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 1
pop.v.i self.ini_ex
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_ini_open_ch1(argc=1)
pop.v.v self.iniread
push.s "Kris"@1493
conv.s.v
push.s "Name"@9672
conv.s.v
push.s "G"@9482
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_read_string(argc=3)
pop.v.v self.name
pushi.e 1
conv.i.v
push.s "Level"@9675
conv.s.v
push.s "G"@9482
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v self.level
pushi.e 1
conv.i.v
push.s "Love"@9677
conv.s.v
push.s "G"@9482
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v self.love
pushi.e 0
conv.i.v
push.s "Time"@9678
conv.s.v
push.s "G"@9482
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v self.time
pushi.e 0
conv.i.v
push.s "Room"@9681
conv.s.v
push.s "G"@9482
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v local.room_index
pushloc.v local.room_index
pop.v.v local.room_offset
pushloc.v local.room_index
pushi.e 281
cmp.i.v LT
bf [3]

:[2]
pushi.e 281
pushloc.v local.room_index
add.v.i
pop.v.v local.room_offset

:[3]
pushloc.v local.room_offset
pushi.e 1
conv.i.v
call.i gml_Script_scr_get_valid_room(argc=2)
pop.v.v local.room_offset
pushloc.v local.room_offset
pop.v.v self.roome
call.i gml_Script_ossafe_ini_close_ch1(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save_ch1(argc=0)
popz.v

:[4]
pushglb.v global.darkzone
pushi.e 1
add.i.v
pop.v.v self.d
push.v self.time
pushi.e 1800
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.minutes
push.v self.time
pushi.e 1800
conv.i.d
div.d.v
push.v self.minutes
sub.v.v
pushi.e 60
mul.i.v
call.i round(argc=1)
pop.v.v self.seconds
push.v self.seconds
pushi.e 60
cmp.i.v EQ
bf [6]

:[5]
pushi.e 59
pop.v.i self.seconds

:[6]
push.v self.seconds
pushi.e 10
cmp.i.v LT
bf [8]

:[7]
push.s "0"@3491
push.v self.seconds
call.i string(argc=1)
add.v.s
pop.v.v self.seconds

:[8]
push.v self.roome
call.i gml_Script_scr_roomname_ch1(argc=1)
popz.v
push.v self.d
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 4281
pop.v.i self.heartsprite

:[10]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 4283
pop.v.i self.heartsprite

:[12]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [end]

:[13]
push.s "obj_savemenu_slash_Create_0_gml_43_0"@41939
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pop.v.v self.name

:[end]