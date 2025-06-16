.localvar 2 arguments
.localvar 107 i 18472
.localvar 12166 room_index 18489

:[0]
pushi.e 0
pop.v.i self.cur_jewel
pushi.e 0
pop.v.i self.saved
pushi.e 0
pop.v.i self.xcoord
pushi.e 0
pop.v.i self.ycoord
pushi.e 0
pop.v.i self.ini_ex
pushi.e 3
pop.v.i self.buffer
pushi.e 0
pop.v.b self.is_saving
pushi.e 0
pop.v.b self.save_data_error
push.s "obj_savemenu_slash_Create_0_gml_8_0"@36867
conv.s.v
push.s "Kris"@1493
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
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
pop.v.i self.saved
pushi.e 0
pop.v.i self.endme
pushi.e 0
pop.v.i self.menuno
pushglb.v global.filechoice
pop.v.v self.mpos
pushi.e 0
pop.v.i self.overwrite
pushi.e 0
pop.v.i self.overcoord
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.type
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [2]

:[1]
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
pushglb.v global.plot
pushi.e 12
cmp.i.v GTE
bf [6]

:[5]
pushi.e 1
pop.v.i self.type

:[6]
pushi.e 1
pop.v.i self.haverecruited
pushi.e 1
pop.v.i self.recruitsubtype
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [13]

:[7]
pushbltn.v builtin.room
pushi.e 84
cmp.i.v GTE
bf [13]

:[8]
pushi.e 2
pop.v.i self.recruitsubtype
pushi.e 0
pop.v.i self.haverecruited
pushi.e 25
pop.v.i local.i

:[9]
pushloc.v local.i
pushi.e 50
cmp.i.v LT
bf [13]

:[10]
pushi.e -5
pushi.e 600
pushloc.v local.i
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
pushi.e 1
pop.v.i self.haverecruited
b [13]

:[12]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [9]

:[13]
pushbltn.v builtin.room
pop.v.v global.currentroom
pushi.e 1
pop.v.i global.interact
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [15]

:[14]
pushi.e 1
pop.v.i self.ini_ex
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_ini_open(argc=1)
pop.v.v self.iniread
push.s "obj_savemenu_slash_Create_0_gml_8_0"@36867
conv.s.v
push.s "Kris"@1493
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "Name"@9672
conv.s.v
pushglb.v global.filechoice
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_string(argc=3)
pop.v.v self.name
pushi.e 1
conv.i.v
push.s "Level"@9675
conv.s.v
pushglb.v global.filechoice
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pop.v.v self.level
pushi.e 1
conv.i.v
push.s "Love"@9677
conv.s.v
pushglb.v global.filechoice
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pop.v.v self.love
pushi.e 0
conv.i.v
push.s "Time"@9678
conv.s.v
pushglb.v global.filechoice
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pop.v.v self.time
pushi.e 0
conv.i.v
push.s "Room"@9681
conv.s.v
pushglb.v global.filechoice
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pop.v.v self.roome
push.v self.roome
pushglb.v global.chapter
call.i gml_Script_scr_get_valid_room(argc=2)
pop.v.v self.roome
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save(argc=0)
popz.v

:[15]
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
bf [17]

:[16]
pushi.e 59
pop.v.i self.seconds

:[17]
push.v self.seconds
pushi.e 10
cmp.i.v LT
bf [19]

:[18]
push.s "0"@3491
push.v self.seconds
call.i string(argc=1)
add.v.s
pop.v.v self.seconds

:[19]
push.v self.roome
call.i gml_Script_scr_roomname(argc=1)
popz.v
push.v self.d
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
pushi.e 2531
pop.v.i self.heartsprite

:[21]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 2537
pop.v.i self.heartsprite

:[23]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_savemenu_slash_Create_0_gml_75_0"@36877
conv.s.v
push.s "Kris"@1493
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.name

:[25]
pushglb.v global.truename
pop.v.v self.name_current
pushglb.v global.llv
pop.v.v self.love_current
pushbltn.v builtin.room
call.i gml_Script_scr_roomname(argc=1)
pop.v.v self.room_current
pushglb.v global.lv
pop.v.v self.level_current
pushglb.v global.time
pop.v.v self.time_current
pushi.e 0
pop.v.i local.i

:[26]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [end]

:[27]
push.i 174534
setowner.e
push.s "obj_savemenu_slash_Create_0_gml_8_0"@36867
conv.s.v
push.s "Kris"@1493
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.name_file
push.i 174535
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.level_file
push.i 174536
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.love_file
push.i 174537
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.time_file
push.i 174538
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.roome_file
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [29]

:[28]
push.i 174539
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.ini_ex_file
push.i 174540
setowner.e
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_ini_open(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.iniread_file
push.i 174534
setowner.e
push.s "obj_savemenu_slash_Create_0_gml_8_0"@36867
conv.s.v
push.s "Kris"@1493
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "Name"@9672
conv.s.v
pushloc.v local.i
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_string(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.name_file
push.i 174535
setowner.e
pushi.e 0
conv.i.v
push.s "Level"@9675
conv.s.v
pushloc.v local.i
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.level_file
push.i 174536
setowner.e
pushi.e 1
conv.i.v
push.s "Love"@9677
conv.s.v
pushloc.v local.i
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.love_file
push.i 174537
setowner.e
pushi.e 0
conv.i.v
push.s "Time"@9678
conv.s.v
pushloc.v local.i
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.time_file
pushi.e 0
conv.i.v
push.s "Room"@9681
conv.s.v
pushloc.v local.i
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pop.v.v local.room_index
push.i 174538
setowner.e
pushloc.v local.room_index
pushglb.v global.chapter
call.i gml_Script_scr_get_valid_room(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.roome_file
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save(argc=0)
popz.v

:[29]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [26]

:[end]