.localvar 2 arguments
.localvar 220 j 21921
.localvar 6275 k 21922
.localvar 6707 l 21923

:[0]
push.v self.paused
conv.v.b
not.b
bf [2]

:[1]
push.v global.time
pushi.e 1
add.i.v
pop.v.v global.time
b [3]

:[2]
exit.i

:[3]
call.i gml_Script_scr_debug_ch1(argc=0)
conv.v.b
bf [8]

:[4]
pushi.e 1
conv.b.v
call.i gml_Script_scr_84_debug_ch1(argc=1)
conv.v.b
bf [6]

:[5]
exit.i

:[6]
pushi.e 121
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [8]

:[7]
push.v self.screenshot_number
call.i string(argc=1)
push.s "_shot.png"@41936
add.s.v
pop.v.v self.screen_name
push.v self.screen_name
call.i screen_save(argc=1)
popz.v
push.v self.screenshot_number
pushi.e 1
add.i.v
pop.v.v self.screenshot_number

:[8]
pushi.e 27
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [14]

:[9]
push.v self.quit_timer
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
pushi.e 0
pop.v.i self.quit_timer

:[11]
push.v self.quit_timer
pushi.e 1
add.i.v
pop.v.v self.quit_timer
push.v self.quit_timer
pushi.e 30
cmp.i.v GTE
bf [13]

:[12]
call.i gml_Script_ossafe_game_end_ch1(argc=0)
popz.v

:[13]
b [15]

:[14]
push.v self.quit_timer
pushi.e 2
sub.i.v
pop.v.v self.quit_timer

:[15]
pushi.e 115
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [17]

:[16]
pushi.e 1
pop.v.i self.fullscreen_toggle

:[17]
push.v self.fullscreen_toggle
pushi.e 1
cmp.i.v EQ
bf [21]

:[18]
pushi.e 0
pop.v.i self.fullscreen_toggle
call.i window_get_fullscreen(argc=0)
conv.v.b
bf [20]

