.localvar 2 arguments
.localvar 12166 room_index 21862
.localvar 13533 room_offset 21863
.localvar 29398 file_to_copy 21864
.localvar 12062 new_filename 21865
.localvar 29399 new_file 21866
.localvar 29400 copy_border 21867
.localvar 29401 copy_controls_list 21868
.localvar 29402 shoulder_reassign 21869
.localvar 107 i 21870

:[0]
push.s "dr.ini"@9669
conv.s.v
call.i gml_Script_ossafe_ini_open_ch1(argc=1)
pop.v.v self.iniwrite
push.s "------"@12167
conv.s.v
push.s "Name"@9672
conv.s.v
push.s "G"@9482
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_read_string(argc=3)
pop.v.v self._NEWNAME
pushi.e 0
conv.i.v
push.s "Time"@9678
conv.s.v
push.s "G"@9482
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v self._NEWTIME
pushi.e 0
conv.i.v
push.s "Room"@9681
conv.s.v
push.s "G"@9482
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v local.room_index
pushloc.v local.room_index
pop.v.v local.room_offset
pushloc.v local.room_index
pushi.e 281
cmp.i.v LT
bf [2]

:[1]
pushi.e 281
pushloc.v local.room_index
add.v.i
pop.v.v local.room_offset

:[2]
pushloc.v local.room_offset
pushi.e 1
conv.i.v
call.i gml_Script_scr_get_valid_room(argc=2)
pop.v.v local.room_offset
pushloc.v local.room_offset
pop.v.v self._NEWROOM
pushi.e 0
conv.i.v
push.s "Level"@9675
conv.s.v
push.s "G"@9482
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v self._NEWLEVEL
pushi.e 0
conv.i.v
push.s "InitLang"@9682
conv.s.v
push.s "G"@9482
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_read_real(argc=3)
pop.v.v self._NEWINITLANG
push.v self._NEWNAME
push.s "Name"@9672
conv.s.v
push.s "G"@9482
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_string(argc=3)
popz.v
push.v self._NEWTIME
push.s "Time"@9678
conv.s.v
push.s "G"@9482
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
push.v self._NEWROOM
push.s "Room"@9681
conv.s.v
push.s "G"@9482
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
push.v self._NEWLEVEL
push.s "Level"@9675
conv.s.v
push.s "G"@9482
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
push.v self._NEWINITLANG
push.s "InitLang"@9682
conv.s.v
push.s "G"@9482
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
call.i ini_write_real(argc=3)
popz.v
call.i gml_Script_ossafe_ini_close_ch1(argc=0)
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
pushglb.v global.is_console
conv.v.b
not.b
bf [6]

:[3]
push.s "filech1_"@6276
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s "filech1_"@6276
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
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
bf [5]

:[4]
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

:[5]
b [end]

:[6]
push.s "filech1_"@6276
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
pushglb.v global.savedata
call.i ds_map_find_value(argc=2)
pop.v.v local.file_to_copy
push.s "filech1_"@6276
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
pop.v.v local.new_filename
pushloc.v local.new_filename
call.i gml_Script_ossafe_file_text_open_write_ch1(argc=1)
pop.v.v local.new_file
pushloc.v local.file_to_copy
push.s "data"@147
conv.s.v
pushloc.v local.new_file
call.i ds_map_set(argc=3)
popz.v
pushloc.v local.new_file
call.i gml_Script_ossafe_file_text_close_ch1(argc=1)
popz.v
call.i gml_Script_ossafe_savedata_save_ch1(argc=0)
popz.v
push.s "keyconfig_"@20443
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_file_exists_ch1(argc=1)
conv.v.b
bf [end]

:[7]
push.s "keyconfig_"@20443
pushi.e -1
pushi.e 2
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_ini_open_ch1(argc=1)
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

:[8]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [10]

:[9]
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
b [8]

:[10]
push.v 1112.gamepad_shoulderlb_reassign
push.s "SHOULDERLB_REASSIGN"@20447
conv.s.v
push.s "SHOULDERLB_REASSIGN"@20447
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.shoulder_reassign
call.i gml_Script_ossafe_ini_close_ch1(argc=0)
popz.v
push.s "keyconfig_"@20443
pushi.e -1
pushi.e 3
push.v [array]self.MENUCOORD
call.i string(argc=1)
add.v.s
push.s ".ini"@20444
add.s.v
call.i gml_Script_ossafe_ini_open_ch1(argc=1)
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

:[11]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [13]

:[12]
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
b [11]

:[13]
pushloc.v local.shoulder_reassign
push.s "SHOULDERLB_REASSIGN"@20447
conv.s.v
push.s "SHOULDERLB_REASSIGN"@20447
conv.s.v
call.i ini_read_real(argc=3)
popz.v
call.i gml_Script_ossafe_ini_close_ch1(argc=0)
popz.v

:[end]