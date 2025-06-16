.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.quit_timer
pushi.e 1
pop.v.i self.keyboard_active
push.d 0.4
pop.v.d self.axis_value
pushi.e 0
pop.v.i self.fullscreen_toggle
pushi.e 0
pop.v.i self.window_center_toggle
pushi.e 0
pop.v.i self.screenshot_number
pushi.e 0
pop.v.b self.border_fade_out
pushi.e 0
pop.v.b self.border_fade_in
pushi.e 1
pop.v.i self.border_alpha
push.d 0.025
pop.v.d self.border_fade_value
pushi.e 0
pop.v.b self.loaded
pushi.e 0
pop.v.b self.paused
pushi.e 0
pop.v.b self.pausing
pushi.e -1
pop.v.i self.screenshot
pushi.e 1649
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
call.i display_get_height(argc=0)
pop.v.v self.display_height
call.i display_get_width(argc=0)
pop.v.v self.display_width
pushi.e 1
pop.v.i self.window_size_multiplier
pushi.e 2
pop.v.i self._ww

:[3]
push.v self._ww
pushi.e 6
cmp.i.v LT
bf [10]

:[4]
push.v self.display_width
pushi.e 640
push.v self._ww
mul.v.i
cmp.v.v GT
bf [6]

:[5]
push.v self.display_height
pushi.e 480
push.v self._ww
mul.v.i
cmp.v.v GT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self._ww
pop.v.v self.window_size_multiplier

:[9]
push.v self._ww
pushi.e 1
add.i.v
pop.v.v self._ww
b [3]

:[10]
push.v self.window_size_multiplier
pushi.e 1
cmp.i.v GT
bf [12]

:[11]
pushi.e 480
push.v self.window_size_multiplier
mul.v.i
pushi.e 640
push.v self.window_size_multiplier
mul.v.i
call.i window_set_size(argc=2)
popz.v
pushi.e 1
pop.v.i self.window_center_toggle

:[12]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [14]

:[13]
call.i switch_controller_support_set_defaults(argc=0)
popz.v
pushi.e 1
conv.b.v
call.i switch_controller_support_set_singleplayer_only(argc=1)
popz.v
pushi.e 7
conv.i.v
call.i switch_controller_set_supported_styles(argc=1)
popz.v

:[14]
call.i gml_Script_scr_controls_default_ch1(argc=0)
popz.v
call.i gml_Script_scr_ascii_input_names_ch1(argc=0)
popz.v
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [17]

:[16]
push.i 232061
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.input_pressed
push.i 232063
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.input_held
push.i 232064
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.input_released
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[17]
pushglb.v global.is_console
conv.v.b
bf [19]

:[18]
pushi.e 1
conv.b.v
call.i application_surface_enable(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i application_surface_draw_enable(argc=1)
popz.v

:[19]
pushglb.v global.is_console
call.i gml_Script_scr_enable_screen_border_ch1(argc=1)
popz.v

:[end]