:[19]
pushi.e 0
conv.b.v
call.i window_set_fullscreen(argc=1)
popz.v
push.s "true_config.ini"@12008
conv.s.v
call.i gml_Script_ossafe_ini_open_ch1(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "FULLSCREEN"@14621
conv.s.v
push.s "SCREEN"@14622
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i gml_Script_ossafe_ini_close_ch1(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save_ch1(argc=0)
popz.v
b [21]

:[20]
pushi.e 1
conv.b.v
call.i window_set_fullscreen(argc=1)
popz.v
push.s "true_config.ini"@12008
conv.s.v
call.i gml_Script_ossafe_ini_open_ch1(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "FULLSCREEN"@14621
conv.s.v
push.s "SCREEN"@14622
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i gml_Script_ossafe_ini_close_ch1(argc=0)
popz.v
call.i gml_Script_ossafe_savedata_save_ch1(argc=0)
popz.v

:[21]
push.v self.window_center_toggle
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
call.i window_center(argc=0)
popz.v
pushi.e 0
pop.v.i self.window_center_toggle

:[23]
push.v self.window_center_toggle
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
pushi.e 2
pop.v.i self.window_center_toggle

:[25]
pushi.e 0
pop.v.i self.i

:[26]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [28]

:[27]
push.i 232064
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.input_released
push.i 232061
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.input_pressed
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [26]

:[28]
pushi.e 1112
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [30]

:[29]
push.v 1112.gamepad_active
pushi.e 1
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [60]

:[32]
pushi.e 0
pop.v.i local.j

:[33]
pushloc.v local.j
pushi.e 4
cmp.i.v LT
bf [46]

:[34]
pushi.e -5
pushloc.v local.j
conv.v.i
push.v [array]self.input_k
call.i keyboard_check(argc=1)
conv.v.b
bt [37]

:[35]
pushi.e -5
pushloc.v local.j
conv.v.i
push.v [array]self.input_g
push.v 1112.gamepad_id
call.i gamepad_button_check(argc=2)
conv.v.b
bt [37]

:[36]
pushloc.v local.j
push.v 1112.gamepad_id
call.i gml_Script_scr_gamepad_axis_check_ch1(argc=2)
conv.v.b
b [38]

:[37]
push.e 1

:[38]
bf [42]

:[39]
pushi.e -5
pushloc.v local.j
conv.v.i
push.v [array]self.input_held
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
push.i 232061
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.j
conv.v.i
pop.v.v [array]self.input_pressed

:[41]
push.i 232063
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.j
conv.v.i
pop.v.v [array]self.input_held
b [45]

:[42]
pushi.e -5
pushloc.v local.j
conv.v.i
push.v [array]self.input_held
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
push.i 232064
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.j
conv.v.i
pop.v.v [array]self.input_released

:[44]
push.i 232063
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.j
conv.v.i
pop.v.v [array]self.input_held

:[45]
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [33]

:[46]
pushi.e 4
pop.v.i local.k

:[47]
pushloc.v local.k
pushi.e 10
cmp.i.v LT
bf [59]

:[48]
pushi.e -5
pushloc.v local.k
conv.v.i
push.v [array]self.input_k
call.i keyboard_check(argc=1)
conv.v.b
bt [50]

:[49]
pushi.e -5
pushloc.v local.k
conv.v.i
push.v [array]self.input_g
push.v 1112.gamepad_id
call.i gamepad_button_check(argc=2)
conv.v.b
b [51]

:[50]
push.e 1

:[51]
bf [55]

:[52]
pushi.e -5
pushloc.v local.k
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
pushloc.v local.k
conv.v.i
pop.v.v [array]self.input_pressed

:[54]
push.i 232063
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.k
conv.v.i
pop.v.v [array]self.input_held
b [58]

:[55]
pushi.e -5
pushloc.v local.k
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
pushloc.v local.k
conv.v.i
pop.v.v [array]self.input_released

:[57]
push.i 232063
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.k
conv.v.i
pop.v.v [array]self.input_held

:[58]
push.v local.k
push.e 1
add.i.v
pop.v.v local.k
b [47]

:[59]
b [70]

:[60]
pushi.e 0
pop.v.i local.l

:[61]
pushloc.v local.l
pushi.e 10
cmp.i.v LT
bf [70]

:[62]
pushi.e -5
pushloc.v local.l
conv.v.i
push.v [array]self.input_k
call.i keyboard_check(argc=1)
conv.v.b
bf [66]

:[63]
pushi.e -5
pushloc.v local.l
conv.v.i
push.v [array]self.input_held
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
push.i 232061
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.l
conv.v.i
pop.v.v [array]self.input_pressed

:[65]
push.i 232063
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.l
conv.v.i
pop.v.v [array]self.input_held
b [69]

:[66]
pushi.e -5
pushloc.v local.l
conv.v.i
push.v [array]self.input_held
pushi.e 1
cmp.i.v EQ
bf [68]

:[67]
push.i 232064
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushloc.v local.l
conv.v.i
pop.v.v [array]self.input_released

:[68]
push.i 232063
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushloc.v local.l
conv.v.i
pop.v.v [array]self.input_held

:[69]
push.v local.l
push.e 1
add.i.v
pop.v.v local.l
b [61]

:[70]
push.v self.border_fade_out
conv.v.b
bf [75]

:[71]
push.v self.border_alpha
pushi.e 0
cmp.i.v GT
bf [74]

:[72]
push.v self.border_alpha
push.v self.border_fade_value
sub.v.v
pop.v.v self.border_alpha
push.v self.border_alpha
pushi.e 0
cmp.i.v LTE
bf [74]

:[73]
pushi.e 0
pop.v.i self.border_alpha

:[74]
b [79]

:[75]
push.v self.border_fade_in
conv.v.b
bf [79]

:[76]
push.v self.border_alpha
pushi.e 1
cmp.i.v LTE
bf [79]

:[77]
push.v self.border_alpha
push.v self.border_fade_value
add.v.v
pop.v.v self.border_alpha
push.v self.border_alpha
pushi.e 1
cmp.i.v GTE
bf [79]

:[78]
pushi.e 1
pop.v.i self.border_alpha

:[79]
call.i gml_Script_scr_debug_ch1(argc=0)
conv.v.b
bf [end]

:[80]
pushi.e 192
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[81]
pushbltn.v builtin.room_speed
pushi.e 30
cmp.i.v EQ
bf [83]

:[82]
pushi.e 150
pushi.e 140
pushi.e 17
conv.i.v
call.i keyboard_check(argc=1)
mul.v.i
sub.v.i
pop.v.v builtin.room_speed
b [end]

:[83]
pushi.e 30
pop.v.i builtin.room_speed

:[end]