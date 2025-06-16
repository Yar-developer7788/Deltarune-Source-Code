.localvar 2 arguments
.localvar 107 i 6395

:[0]
pushi.e 1
conv.i.v
call.i audio_group_is_loaded(argc=1)
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
push.v self.init_loaded
conv.v.b
not.b
bf [4]

:[3]
exit.i

:[4]
push.v self.first_time
conv.v.b
bf [6]

:[5]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 281
conv.i.v
call.i room_goto(argc=1)
popz.v
exit.i

:[6]
push.v self.roominit
pushi.e 0
cmp.i.v EQ
bf [10]

:[7]
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
pushbltn.v builtin.application_surface
call.i surface_resize(argc=3)
popz.v
pushbltn.v builtin.room
pushi.e 279
cmp.i.v EQ
bf [9]

:[8]
pushi.e 2
pop.v.i self.scale

:[9]
pushi.e 1
pop.v.i self.roominit

:[10]
pushi.e 0
pop.v.i local.i

:[11]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [13]

:[12]
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
b [11]

:[13]
push.v 1112.gamepad_active
pushi.e 1
cmp.i.v EQ
bf [50]

:[14]
pushi.e 0
pop.v.i local.i

:[15]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [33]

:[16]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
call.i keyboard_check(argc=1)
conv.v.b
bt [24]

:[17]
pushi.e 1112
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [22]

:[18]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_g
push.v 1112.gamepad_id
call.i gamepad_button_check(argc=2)
conv.v.b
bt [20]

:[19]
pushloc.v local.i
push.v 1112.gamepad_id
call.i gml_Script_scr_gamepad_axis_check(argc=2)
conv.v.b
b [21]

:[20]
push.e 1

:[21]
b [23]

:[22]
push.e 0

:[23]
b [25]

:[24]
push.e 1

:[25]
bf [29]

:[26]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.i 232061
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_pressed

:[28]
push.i 232063
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held
b [32]

:[29]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.i 232064
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_released

:[31]
push.i 232063
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held

:[32]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [15]

:[33]
pushi.e 4
pop.v.i local.i

:[34]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [49]

:[35]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
call.i keyboard_check(argc=1)
conv.v.b
bt [40]

:[36]
pushi.e 1112
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [38]

:[37]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_g
push.v 1112.gamepad_id
call.i gamepad_button_check(argc=2)
conv.v.b
b [39]

:[38]
push.e 0

:[39]
b [41]

:[40]
push.e 1

:[41]
bf [45]

:[42]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
push.i 232061
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_pressed

:[44]
push.i 232063
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held
b [48]

:[45]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
push.i 232064
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_released

:[47]
push.i 232063
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held

:[48]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [34]

:[49]
b [end]

:[50]
pushi.e 0
pop.v.i local.i

:[51]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [end]

:[52]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_k
call.i keyboard_check(argc=1)
conv.v.b
bf [56]

:[53]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
push.i 232061
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_pressed

:[55]
push.i 232063
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held
b [59]

:[56]
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.input_held
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
push.i 232064
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_released

:[58]
push.i 232063
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]self.input_held

:[59]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [51]

:[end]