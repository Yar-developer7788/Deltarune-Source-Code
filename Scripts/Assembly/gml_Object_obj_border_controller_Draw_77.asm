.localvar 2 arguments
.localvar 14685 ww 18165
.localvar 14686 wh 18166
.localvar 10813 sw 18167
.localvar 10814 sh 18168
.localvar 6482 xx 18169
.localvar 6483 yy 18170
.localvar 14036 border_id 18171
.localvar 14045 room_id 18172
.localvar 36577 is_paused 18173

:[0]
call.i window_get_width(argc=0)
pop.v.v local.ww
call.i window_get_height(argc=0)
pop.v.v local.wh
pushbltn.v builtin.application_surface
call.i surface_get_width(argc=1)
pop.v.v local.sw
pushbltn.v builtin.application_surface
call.i surface_get_height(argc=1)
pop.v.v local.sh
pushloc.v local.ww
pushloc.v local.sw
pushglb.v global.window_scale
mul.v.v
sub.v.v
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v local.xx
pushloc.v local.wh
pushloc.v local.sh
pushglb.v global.window_scale
mul.v.v
sub.v.v
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v local.yy
pushloc.v local.xx
pop.v.v global.window_xofs
pushloc.v local.yy
pop.v.v global.window_yofs
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [2]

:[1]
pushloc.v local.wh
pushi.e 720
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
conv.b.v
call.i gml_Script_texture_set_interpolation(argc=1)
popz.v
b [6]

:[5]
pushi.e 0
conv.b.v
call.i gml_Script_texture_set_interpolation(argc=1)
popz.v

:[6]
pushglb.v global.screen_border_active
conv.v.b
bf [8]

:[7]
push.v self.border_alpha
pushi.e 0
cmp.i.v GTE
b [9]

:[8]
push.e 0

:[9]
bf [23]

:[10]
pushglb.v global.screen_border_id
pop.v.v local.border_id
pushi.e 0
conv.b.v
call.i gml_Script_draw_enable_alphablend(argc=1)
popz.v
pushloc.v local.border_id
push.s "Dynamic"@14040
cmp.s.v EQ
bt [12]

:[11]
pushloc.v local.border_id
push.s "ダイナミック"@14041
cmp.s.v EQ
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self._border_image
call.i gml_Script_scr_draw_background_ps4(argc=3)
popz.v
push.v 1134.border_alpha
pushi.e 1
cmp.i.v NEQ
pop.v.b global.disable_border
b [20]

:[15]
pushloc.v local.border_id
push.s "Simple"@14055
cmp.s.v EQ
bt [17]

:[16]
pushloc.v local.border_id
push.s "シンプル"@14056
cmp.s.v EQ
b [18]

:[17]
push.e 1

:[18]
bf [20]

:[19]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3223
conv.i.v
call.i gml_Script_scr_draw_background_ps4(argc=3)
popz.v
push.v 1134.border_alpha
pushi.e 1
cmp.i.v NEQ
pop.v.b global.disable_border

:[20]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
conv.b.v
call.i gml_Script_draw_enable_alphablend(argc=1)
popz.v
push.v self.border_alpha
pushi.e 1
cmp.i.v LT
bf [22]

:[21]
pushi.e 1
push.v self.border_alpha
sub.v.i
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushloc.v local.wh
pushi.e 1
sub.i.v
pushloc.v local.ww
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[22]
b [38]

:[23]
push.s "currentroom"@266
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [25]

:[24]
pushbltn.v builtin.room
pop.v.v global.currentroom

:[25]
pushglb.v global.currentroom
pop.v.v local.room_id
pushi.e 127
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [27]

:[26]
pushi.e 0
pop.v.b global.disable_border

:[27]
pushloc.v local.room_id
pushi.e 27
cmp.i.v EQ
bt [35]

:[28]
pushloc.v local.room_id
pushi.e 881
cmp.i.v EQ
bt [35]

:[29]
pushloc.v local.room_id
pushi.e 244
cmp.i.v EQ
bt [35]

:[30]
pushloc.v local.room_id
pushi.e 240
cmp.i.v EQ
bt [35]

:[31]
pushloc.v local.room_id
pushi.e 233
cmp.i.v EQ
bt [35]

:[32]
pushloc.v local.room_id
pushi.e 11
cmp.i.v EQ
bt [35]

:[33]
pushloc.v local.room_id
pushi.e 12
cmp.i.v EQ
bt [35]

:[34]
pushloc.v local.room_id
pushi.e 2
cmp.i.v EQ
b [36]

:[35]
push.e 1

:[36]
bf [38]

:[37]
pushi.e 1
pop.v.b global.disable_border

:[38]
pushi.e 0
conv.b.v
call.i gml_Script_draw_enable_alphablend(argc=1)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.window_scale
pushglb.v global.window_scale
pushloc.v local.yy
pushloc.v local.xx
pushbltn.v builtin.application_surface
call.i draw_surface_ext(argc=8)
popz.v
pushi.e 1134
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [44]

:[39]
pushi.e 0
pop.v.b local.is_paused
pushi.e 1134
pushenv [41]

:[40]
push.v self.paused
pop.v.v local.is_paused

:[41]
popenv [40]
pushloc.v local.is_paused
conv.v.b
bf [44]

:[42]
push.v 1134.screenshot
call.i sprite_exists(argc=1)
conv.v.b
bf [44]

:[43]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.window_scale
pushglb.v global.window_scale
pushloc.v local.yy
pushloc.v local.xx
pushi.e 0
conv.i.v
push.v 1134.screenshot
call.i draw_sprite_ext(argc=9)
popz.v

:[44]
pushi.e 1
conv.b.v
call.i gml_Script_draw_enable_alphablend(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_texture_set_interpolation(argc=1)
popz.v

:[end]