.localvar 2 arguments
.localvar 107 i 6294

:[0]
push.v self.error_type
push.s "save_failed"@14502
cmp.s.v EQ
bf [2]

:[1]
push.v self.text_save_failed
pop.v.v self.window_text
b [6]

:[2]
push.v self.error_type
push.s "save_data_corrupt"@14515
cmp.s.v EQ
bf [4]

:[3]
push.v self.text_save_data_corrupt
pop.v.v self.window_text
b [6]

:[4]
push.v self.error_type
push.s "temp_save_failed"@9636
cmp.s.v EQ
bf [6]

:[5]
push.v self.text_temp_save_failed
pop.v.v self.window_text

:[6]
push.v self.is_active
conv.v.b
bf [end]

:[7]
push.v self.type
push.s "default"@14501
cmp.s.v EQ
bf [end]

:[8]
pushbltn.v builtin.room
pushi.e 279
cmp.i.v EQ
bf [59]

:[9]
pushi.e 0
pop.v.i local.i

:[10]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [12]

:[11]
push.i 232064
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_released
push.i 232061
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_pressed
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [10]

:[12]
push.v 1112.gamepad_active
pushi.e 1
cmp.i.v EQ
bf [49]

:[13]
pushi.e 0
pop.v.i local.i

:[14]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [32]

:[15]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
call.i keyboard_check(argc=1)
conv.v.b
bt [23]

:[16]
pushi.e 1112
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [21]

:[17]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_g
push.v 1112.gamepad_id
call.i gamepad_button_check(argc=2)
conv.v.b
bt [19]

:[18]
pushloc.v local.i
push.v 1112.gamepad_id
call.i gml_Script_scr_gamepad_axis_check(argc=2)
conv.v.b
b [20]

:[19]
push.e 1

:[20]
b [22]

:[21]
push.e 0

:[22]
b [24]

:[23]
push.e 1

:[24]
bf [28]

:[25]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
push.i 232061
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_pressed

:[27]
push.i 232063
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held
b [31]

:[28]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
push.i 232064
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_released

:[30]
push.i 232063
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held

:[31]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [14]

:[32]
pushi.e 4
pop.v.i local.i

:[33]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [48]

:[34]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
call.i keyboard_check(argc=1)
conv.v.b
bt [39]

:[35]
pushi.e 1112
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [37]

:[36]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_g
push.v 1112.gamepad_id
call.i gamepad_button_check(argc=2)
conv.v.b
b [38]

:[37]
push.e 0

:[38]
b [40]

:[39]
push.e 1

:[40]
bf [44]

:[41]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
push.i 232061
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_pressed

:[43]
push.i 232063
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held
b [47]

:[44]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
push.i 232064
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_released

:[46]
push.i 232063
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held

:[47]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [33]

:[48]
b [59]

:[49]
pushi.e 0
pop.v.i local.i

:[50]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [59]

:[51]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
call.i keyboard_check(argc=1)
conv.v.b
bf [55]

:[52]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
push.i 232061
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_pressed

:[54]
push.i 232063
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held
b [58]

:[55]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
push.i 232064
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_released

:[57]
push.i 232063
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held

:[58]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [50]

:[59]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bf [end]

:[60]
pushi.e 0
pop.v.b self.is_active
pushi.e 0
pop.v.b global.savedata_pause
pushi.e 261
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushbltn.v builtin.room
pushi.e 279
cmp.i.v EQ
bf [67]

:[61]
pushglb.v global.savedata
pushi.e -1
cmp.i.v EQ
bt [63]

:[62]
pushglb.v global.savedata
pushbltn.v builtin.undefined
cmp.v.v EQ
b [64]

:[63]
push.e 1

:[64]
bf [66]

:[65]
call.i ds_map_create(argc=0)
pop.v.v global.savedata

:[66]
call.i gml_Script_ossafe_savedata_save(argc=0)
popz.v
b [end]

:[67]
pushbltn.v builtin.room
pushi.e 244
cmp.i.v EQ
bf [69]

:[68]
call.i room_restart(argc=0)
popz.v
b [end]

:[69]
call.i instance_destroy(argc=0)
popz.v

:[end]