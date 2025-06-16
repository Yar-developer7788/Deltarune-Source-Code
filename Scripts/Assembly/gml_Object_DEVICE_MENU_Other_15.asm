.localvar 2 arguments
.localvar 12166 room_index 15417
.localvar 12148 CH 15424
.localvar 29398 file_to_copy 15425
.localvar 12062 new_filename 15426
.localvar 29399 new_file 15427
.localvar 29400 copy_border 15428
.localvar 29401 copy_controls_list 15429
.localvar 29402 shoulder_reassign 15431
.localvar 107 i 15432

:[0]
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_ini_open(argc=1)
pop.v.v self.iniwrite
push.s "------"@12167
conv.s.v
push.s "Name"@9672
conv.s.v
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_string(argc=3)
pop.v.v self._NEWNAME
pushi.e 0
conv.i.v
push.s "Time"@9678
conv.s.v
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pop.v.v self._NEWTIME
pushi.e 0
conv.i.v
push.s "Room"@9681
conv.s.v
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pushglb.v global.chapter
call.i gml_Script_scr_get_valid_room(argc=2)
pop.v.v local.room_index
pushloc.v local.room_index
pop.v.v self._NEWROOM
pushi.e 0
conv.i.v
push.s "Level"@9675
conv.s.v
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pop.v.v self._NEWLEVEL
pushi.e 0
conv.i.v
push.s "Date"@9680
conv.s.v
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pop.v.v self._NEWDATE
pushi.e 0
conv.i.v
push.s "InitLang"@9682
conv.s.v
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pop.v.v self._NEWINITLANG
pushi.e 0
conv.i.v
push.s "UraBoss"@9684
conv.s.v
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_real(argc=3)
pop.v.v self._NEWURABOSS
push.s "0"@3491
conv.s.v
push.s "Version"@9686
conv.s.v
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_read_string(argc=3)
pop.v.v self._NEWVERSION
push.v self._NEWNAME
push.s "Name"@9672
conv.s.v
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_string(argc=3)
popz.v
push.v self._NEWTIME
push.s "Time"@9678
conv.s.v
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
push.v self._NEWROOM
push.s "Room"@9681
conv.s.v
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
push.v self._NEWLEVEL
push.s "Level"@9675
conv.s.v
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
push.v self._NEWDATE
push.s "Date"@9680
conv.s.v
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
push.v self._NEWINITLANG
push.s "InitLang"@9682
conv.s.v
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
push.v self._NEWURABOSS
push.s "UraBoss"@9684
conv.s.v
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_real(argc=3)
popz.v
push.v self._NEWVERSION
push.s "Version"@9686
conv.s.v
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
pushglb.v global.chapter
call.i gml_Script_scr_ini_chapter(argc=2)
call.i ini_write_string(argc=3)
popz.v
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v
push.i 167433
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.FILE
push.i 167435
setowner.e
pushi.e -1
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.PLACE
pushi.e -1
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.PLACE
push.i 167434
setowner.e
pushi.e -1
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.TIME
pushi.e -1
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.TIME
push.i 167420
setowner.e
pushi.e -1
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.NAME
pushi.e -1
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.NAME
push.i 167436
setowner.e
pushi.e -1
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.LEVEL
pushi.e -1
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.LEVEL
push.i 167438
setowner.e
pushi.e -1
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.INITLANG
pushi.e -1
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.INITLANG
push.i 167437
setowner.e
pushi.e -1
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
conv.v.i
push.v [array]self.TIME_STRING
pushi.e -1
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
conv.v.i
pop.v.v [array]self.TIME_STRING
pushglb.v global.chapter
call.i string(argc=1)
pop.v.v local.CH
pushglb.v global.is_console
conv.v.b
not.b
bf [4]

:[1]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_"@9692
add.s.v
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.v
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_"@9692
add.s.v
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.v
call.i file_copy(argc=2)
popz.v
push.s "keyconfig_"@20443
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i file_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.s "keyconfig_"@20443
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
push.s "keyconfig_"@20443
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i file_copy(argc=2)
popz.v

:[3]
b [end]

:[4]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_"@9692
add.s.v
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.v
pushglb.v global.savedata
call.i ds_map_find_value(argc=2)
pop.v.v local.file_to_copy
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_"@9692
add.s.v
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.v
pop.v.v local.new_filename
pushloc.v local.new_filename
call.i gml_Script_ossafe_file_text_open_write(argc=1)
pop.v.v local.new_file
pushloc.v local.file_to_copy
push.s "data"@147
conv.s.v
pushloc.v local.new_file
call.i ds_map_set(argc=3)
popz.v
pushloc.v local.new_file
call.i gml_Script_ossafe_file_text_close(argc=1)
popz.v
call.i gml_Script_ossafe_savedata_save(argc=0)
popz.v
push.s "keyconfig_"@20443
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bf [end]

:[5]
push.s "keyconfig_"@20443
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_ini_open(argc=1)
popz.v
pushglb.v global.screen_border_id
push.s "TYPE"@20449
conv.s.v
push.s "BORDER"@20450
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v local.copy_border
push.i 172749
setowner.e
call.i @@NewGMLArray@@(argc=0)
pop.v.v local.copy_controls_list
push.v 1112.gamepad_shoulderlb_reassign
pop.v.v local.shoulder_reassign
pushi.e 0
pop.v.i local.i

:[6]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [8]

:[7]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_g
pushloc.v local.i
call.i string(argc=1)
push.s "GAMEPAD_CONTROLS"@20446
conv.s.v
call.i ini_read_real(argc=3)
pushi.e -7
pushloc.v local.i
conv.v.i
pop.v.v [array]self.copy_controls_list
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [6]

:[8]
push.v 1112.gamepad_shoulderlb_reassign
push.s "SHOULDERLB_REASSIGN"@20447
conv.s.v
push.s "SHOULDERLB_REASSIGN"@20447
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.shoulder_reassign
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v
push.s "keyconfig_"@20443
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_ini_open(argc=1)
popz.v
pushloc.v local.copy_border
push.s "TYPE"@20449
conv.s.v
push.s "BORDER"@20450
conv.s.v
call.i ini_write_string(argc=3)
popz.v
pushi.e 0
pop.v.i local.i

:[9]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [11]

:[10]
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.copy_controls_list
pushloc.v local.i
call.i string(argc=1)
push.s "GAMEPAD_CONTROLS"@20446
conv.s.v
call.i ini_write_real(argc=3)
popz.v
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [9]

:[11]
pushloc.v local.shoulder_reassign
push.s "SHOULDERLB_REASSIGN"@20447
conv.s.v
push.s "SHOULDERLB_REASSIGN"@20447
conv.s.v
call.i ini_read_real(argc=3)
popz.v
call.i gml_Script_ossafe_ini_close(argc=0)
popz.v

:[end]